<?php

if (!isset($_REQUEST['pdfaction']) && $_REQUEST['pdfaction'] != 'delete') {

	require_once('modules/ServiceJob/vendor/tcpdf/tcpdf.php');

	global $adb;
	$id = $_REQUEST['sjid'];
	$r = $adb->pquery("SELECT servicejob_report, servicejob_no, service_procedure FROM vtiger_servicejob WHERE servicejobid = ?", array($id));
	$report = $adb->query_result($r, 0, 'servicejob_report');
	$job_no = $adb->query_result($r, 0, 'servicejob_no');
	$procedure = $adb->query_result($r, 0, 'service_procedure');

	$pdf = new TCPDF(PDF_PAGE_ORIENTATION, 'px', PDF_PAGE_FORMAT, true, 'UTF-8', false);
	$pdf->SetFont('dejavusans', '', 8, '', true);

	$pdf->AddPage();
	$pdf->writeHTML($report, true, false, false, false, '');

	$filepath = $_SERVER['DOCUMENT_ROOT'].'modules/ServiceJob/tmp_pdf/';
	$filename = $id . '-' . $_REQUEST['filename'] . '.pdf';
	// $filename = $job_no . '_' . $procedure . '.pdf';

	$pdf->Output($filepath . $filename, 'F');

	$return = array();
	$return['download_loc'] = '/modules/ServiceJob/tmp_pdf/' . $filename;
	$return['delete_loc'] = $filepath . $filename;
	echo json_encode($return);

} else if (isset($_REQUEST['pdfaction']) && $_REQUEST['pdfaction'] == 'delete') {

	unlink($_REQUEST['filetodelete']);

}
