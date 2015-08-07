<?php

use Doctrine\ORM\Mapping\ClassMetadataInfo;

$metadata->setInheritanceType(ClassMetadataInfo::INHERITANCE_TYPE_NONE);
$metadata->setPrimaryTable(array(
   'name' => 'app_table_alias',
  ));
$metadata->setChangeTrackingPolicy(ClassMetadataInfo::CHANGETRACKING_DEFERRED_IMPLICIT);
$metadata->mapField(array(
   'fieldName' => 'tbalias',
   'columnName' => 'tbAlias',
   'type' => 'integer',
   'nullable' => false,
   'options' => 
   array(
   'unsigned' => false,
   ),
   'id' => true,
  ));
$metadata->mapField(array(
   'fieldName' => 'tbaliasName',
   'columnName' => 'tbAlias_name',
   'type' => 'string',
   'nullable' => false,
   'length' => 250,
   'options' => 
   array(
   'fixed' => false,
   ),
  ));
$metadata->mapField(array(
   'fieldName' => 'tbaliasAlias',
   'columnName' => 'tbAlias_alias',
   'type' => 'string',
   'nullable' => false,
   'length' => 250,
   'options' => 
   array(
   'fixed' => false,
   ),
  ));
$metadata->mapField(array(
   'fieldName' => 'tbaliasCstamp',
   'columnName' => 'tbAlias_cstamp',
   'type' => 'datetime',
   'nullable' => false,
   'options' => 
   array(
   'default' => 'CURRENT_TIMESTAMP',
   ),
  ));
$metadata->mapField(array(
   'fieldName' => 'tbaliasUstamp',
   'columnName' => 'tbAlias_ustamp',
   'type' => 'datetime',
   'nullable' => false,
   'options' => 
   array(
   'default' => '0000-00-00 00:00:00',
   ),
  ));
$metadata->setIdGeneratorType(ClassMetadataInfo::GENERATOR_TYPE_IDENTITY);