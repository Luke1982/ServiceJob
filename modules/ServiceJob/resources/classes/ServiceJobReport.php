<?php

Class ServiceJobReport {
	function __construct() {

	}

	/*
	 * Function that saves the report into the database
	 * Param 1: The raw HTML of the report
	 * Param 2: THe CRM ID of the report
	 */
	public function save($report, $id) {
		global $adb;
		$adb->pquery("UPDATE vtiger_servicejob SET servicejob_report = ? WHERE servicejobid = ?", array($report, $id));
	}

	/*
	 * Function that gets the metadata for a servicejob,
	 * like asset and customer data
	 * Param 1: the service job CRM ID
	 */
	public function getMeta($id) {
		global $adb;
		$q = "SELECT vtiger_assets.*, 
						vtiger_assetscf.*, 
						vtiger_accountscf.*, 
						vtiger_servicejob.servicejob_productname AS productname, 
						vtiger_account.accountname, 
						vtiger_accountshipads.ship_city, 
						vtiger_accountshipads.ship_code, 
						vtiger_accountshipads.ship_street, 
						vtiger_products.*,
						vtiger_productcf.* FROM 
						vtiger_servicejob INNER JOIN vtiger_assets 
						ON vtiger_servicejob.related_asset_id = vtiger_assets.assetsid 
						INNER JOIN vtiger_assetscf
						ON vtiger_assetscf.assetsid = vtiger_assets.assetsid 
						INNER JOIN vtiger_account 
						ON vtiger_assets.account = vtiger_account.accountid 
						INNER JOIN vtiger_accountscf 
						ON vtiger_accountscf.accountid = vtiger_account.accountid 
						INNER JOIN vtiger_accountshipads 
						ON vtiger_account.accountid = vtiger_accountshipads.accountaddressid 
						INNER JOIN vtiger_products 
						ON vtiger_assets.product = vtiger_products.productid 
						INNER JOIN vtiger_productcf 
						ON vtiger_products.productid = vtiger_productcf.productid 
						WHERE vtiger_servicejob.servicejobid = ?";
		$p = array($id);
		$r = $adb->pquery($q, $p);
		return $adb->fetch_array($r);
	}

	/*
	 * Function that gets the company info
	 */
	public function getCompany() {
		global $adb;
		$q = "SELECT * FROM vtiger_organizationdetails WHERE organization_id = ?";
		$p = array(1);
		$r = $adb->pquery($q, $p);
		return $adb->fetch_array($r);
	}
}