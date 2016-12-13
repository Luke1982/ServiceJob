<?php

Class SoSaveHandler extends VTEventHandler {
	public function handleEvent($eventName, $entityData){
		$moduleName = $entityData->getModuleName();
		if ($moduleName == 'SalesOrder') {
			$soId = $entityData->getId();
			
			echo "<pre>";
			print_r($_REQUEST['hdn_asset']);
			print_r($soId);
			echo "</pre>";

			die();
		}
	}
}