<?php
use Doctrine\ORM\Mapping\ClassMetadataInfo;

$metadata->setIdGeneratorType(ClassMetadataInfo::GENERATOR_TYPE_AUTO);
$metadata->setPrimaryTable(array(
		'name' => 'app_user_data'
));

$metadata->mapField(array(
	'id' => true,
	'fieldName' => 'dataId',
	'columnName' => 'Data_id',
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
$metadata->mapField(array(
		'fieldName' => 'regPassword',
		'columnName' => 'Reg_password',
		'type' => 'string',
		'nullable' => true,
		'length' => 120,
		'options' =>
		array(
				'fixed' => false,
		),
));
$metadata->mapField(array(
		'fieldName' => 'dataFirstname',
		'columnName' => 'Data_firstname',
		'type' => 'string',
		'nullable' => true,
		'length' => 100,
		'options' =>
		array(
				'fixed' => false,
		),
));
$metadata->mapField(array(
		'fieldName' => 'dataLastname',
		'columnName' => 'Data_lastname',
		'type' => 'string',
		'nullable' => true,
		'length' => 100,
		'options' =>
		array(
				'fixed' => false,
		),
));
$metadata->mapOneToOne(
		array(
				'fieldName' => 'reg',
				'targetEntity' => 'AppUserRegister',
				'cascade' =>array(
						0 => 'remove', //persist , merge , refresh ,detach  , all
						1 => 'persist'
				),
			//	'fetch' => ClassMetadata::FETCH_LAZY,
				'mappedBy' => 'app_user_register',
			//	'inversedBy' => NULL,
				'joinColumns' =>array(	0 =>array('name' => 'Reg_id','referencedColumnName' => 'Reg_id')),
				'orphanRemoval' => false,
		));

