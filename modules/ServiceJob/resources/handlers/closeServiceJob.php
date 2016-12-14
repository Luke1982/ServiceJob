<?php

function closeServiceJob($id, $values, $user) {

	require_once('modules/ServiceJob/ServiceJob.php');

	list($sj_wsid, $sj_id) = explode('x', $id);
	$sj = new ServiceJob();
	$sj->retrieve_entity_info($sj_id, 'ServiceJob');
	$sj->id = $sj_id;
	$sj->mode = 'edit';

	$sj->column_fields['servicejob_status'] = 'Completed';
	$sj->column_fields['mechanic_remarks'] = $values['opmerkingen_monteur'];

	$handler = vtws_getModuleHandlerFromName('ServiceJob', $user);
	$meta = $handler->getMeta();
	$sj->column_fields = DataTransform::sanitizeRetrieveEntityInfo($sj->column_fields, $meta);

	$sj->save('ServiceJob');
	// return $id;
	return true;
}