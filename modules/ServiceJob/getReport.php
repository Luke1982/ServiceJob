<?php
global $adb;
$id = $_REQUEST['sjid'];
$r = $adb->pquery("SELECT servicejob_report FROM vtiger_servicejob WHERE servicejobid = ?", array($id));
echo $adb->query_result($r, 0, 'servicejob_report');
