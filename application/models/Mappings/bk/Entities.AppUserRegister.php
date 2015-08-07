<?php
use Doctrine\ORM\Mapping\ClassMetadataInfo;

$metadata->setIdGeneratorType(ClassMetadataInfo::GENERATOR_TYPE_AUTO);
$metadata->setPrimaryTable(array(
		'name' => 'app_user_register'
));

$metadata->mapField(array(
	'id' => true,
	'fieldName' => 'regId',
	'columnName' => 'Reg_id',
	'type' => 'integer',
	'generator'=>'AUTO',
	'options' => array(
		'fixed' => true
   )
));

$metadata->mapField(array(	
   'fieldName' => 'regUniqueId',
	'columnName' => 'Reg_unique_id',
   'type' => 'integer',
   'nullable' => false
));

$metadata->mapField(array(
	'fieldName' => 'regRecordhash',
	'columnName' => 'Reg_recordHash',
	'type' => 'string',
	'nullable' => false,
	'options' => array(
       'fixed' => true
   )
));
$metadata->mapField(array(
	'fieldName' => 'regUserName',
		'columnName' => 'Reg_user_name',
	'type' => 'string',
	'nullable' => false,
	'options' => array(
       'fixed' => true
   )
));
$metadata->mapField(array(
	'fieldName' => 'regEmailId',
		'columnName' => 'Reg_email_id',
	'type' => 'string',
	'nullable' => false,
	'options' => array(
       'fixed' => true
   )
));
