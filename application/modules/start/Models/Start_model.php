<?php 

class Start_model extends CI_Model  {
   function __construct(){  
      parent::__construct();  
   }    
   
  
   public function test($tb){
       $query= $this->db->get($tb);
      $row=$query->result_array();
      return $row; 
       
   }
   
   public function registerIt($details)
   {
   	$fname=$details['firstName']  ;
   	$lname=$details['lastName'] ;
   	$email=$details['email'] ;
   	$password=$details['password'];
   	$hashed_password = md5($password);
   	$now = date("YmdHis");
   	$record_hash=md5($now);
   	$uniqueId = hexdec( substr(md5($fname.$lname.$now.$email), 0, 10) );
   
   		 $insert_id=$this->db->insert(USER_REG,array(
   				'userReg_email_id' => $email,
   				'userReg_user_name' => $email,
   				'userReg_firstname' => $fname,
   				'userReg_lastname' => $lname,
   				'userReg_password' => $hashed_password,
   				'userReg_recordHash' => $record_hash,
   				'userReg_unique_id' => $uniqueId,
   				'userReg_now' => $now
   		));
   		 /*
   		if($insert_id != null && $insert_id !=''){
   			$get_timestamp = $db->getRow('select * from '.USER_REGISTER.' where userReg_id ='. $insert_id );
   			$uniqueId=md5($email.$get_timestamp['userReg_dateTime']);
   			$str="userReg_id=".$insert_id;
   			$update =  $db->update(USER_REGISTER,'userReg_unique_id=?',$str,array($uniqueId));
   			$insert_id=  $db->insert(USER_DETAILS,array(
   					'userReg_id' => $get_timestamp['userReg_id'],
   					'userReg_recordHash' => $get_timestamp['userReg_recordHash'],
   					'userReg_unique_id' => $uniqueId,
   					'userReg_user_name' => $get_timestamp['userReg_email_id'],
   					'userReg_email_id' => $get_timestamp['userReg_email_id'],
   					'userReg_password' => $get_timestamp['userReg_password'],
   					'userDetails_firstname' => $fname,
   					'userDetails_lastname' => $lname
   			));
   			return $get_timestamp['userReg_recordHash'];
   		}else{
   			return false;
   		} */
   			
   	
   
   
   	//	ArrayDisplay($get_timestamp);
   	//echo "==decy==>".decryption($get_timestamp['userReg_password'],ENC_LOGIN_PASSWORD);
   	//print_r($details);
   
   }
}