<?php

Class SJSaveHandler extends VTEventHandler {
	public function handleEvent($eventName, $entityData){
		global $current_user, $adb;

		$moduleName = $entityData->getModuleName();
		if ($moduleName == 'ServiceJob') {

			$sjId = $entityData->getId();
			$sjData = $entityData->getData();

			// Relate this servicejob the the related asset in the asset's related list.
			if ($sjData['related_asset_id'] != null) {
			// First see if the relation was already set
				$r = $adb->pquery("SELECT * FROM vtiger_crmentityrel WHERE relcrmid = ? AND crmid = ?", array($sjData['related_asset_id'], $sjId));
				// Only perform operation if row count is zero (relation not yet set)
				if ($adb->num_rows($r) == 0) {
					$adb->pquery("INSERT INTO vtiger_crmentityrel (crmid, module, relcrmid, relmodule) VALUES (?,?,?,?)", array($sjData['related_asset_id'], 'Assets', $sjId, 'ServiceJob'));
				}
			}
		
		}
	}
}