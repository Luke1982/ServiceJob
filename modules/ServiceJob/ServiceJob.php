<?php
/*+**********************************************************************************
 * The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 ************************************************************************************/
require_once('data/CRMEntity.php');
require_once('data/Tracker.php');

class ServiceJob extends CRMEntity {
	var $db, $log; // Used in class functions of CRMEntity

	var $table_name = 'vtiger_servicejob';
	var $table_index= 'servicejobid';
	var $column_fields = Array();

	/** Indicator if this is a custom module or standard module */
	var $IsCustomModule = true;
	var $HasDirectImageField = false;
	/**
	 * Mandatory table for supporting custom fields.
	 */
	var $customFieldTable = Array('vtiger_servicejobcf', 'servicejobid');
	// Uncomment the line below to support custom field columns on related lists
	// var $related_tables = Array('vtiger_payslipcf'=>array('payslipid','vtiger_payslip', 'payslipid'));

	/**
	 * Mandatory for Saving, Include tables related to this module.
	 */
	var $tab_name = Array('vtiger_crmentity', 'vtiger_servicejob', 'vtiger_servicejobcf');

	/**
	 * Mandatory for Saving, Include tablename and tablekey columnname here.
	 */
	var $tab_name_index = Array(
		'vtiger_crmentity' => 'crmid',
		'vtiger_servicejob'   => 'servicejobid',
		'vtiger_servicejobcf' => 'servicejobid'
	);

	/**
	 * Mandatory for Listing (Related listview)
	 */
	var $list_fields = Array (
		/* Format: Field Label => Array(tablename => columnname) */
		// tablename should not have prefix 'vtiger_'
		'servicejob_no'=> Array('servicejob' => 'servicejob_no'),
		'servicejob_productname'=> Array('servicejob' => 'servicejob_productname'),
		'servicejob_for_serial'=> Array('servicejob' => 'servicejob_for_serial'),
		'Assigned To' => Array('crmentity' => 'smownerid'),
		'servicejob_status' => Array('servicejob' => 'servicejob_status'),
		'related_asset_id' => Array('servicejob' => 'related_asset_id')
	);
	var $list_fields_name = Array(
		/* Format: Field Label => fieldname */
		'servicejob_no'=> 'servicejob_no',
		'servicejob_productname'=> 'servicejob_productname',
		'servicejob_for_serial'=> 'servicejob_for_serial',
		'Assigned To' => 'assigned_user_id',
		'servicejob_status' => 'servicejob_status',
		'related_asset_id' => 'related_asset_id'
	);

	// Make the field link to detail view from list view (Fieldname)
	var $list_link_field = 'servicejob_no';

	// For Popup listview and UI type support
	var $search_fields = Array(
		/* Format: Field Label => Array(tablename => columnname) */
		// tablename should not have prefix 'vtiger_'
		'Assigned To'=> Array('crmentity' => 'smownerid'),
		'service_procedure'=> Array('servicejob' => 'service_procedure'),
		'execution_date'=> Array('servicejob' => 'execution_date'),
		'related_asset_id'=> Array('servicejob' => 'related_asset_id'),
		'servicejob_no'=> Array('servicejob' => 'servicejob_no'),
	);
	var $search_fields_name = Array(
		/* Format: Field Label => fieldname */
		'Assigned To'=> 'assigned_user_id',
		'service_procedure'=> 'service_procedure',
		'execution_date'=> 'execution_date',
		'related_asset_id'=> 'related_asset_id',
		'servicejob_no'=> 'servicejob_no'
	);

	// For Popup window record selection
	var $popup_fields = Array('servicejob_no');

	// Placeholder for sort fields - All the fields will be initialized for Sorting through initSortFields
	var $sortby_fields = Array();

	// For Alphabetical search
	var $def_basicsearch_col = 'servicejob_no';

	// Column value to use on detail view record text display
	var $def_detailview_recname = 'servicejob_no';

	// Required Information for enabling Import feature
	var $required_fields = Array('servicejob_no'=>1);

	// Callback function list during Importing
	var $special_functions = Array('set_import_assigned_user');

