<?php

Class SoSaveHandler extends VTEventHandler {
	public function handleEvent($eventName, $entityData){
		global $current_user, $adb;

		$moduleName = $entityData->getModuleName();
		if ($moduleName == 'SalesOrder') {

			$soId = $entityData->getId();
			$soData = $entityData->getData();

			require_once('modules/ServiceJob/ServiceJob.php');
			require_once('modules/Assets/Assets.php');
			
			foreach ($_REQUEST['hdn_asset'] as $k => $v) {
				if ($k != '') {

			 		// Update the asset "keurstatus"
					$ass = new Assets();
					$ass->retrieve_entity_info($k, 'Assets');
					$ass->id = $k;
					$ass->mode = 'edit';
					$ass->column_fields['cf_966'] = 'Keuring ingepland'; // Adjust custom field ID
					$ass_serial = $ass->column_fields['serialnumber']; // Get serial no to add to SJ later

					$handler = vtws_getModuleHandlerFromName('Assets', $current_user);
					$meta = $handler->getMeta();
					$ass->column_fields = DataTransform::sanitizeRetrieveEntityInfo($ass->column_fields, $meta);
					$ass->save('Assets');

					$sj_focus = new ServiceJob();
					$sj_focus->column_fields['assigned_user_id'] = $soData['reports_to_id'];
					$sj_focus->column_fields['execution_date'] = $soData['duedate'];
					$sj_focus->column_fields['related_asset_id'] = $k;
					$sj_focus->column_fields['related_so_id'] = $soId;
					$sj_focus->column_fields['servicejob_status'] = 'Planned';
					$sj_focus->column_fields['servicejob_for_serial'] = $ass_serial;
					$sj_focus->column_fields['servicejob_productname'] = trim($v);

			 		$handler = vtws_getModuleHandlerFromName('ServiceJob', $current_user); 
			 		$meta = $handler->getMeta();
			 		$sj_focus->column_fields = DataTransform::sanitizeRetrieveEntityInfo($sj_focus->column_fields, $meta);

			 		$sj_focus->save('ServiceJob');

			 		$adb->pquery("INSERT INTO vtiger_crmentityrel (crmid, module, relcrmid, relmodule) VALUES (?,?,?,?)", array($soId, 'SalesOrder', $sj_focus->id, 'ServiceJob'));
			 		$adb->pquery("INSERT INTO vtiger_crmentityrel (crmid, module, relcrmid, relmodule) VALUES (?,?,?,?)", array($soId, 'SalesOrder', $k, 'Assets'));

				}
			}

		}
	}
}