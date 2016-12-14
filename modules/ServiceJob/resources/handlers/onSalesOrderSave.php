<?php

Class SoSaveHandler extends VTEventHandler {
	public function handleEvent($eventName, $entityData){
		global $current_user, $adb;

		$moduleName = $entityData->getModuleName();
		if ($moduleName == 'SalesOrder') {

			$soId = $entityData->getId();
			$soData = $entityData->getData();

			require_once('modules/ServiceJob/ServiceJob.php');
			
			foreach ($_REQUEST['hdn_asset'] as $k => $v) {
				if ($k != '') {

					$sj_focus = new ServiceJob();
					$sj_focus->column_fields['assigned_user_id'] = $soData['assigned_user_id'];
					$sj_focus->column_fields['execution_date'] = $soData['duedate'];
					$sj_focus->column_fields['related_asset_id'] = $k;
					$sj_focus->column_fields['related_so_id'] = $soId;
					$sj_focus->column_fields['servicejob_status'] = 'Planned';
					$sj_focus->column_fields['servicejob_productname'] = trim($v);

			 		$handler = vtws_getModuleHandlerFromName('ServiceJob', $current_user); 
			 		$meta = $handler->getMeta();
			 		$sj_focus->column_fields = DataTransform::sanitizeRetrieveEntityInfo($sj_focus->column_fields, $meta);

			 		$sj_focus->save('ServiceJob');

			 		$adb->pquery("INSERT INTO vtiger_crmentityrel (crmid, module, relcrmid, relmodule) VALUES (?,?,?,?)", array($soId, 'SalesOrder', $sj_focus->id, 'ServiceJob'));
			 		$adb->pquery("INSERT INTO vtiger_crmentityrel (crmid, module, relcrmid, relmodule) VALUES (?,?,?,?)", array($soId, 'SalesOrder', $v, 'Assets'));
				}
			}

		}
	}
}