	var $default_order_by = 'servicejob_no';
	var $default_sort_order='ASC';
	// Used when enabling/disabling the mandatory fields for the module.
	// Refers to vtiger_field.fieldname values.
	var $mandatory_fields = Array('createdtime', 'modifiedtime', 'servicejob_no');

	function __construct() {
		global $log;
		$this_module = get_class($this);
		$this->column_fields = getColumnFields($this_module);
		$this->db = PearDatabase::getInstance();
		$this->log = $log;
		$sql = 'SELECT 1 FROM vtiger_field WHERE uitype=69 and tabid = ? limit 1';
		$tabid = getTabid($this_module);
		$result = $this->db->pquery($sql, array($tabid));
		if ($result and $this->db->num_rows($result)==1) {
			$this->HasDirectImageField = true;
		}
		parent::__construct();
	}

	function save_module($module) {
		global $adb;

		if ($this->HasDirectImageField) {
			$this->insertIntoAttachment($this->id,$module);
		}

		$sql = "UPDATE vtiger_servicejob SET procedureid=(
					SELECT sjprocedureid FROM vtiger_products WHERE productid=(
						SELECT product FROM vtiger_assets WHERE assetsid={$this->column_fields['related_asset_id']} LIMIT 1)
					LIMIT 1)
				WHERE servicejobid={$this->id}";
		$adb->query($sql);
	}

	/**
	 * Return query to use based on given modulename, fieldname
	 * Useful to handle specific case handling for Popup
	 */
	function getQueryByModuleField($module, $fieldname, $srcrecord, $query='') {
		// $srcrecord could be empty
	}

	/**
	 * Get list view query (send more WHERE clause condition if required)
	 */
	function getListQuery($module, $usewhere='') {
		$query = "SELECT vtiger_crmentity.*, $this->table_name.*";

		// Keep track of tables joined to avoid duplicates
		$joinedTables = array();

		// Select Custom Field Table Columns if present
		if(!empty($this->customFieldTable)) $query .= ", " . $this->customFieldTable[0] . ".* ";

		$query .= " FROM $this->table_name";

		$query .= "	INNER JOIN vtiger_crmentity ON vtiger_crmentity.crmid = $this->table_name.$this->table_index";

		$joinedTables[] = $this->table_name;
		$joinedTables[] = 'vtiger_crmentity';

		// Consider custom table join as well.
		if(!empty($this->customFieldTable)) {
			$query .= " INNER JOIN ".$this->customFieldTable[0]." ON ".$this->customFieldTable[0].'.'.$this->customFieldTable[1] .
				" = $this->table_name.$this->table_index";
			$joinedTables[] = $this->customFieldTable[0];
		}
		$query .= " LEFT JOIN vtiger_users ON vtiger_users.id = vtiger_crmentity.smownerid";
		$query .= " LEFT JOIN vtiger_groups ON vtiger_groups.groupid = vtiger_crmentity.smownerid";

		$joinedTables[] = 'vtiger_users';
		$joinedTables[] = 'vtiger_groups';

		$linkedModulesQuery = $this->db->pquery("SELECT distinct fieldname, columnname, relmodule FROM vtiger_field" .
				" INNER JOIN vtiger_fieldmodulerel ON vtiger_fieldmodulerel.fieldid = vtiger_field.fieldid" .
				" WHERE uitype='10' AND vtiger_fieldmodulerel.module=?", array($module));
		$linkedFieldsCount = $this->db->num_rows($linkedModulesQuery);

		for($i=0; $i<$linkedFieldsCount; $i++) {
			$related_module = $this->db->query_result($linkedModulesQuery, $i, 'relmodule');
			$fieldname = $this->db->query_result($linkedModulesQuery, $i, 'fieldname');
			$columnname = $this->db->query_result($linkedModulesQuery, $i, 'columnname');

			$other = CRMEntity::getInstance($related_module);
			vtlib_setup_modulevars($related_module, $other);

			if(!in_array($other->table_name, $joinedTables)) {
				$query .= " LEFT JOIN $other->table_name ON $other->table_name.$other->table_index = $this->table_name.$columnname";
				$joinedTables[] = $other->table_name;
			}
		}

		global $current_user;
		$query .= $this->getNonAdminAccessControlQuery($module,$current_user);
		$query .= "	WHERE vtiger_crmentity.deleted = 0 ".$usewhere;
		return $query;
	}

	/**
	 * Apply security restriction (sharing privilege) query part for List view.
	 */
	function getListViewSecurityParameter($module) {
		global $current_user;
		require('user_privileges/user_privileges_'.$current_user->id.'.php');
		require('user_privileges/sharing_privileges_'.$current_user->id.'.php');

		$sec_query = '';
		$tabid = getTabid($module);

		if($is_admin==false && $profileGlobalPermission[1] == 1 && $profileGlobalPermission[2] == 1
			&& $defaultOrgSharingPermission[$tabid] == 3) {

				$sec_query .= " AND (vtiger_crmentity.smownerid in($current_user->id) OR vtiger_crmentity.smownerid IN 
					(
						SELECT vtiger_user2role.userid FROM vtiger_user2role 
						INNER JOIN vtiger_users ON vtiger_users.id=vtiger_user2role.userid 
						INNER JOIN vtiger_role ON vtiger_role.roleid=vtiger_user2role.roleid 
						WHERE vtiger_role.parentrole LIKE '".$current_user_parent_role_seq."::%'
					) 
					OR vtiger_crmentity.smownerid IN 
					(
						SELECT shareduserid FROM vtiger_tmp_read_user_sharing_per 
						WHERE userid=".$current_user->id." AND tabid=".$tabid."
					) 
					OR (";

					// Build the query based on the group association of current user.
					if(sizeof($current_user_groups) > 0) {
						$sec_query .= " vtiger_groups.groupid IN (". implode(",", $current_user_groups) .") OR ";
					}
					$sec_query .= " vtiger_groups.groupid IN 
						(
							SELECT vtiger_tmp_read_group_sharing_per.sharedgroupid 
							FROM vtiger_tmp_read_group_sharing_per
							WHERE userid=".$current_user->id." and tabid=".$tabid."
						)";
				$sec_query .= ")
				)";
		}
		return $sec_query;
	}

	/**
	 * Create query to export the records.
	 */
	function create_export_query($where)
	{
		global $current_user;
		$thismodule = $_REQUEST['module'];

		include("include/utils/ExportUtils.php");

		//To get the Permitted fields query and the permitted fields list
		$sql = getPermittedFieldsQuery($thismodule, "detail_view");

		$fields_list = getFieldsListFromQuery($sql);

		$query = "SELECT $fields_list, vtiger_users.user_name AS user_name 
				FROM vtiger_crmentity INNER JOIN $this->table_name ON vtiger_crmentity.crmid=$this->table_name.$this->table_index";

		if(!empty($this->customFieldTable)) {
			$query .= " INNER JOIN ".$this->customFieldTable[0]." ON ".$this->customFieldTable[0].'.'.$this->customFieldTable[1] .
				" = $this->table_name.$this->table_index";
		}

		$query .= " LEFT JOIN vtiger_groups ON vtiger_groups.groupid = vtiger_crmentity.smownerid";
		$query .= " LEFT JOIN vtiger_users ON vtiger_crmentity.smownerid = vtiger_users.id and vtiger_users.status='Active'";

		$linkedModulesQuery = $this->db->pquery("SELECT distinct fieldname, columnname, relmodule FROM vtiger_field" .
				" INNER JOIN vtiger_fieldmodulerel ON vtiger_fieldmodulerel.fieldid = vtiger_field.fieldid" .
				" WHERE uitype='10' AND vtiger_fieldmodulerel.module=?", array($thismodule));
		$linkedFieldsCount = $this->db->num_rows($linkedModulesQuery);

		$rel_mods[$this->table_name] = 1;
		for($i=0; $i<$linkedFieldsCount; $i++) {
			$related_module = $this->db->query_result($linkedModulesQuery, $i, 'relmodule');
			$fieldname = $this->db->query_result($linkedModulesQuery, $i, 'fieldname');
			$columnname = $this->db->query_result($linkedModulesQuery, $i, 'columnname');

			$other = CRMEntity::getInstance($related_module);
			vtlib_setup_modulevars($related_module, $other);

			if($rel_mods[$other->table_name]) {
				$rel_mods[$other->table_name] = $rel_mods[$other->table_name] + 1;
				$alias = $other->table_name.$rel_mods[$other->table_name];
				$query_append = "as $alias";
			} else {
				$alias = $other->table_name;
				$query_append = '';
				$rel_mods[$other->table_name] = 1;
			}

			$query .= " LEFT JOIN $other->table_name $query_append ON $alias.$other->table_index = $this->table_name.$columnname";
		}

		$query .= $this->getNonAdminAccessControlQuery($thismodule,$current_user);
		$where_auto = " vtiger_crmentity.deleted=0";

		if($where != '') $query .= " WHERE ($where) AND $where_auto";
		else $query .= " WHERE $where_auto";

		return $query;
	}

	/**
	 * Initialize this instance for importing.
	 */
	function initImport($module) {
		$this->db = PearDatabase::getInstance();
		$this->initImportableFields($module);
	}

	/**
	 * Create list query to be shown at the last step of the import.
	 * Called From: modules/Import/UserLastImport.php
	 */
	function create_import_query($module) {
		global $current_user;
		$query = "SELECT vtiger_crmentity.crmid, case when (vtiger_users.user_name not like '') then vtiger_users.user_name else vtiger_groups.groupname end as user_name, $this->table_name.* FROM $this->table_name
			INNER JOIN vtiger_crmentity ON vtiger_crmentity.crmid = $this->table_name.$this->table_index
			LEFT JOIN vtiger_users_last_import ON vtiger_users_last_import.bean_id=vtiger_crmentity.crmid
			LEFT JOIN vtiger_users ON vtiger_users.id = vtiger_crmentity.smownerid
			LEFT JOIN vtiger_groups ON vtiger_groups.groupid = vtiger_crmentity.smownerid
			WHERE vtiger_users_last_import.assigned_user_id='$current_user->id'
			AND vtiger_users_last_import.bean_type='$module'
			AND vtiger_users_last_import.deleted=0";
		return $query;
	}

	/**
	 * Transform the value while exporting
	 */
	function transform_export_value($key, $value) {
		return parent::transform_export_value($key, $value);
	}

	/**
	 * Function which will set the assigned user id for import record.
	 */
	function set_import_assigned_user()
	{
		global $current_user, $adb;
		$record_user = $this->column_fields["assigned_user_id"];

		if($record_user != $current_user->id){
			$sqlresult = $adb->pquery("select id from vtiger_users where id = ? union select groupid as id from vtiger_groups where groupid = ?", array($record_user, $record_user));
			if($this->db->num_rows($sqlresult)!= 1) {
				$this->column_fields["assigned_user_id"] = $current_user->id;
			} else {
				$row = $adb->fetchByAssoc($sqlresult, -1, false);
				if (isset($row['id']) && $row['id'] != -1) {
					$this->column_fields["assigned_user_id"] = $row['id'];
				} else {
					$this->column_fields["assigned_user_id"] = $current_user->id;
				}
			}
		}
	}

	/**
	 * Function which will give the basic query to find duplicates
	 */
	function getDuplicatesQuery($module,$table_cols,$field_values,$ui_type_arr,$select_cols='') {
		$select_clause = "SELECT ". $this->table_name .".".$this->table_index ." AS recordid, vtiger_users_last_import.deleted,".$table_cols;

		// Select Custom Field Table Columns if present
		if(isset($this->customFieldTable)) $query .= ", " . $this->customFieldTable[0] . ".* ";

		$from_clause = " FROM $this->table_name";

		$from_clause .= " INNER JOIN vtiger_crmentity ON vtiger_crmentity.crmid = $this->table_name.$this->table_index";

		// Consider custom table join as well.
		if(isset($this->customFieldTable)) {
			$from_clause .= " INNER JOIN ".$this->customFieldTable[0]." ON ".$this->customFieldTable[0].'.'.$this->customFieldTable[1] .
				" = $this->table_name.$this->table_index";
		}
		$from_clause .= " LEFT JOIN vtiger_users ON vtiger_users.id = vtiger_crmentity.smownerid
						LEFT JOIN vtiger_groups ON vtiger_groups.groupid = vtiger_crmentity.smownerid";

		$where_clause = " WHERE vtiger_crmentity.deleted = 0";
		$where_clause .= $this->getListViewSecurityParameter($module);

		if (isset($select_cols) && trim($select_cols) != '') {
			$sub_query = "SELECT $select_cols FROM $this->table_name AS t " .
				" INNER JOIN vtiger_crmentity AS crm ON crm.crmid = t.".$this->table_index;
			// Consider custom table join as well.
			if(isset($this->customFieldTable)) {
				$sub_query .= " LEFT JOIN ".$this->customFieldTable[0]." tcf ON tcf.".$this->customFieldTable[1]." = t.$this->table_index";
			}
			$sub_query .= " WHERE crm.deleted=0 GROUP BY $select_cols HAVING COUNT(*)>1";
		} else {
			$sub_query = "SELECT $table_cols $from_clause $where_clause GROUP BY $table_cols HAVING COUNT(*)>1";
		}

		$query = $select_clause . $from_clause .
					" LEFT JOIN vtiger_users_last_import ON vtiger_users_last_import.bean_id=" . $this->table_name .".".$this->table_index .
					" INNER JOIN (" . $sub_query . ") AS temp ON ".get_on_clause($field_values,$ui_type_arr,$module) .
					$where_clause .
					" ORDER BY $table_cols,". $this->table_name .".".$this->table_index ." ASC";

		return $query;
	}

	/**
	 * Invoked when special actions are performed on the module.
	 * @param String Module name
	 * @param String Event Type (module.postinstall, module.disabled, module.enabled, module.preuninstall)
	 */
	function vtlib_handler($modulename, $event_type) {
		if($event_type == 'module.postinstall') {

			// TODO Handle post installation actions
			$this->setModuleSeqNumber('configure', $modulename, 'SJ', '000001');
			// install the related assets block in salesorders
			$this->installRelatedAssetsBlock();
			// Relate assets to salesorders
			$this->relateAssetsToSalesOrders();
			// Relate assets to salesorders
			$this->relateServiceJobToSalesOrders();
			// create an event handler for saving salesorders
			$this->createSoEventHandler();
			// Create a custom webservice operation
			$this->createWebServiceOperation();
			// Create a webservice operation that allows retrieving reports
			$this->createReportRetrievalOperation();
			// Create the executing user in SO's
			$this->createExecUserInSo();
			// Creates a 'related list' entry for ServiceJob in Assets
			$this->relateServiceJobToAssets($modulename);

		} else if($event_type == 'module.disabled') {
			// TODO Handle actions when this module is disabled.
		} else if($event_type == 'module.enabled') {
			// TODO Handle actions when this module is enabled.
		} else if($event_type == 'module.preuninstall') {
			// TODO Handle actions when this module is about to be deleted.

			global $adb;
			// Delete module tables
			$adb->query("DROP TABLE vtiger_servicejob");
			$adb->query("DROP TABLE vtiger_servicejobcf");
			$adb->query("DROP TABLE vtiger_service_procedure");
			$adb->query("DROP TABLE vtiger_service_procedure_seq");

			$adb->query("DELETE FROM vtiger_blocks WHERE blocklabel='RelatedAssets' AND tabid=22");
			$adb->query("DELETE FROM vtiger_relatedlists WHERE label='Assets' AND tabid=22");
			$adb->query("DELETE FROM vtiger_relatedlists WHERE label='ServiceJob' AND tabid=22");
			$adb->query("DELETE FROM vtiger_eventhandlers WHERE handler_class='SoSaveHandler'");

			// Delete the executing user field in SalesOrder
			$adb->query("ALTER TABLE vtiger_salesorder DROP COLUMN executing_user_id");
			$adb->query("DELETE FROM vtiger_field WHERE columnname = 'executing_user_id' AND tabid = 22");

			unlink('Smarty/templates/modules/SalesOrder/RelatedAssets_edit.tpl');
			rmdir('Smarty/templates/modules/SalesOrder');

		} else if($event_type == 'module.preupdate') {
			// TODO Handle actions before this module is updated.
		} else if($event_type == 'module.postupdate') {
			// TODO Handle actions after this module is updated.
			$moduleInstance = Vtiger_Module::getInstance($modulename);
			if ($moduleInstance->version == "0.2") {
				$this->zeroPointTwoUpdates();
			} else if ($moduleInstance->version == "0.31") {
				$this->addStatusApprovedAndDisapproved();
			} else if ($moduleInstance->version == "0.41") {
				$this->createReportRetrievalOperation();
			} else if ($moduleInstance->version == "0.45") {
				$this->createSerialField();
			}	
		}
	}

	/*
	 * Installs a custom block in salesorders where assets can be selected
	 */
	private function installRelatedAssetsBlock() {

		$modname = 'SalesOrder';
		$module = Vtiger_Module::getInstance($modname);

		$block = new Vtiger_Block();
		$block->label = 'RelatedAssets';
		$block->sequence = 2;
		$module->addBlock($block);

		mkdir('Smarty/templates/modules/SalesOrder');
		copy('modules/ServiceJob/resources/templates/RelatedAssets_edit.tpl', 'Smarty/templates/modules/SalesOrder/RelatedAssets_edit.tpl');		

	}

	/*
	 * Creates a related list for ServiceJobs in Asset details
	 */
	private function relateServiceJobToAssets($modulename) {
		include_once('vtlib/Vtiger/Module.php');
		$assets = Vtiger_Module::getInstance('Assets');
		$assets->setRelatedList(Vtiger_Module::getInstance($modulename), 'Keuringen', Array('ADD','SELECT'));
	}

	/*
	 * Relates assets to salesorders
	 */
	private function relateAssetsToSalesOrders() {

		include_once('vtlib/Vtiger/Module.php');

		$so_instance = Vtiger_Module::getInstance('SalesOrder');

		$so_instance->setRelatedList(
			Vtiger_Module::getInstance('Assets'),
			'Assets',
			Array('ADD','SELECT')
		);

	}

	/*
	 * Relates this module to salesorders
	 */
	private function relateServiceJobToSalesOrders() {

		include_once('vtlib/Vtiger/Module.php');

		$so_instance = Vtiger_Module::getInstance('SalesOrder');

		$so_instance->setRelatedList(
			Vtiger_Module::getInstance('ServiceJob'),
			'ServiceJob',
			Array('ADD','SELECT')
		);

	}

	/*
	 * Creates the event handler for when a salesorder is saved
	 */
	private function createSoEventHandler() {

		global $adb;
		require 'include/events/include.inc';
		$em = new VTEventsManager($adb);

		$eventName = 'vtiger.entity.aftersave';
		$filePath = 'modules/ServiceJob/resources/handlers/onSalesOrderSave.php';
		$className = 'SoSaveHandler';

		$em->registerHandler($eventName, $filePath, $className);		
	}

	/*
	 * Creates a custom webservice operation for this module
	 */
	private function createWebServiceOperation() {
		require_once('include/Webservices/Utils.php');

		$operation = array(
						'name'		=> 'closeServiceJob',
						'include'	=> 'modules/ServiceJob/resources/handlers/closeServiceJob.php',
						'handler'	=> 'closeServiceJob',
						'prelogin'	=> 0,
						'type'		=> 'POST',		
						'parameters' => array(
								array('name' => 'id', 'type' =>	'String'),
								array('name' => 'values', 'type' => 'Encoded')
						)
					);

		registerWSAPI($operation);		
	}

	/*
	 * Creates webservice operation that permits a webservice
	 * to retrieve full HTML reports for a servicejob
	 * It is the retrieving parts job to present it.
	 */
	private function createReportRetrievalOperation() {
		require_once('include/Webservices/Utils.php');

		$operation = array(
						'name'		=> 'retrieveServiceJobReport',
						'include'	=> 'modules/ServiceJob/resources/handlers/retrieveServiceJobReport.php',
						'handler'	=> 'retrieveServiceJobReport',
						'prelogin'	=> 0,
						'type'		=> 'GET',		
						'parameters' => array(
								array('name' => 'id', 'type' =>	'String')
						)
					);

		registerWSAPI($operation);		
	}

	/*
	 * Creates a field in SalesOrder that will hold the 'executing user id'
	 */
	private function createExecUserInSo() {
		include_once('vtlib/Vtiger/Module.php');

		$module = Vtiger_Module::getInstance('SalesOrder');
		$blockInstance = Vtiger_Block::getInstance('LBL_SO_INFORMATION', $module);

		$fieldInstance = new Vtiger_Field();
		$fieldInstance->name = 'reports_to_id';
		$fieldInstance->table = 'vtiger_salesorder';
		$fieldInstance->column = 'executing_user_id';
		$fieldInstance->columntype = 'INT(11)';
		$fieldInstance->uitype = 101;
		$fieldInstance->typeofdata = 'V~O';
		$blockInstance->addField($fieldInstance);		
	}

	/*
	 * General function for the updates in version 0.2
	 * - 	Add a handler to aftersave event for this module, that create a related 
	 		list listing for the ServiceJob in the related asset
	 */
	private function zeroPointTwoUpdates() {
		global $adb;
		require 'include/events/include.inc';
		$em = new VTEventsManager($adb);

		$eventName = 'vtiger.entity.aftersave';
		$filePath = 'modules/ServiceJob/resources/handlers/onServiceJobSave.php';
		$className = 'SJSaveHandler';

		$em->registerHandler($eventName, $filePath, $className);		
	}

	/*
	 * General function for the updates in version 0.3
	 * - 	Add a handler to aftersave event for this module, that create a related 
	 		list listing for the ServiceJob in the related asset
	 */
	private function addStatusApprovedAndDisapproved() {
		$moduleInstance = Vtiger_Module::getInstance('ServiceJob');
		$field = Vtiger_Field::getInstance('servicejob_status',$moduleInstance);
		$field->setPicklistValues(array(
				'Approved',
				'Disapproved'
			));
	}

	/*
	 * Creates a field for the serial number from the asset
	 */
	private function createSerialField() {
		include_once('vtlib/Vtiger/Module.php');
		include_once('vtlib/Vtiger/Block.php');
		include_once('include/utils/utils.php');

		$module = Vtiger_Module::getInstance('ServiceJob');
		// Get the main info block for servicejobs
		$block	= Vtiger_Block::getInstance('LBL_SERVICEJOB_INFORMATION', $module);
		
		// Setup the field
		$field						=	new Vtiger_Field();
		$field->name				=	'servicejob_for_serial';
		$field->label				=	'servicejob_for_serial';
		$field->table				=	'vtiger_servicejob';
		$field->column				=	'servicejob_for_serial';
		$field->columntype			=	'VARCHAR(255)';
		$field->uitype				=	1;
		$field->typeofdata			=	'V~O';
	
		$block->addField($field);
	}

	/**
	 * Handle saving related module information.
	 * NOTE: This function has been added to CRMEntity (base class).
	 * You can override the behavior by re-defining it here.
	 */
	// function save_related_module($module, $crmid, $with_module, $with_crmid) { }

	/**
	 * Handle deleting related module information.
	 * NOTE: This function has been added to CRMEntity (base class).
	 * You can override the behavior by re-defining it here.
	 */
	//function delete_related_module($module, $crmid, $with_module, $with_crmid) { }

	/**
	 * Handle getting related list information.
	 * NOTE: This function has been added to CRMEntity (base class).
	 * You can override the behavior by re-defining it here.
	 */
	//function get_related_list($id, $cur_tab_id, $rel_tab_id, $actions=false) { }

	/**
	 * Handle getting dependents list information.
	 * NOTE: This function has been added to CRMEntity (base class).
	 * You can override the behavior by re-defining it here.
	 */
	//function get_dependents_list($id, $cur_tab_id, $rel_tab_id, $actions=false) { }
}
?>
