<?php

global $adb;

$acc_id = $_REQUEST['accountid'];
$assets = [];

$r = $adb->pquery("SELECT serialnumber, assetname, assetstatus, assetsid FROM vtiger_assets WHERE account = ?", array($acc_id));

while ($row = $adb->fetch_array($r)) {
	$tmp = [];
	$tmp['serial'] = $row['serialnumber'];
	$tmp['name'] = $row['assetname'];
	$tmp['status'] = $row['assetstatus'];
	$tmp['id'] = $row['assetsid'];
	$assets[] = $tmp;
}

echo json_encode($assets);