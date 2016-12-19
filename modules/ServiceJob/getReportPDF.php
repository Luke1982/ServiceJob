<?php

require_once('modules/ServiceJob/vendor/tcpdf/tcpdf.php');

global $adb;
$id = $_REQUEST['sjid'];
$r = $adb->pquery("SELECT servicejob_report FROM vtiger_servicejob WHERE servicejobid = ?", array($id));
$report = $adb->query_result($r, 0, 'servicejob_report');

$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
$pdf->AddPage();
$pdf->writeHTMLCell(0, 0, '', '', $report, 0, 1, 0, true, '', true);
echo $pdf->Output('example_001.pdf', 'I');