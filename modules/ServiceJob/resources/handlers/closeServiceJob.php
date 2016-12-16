<?php

// error_reporting(E_ALL);
// ini_set("display_errors", "on");

function closeServiceJob($id, $values, $user) {

	require_once('modules/ServiceJob/ServiceJob.php');
	require_once('modules/ServiceJob/resources/classes/ServiceJobReport.php');
	require_once('Smarty_setup.php');

	list($sj_wsid, $sj_id) = explode('x', $id);
	$sj = new ServiceJob();
	$sj->retrieve_entity_info($sj_id, 'ServiceJob');
	$sj->id = $sj_id;
	$sj->mode = 'edit';

	$sj->column_fields['servicejob_status'] = 'Completed';
	$sj->column_fields['mechanic_remarks'] = $values['mechanic_remarks'];

	$handler = vtws_getModuleHandlerFromName('ServiceJob', $user);
	$meta = $handler->getMeta();
	$sj->column_fields = DataTransform::sanitizeRetrieveEntityInfo($sj->column_fields, $meta);

	$sj->save('ServiceJob');
	
	$report = new ServiceJobReport();
	$smarty = new vtigerCRM_Smarty();

	$report_metadata = $report->getMeta($sj_id);
	$report_metadata['user'] = $user->column_fields;
	$report_metadata['company'] = $report->getCompany();

	$date = new DateTime();
	$report_metadata['date'] = $date->format('d-m-Y');

	$report_path = 'modules/ServiceJob/reporttemplates/report_'.$values['servicejob_procedure'].'.tpl';

	$smarty->assign('reportmeta', $report_metadata);
	$smarty->assign('reportvalues', $values);
	$htmlreport = $smarty->fetch($report_path);

	$report->save($htmlreport, $sj_id);

	return true;
}