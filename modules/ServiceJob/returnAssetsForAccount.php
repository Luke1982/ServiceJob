<?php

global $adb;

$acc_id = $_REQUEST['accountid'];
$assets = [];

$r = $adb->pquery("SELECT vtiger_assets.serialnumber, vtiger_assets.assetname, vtiger_assets.assetstatus, vtiger_assets.assetsid, vtiger_products.productname FROM vtiger_assets INNER JOIN vtiger_products ON vtiger_assets.product = vtiger_products.productid WHERE account = ?", array($acc_id));

while ($row = $adb->fetch_array($r)) {
	$tmp = [];
	$tmp['serial'] = $row['serialnumber'];
	$tmp['name'] = $row['assetname'];
	$tmp['status'] = $row['assetstatus'];
	$tmp['id'] = $row['assetsid'];
	$tmp['productname'] = $row['productname'];
	$assets[] = $tmp;
}

echo json_encode($assets);