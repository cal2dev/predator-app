<?php 
require_once(APPPATH."models/Entities/AppUserData.php");
class OnBoard_model extends CI_Model  {
	
	private $userData = array();
	
	function __construct(){  
      parent::__construct();  
   }    
   
  
   public function test($tb){
       $query= $this->db->get($tb);
      $row=$query->result_array();
      return $row; 
   }
   
   
   public function loadUser($uqi,$sec_hash=''){
   	$rid=$this->getRecordHash($uqi);
   	$query= $this->db->get_where(USER_DATA, array('userReg_recordHash' => $rid));
   	$data=$query->row();
   	$rg = new AppUserData();
  	$this->userData=$rg;
  	print_r($this->userData);
   //	exit;
   }
   
   public function getRecordHash($uqi){
   	$this->db->select('userReg_recordHash');
   	$this->db->where('userReg_unique_id', $uqi);
   	$query= $this->db->get(USER_DATA);
   	$dt=$query->row();
   	return $dt->userReg_recordHash;
   }
   
   
}
