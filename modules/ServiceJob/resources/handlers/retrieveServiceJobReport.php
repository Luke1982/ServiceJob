<?php

// error_reporting(E_ALL);
// ini_set("display_errors", "on");

function retrieveServiceJobReport($id) {
	global $adb;

	list($sj_wsid, $sj_id) = explode('x', $id);
	$q = "SELECT servicejob_report FROM vtiger_servicejob WHERE servicejobid = ?";
	$p = array($sj_id);
	$r = $adb->pquery($q, $p);

	$report = $adb->query_result($r, 0, 'servicejob_report');

	return $report;
}