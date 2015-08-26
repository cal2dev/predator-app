<?php

use Doctrine\ORM\Mapping\ClassMetadataInfo;

$metadata->setInheritanceType(ClassMetadataInfo::INHERITANCE_TYPE_NONE);
$metadata->setPrimaryTable(array(
   'name' => 'app_login_data',
  ));
$metadata->setChangeTrackingPolicy(ClassMetadataInfo::CHANGETRACKING_DEFERRED_IMPLICIT);
$metadata->mapField(array(
   'fieldName' => 'logdId',
   'columnName' => 'LogD_id',
   'type' => 'integer',
   'nullable' => false,
   'options' => 
   array(
   'unsigned' => false,
   ),
   'id' => true,
  ));
$metadata->mapField(array(
   'fieldName' => 'dataId',
   'columnName' => 'Data_id',
   'type' => 'integer',
   'nullable' => false,
   'options' => 
   array(
   'unsigned' => false,
   ),
  ));
$metadata->mapField(array(
   'fieldName' => 'regRecordhash',
   'columnName' => 'Reg_recordHash',
   'type' => 'string',
   'nullable' => false,
   'length' => 120,
   'options' => 
   array(
   'fixed' => false,
   ),
  ));
$metadata->mapField(array(
   'fieldName' => 'logdCookieHash',
   'columnName' => 'LogD_cookie_hash',
   'type' => 'string',
   'nullable' => false,
   'length' => 120,
   'options' => 
   array(
   'fixed' => false,
   ),
  ));
$metadata->mapField(array(
   'fieldName' => 'sessId',
   'columnName' => 'Sess_id',
   'type' => 'string',
   'nullable' => true,
   'length' => 120,
   'options' => 
   array(
   'fixed' => false,
   ),
  ));
$metadata->mapField(array(
   'fieldName' => 'logdCstamp',
   'columnName' => 'LogD_cstamp',
   'type' => 'datetime',
   'nullable' => false,
   'options' => 
   array(
   'default' => 'CURRENT_TIMESTAMP',
   ),
  ));
$metadata->mapField(array(
   'fieldName' => 'logdUstamp',
   'columnName' => 'LogD_ustamp',
   'type' => 'datetime',
   'nullable' => false,
   'options' => 
   array(
   'default' => '0000-00-00 00:00:00',
   ),
  ));
$metadata->mapField(array(
   'fieldName' => 'logdRemark',
   'columnName' => 'LogD_remark',
   'type' => 'string',
   'nullable' => true,
   'length' => 200,
   'options' => 
   array(
   'fixed' => false,
   ),
  ));
$metadata->setIdGeneratorType(ClassMetadataInfo::GENERATOR_TYPE_IDENTITY);