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
   	$done=0;
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
  	 if($insert_id){
			  	 	$sdata = array('fname'  => $fname,
			  	 					'lname'  => $lname,
							        'record_id'=> $record_hash,
							        'uqi' => $uniqueId );
					$this->set_session($sdata);
   					$done=1;
  		 }
   
   return $done;
   }
   
   // call to set session and cookie
   function set_session($sdata){
   		$COOKIE_EXPIRY_IN_DAYS = COOKIE_EXPIRY_IN_DAYS;
	   	$this->session->set_userdata($sdata);
	  // 	print_r($this->session);
	 	 $data=array("uiq"=>$sdata['uqi']);
	   	$cookie = array(
	   			'name'   => LOGIN_COOKIE,
	   			'value'  => json_encode($data),
	   			'expire' => time()+(3600*24*$COOKIE_EXPIRY_IN_DAYS)
	   	);
	   	set_cookie($cookie);
   }
   
   
   
   
}