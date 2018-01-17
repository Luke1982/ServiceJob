<?php

global $adb;

$acc_id = $_REQUEST['accountid'];
$assets = [];

// 9-3-2017 Build an array of already selected assets
if ($_REQUEST['selected'] != '') {
	$selected_array = explode(',', $_REQUEST['selected']);
}

$r = $adb->pquery("SELECT vtiger_assets.serialnumber, vtiger_assets.assetname, vtiger_assets.assetstatus, vtiger_assets.assetsid, vtiger_products.productname FROM vtiger_assets INNER JOIN vtiger_products ON vtiger_assets.product = vtiger_products.productid INNER JOIN vtiger_crmentity ON vtiger_assets.assetsid = vtiger_crmentity.crmid WHERE vtiger_assets.account = ? AND vtiger_assets.assetstatus = ? AND vtiger_crmentity.deleted = ?", array($acc_id, 'In Gebruik', 0));

while ($row = $adb->fetch_array($r)) {
	$tmp = [];
	$tmp['serial'] = $row['serialnumber'];
	$tmp['name'] = $row['assetname'];
	$tmp['status'] = $row['assetstatus'];
	$tmp['id'] = $row['assetsid'];
	$tmp['productname'] = $row['productname'];

	// 9-3-2017 Prevent already selected assets from appearing in return
	if (!in_array($row['serialnumber'], $selected_array)) {
		$assets[] = $tmp;
	}
}

echo json_encode($assets);