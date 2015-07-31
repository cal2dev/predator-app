<?php 

// Store Functions are doctrine functions

require_once(APPPATH."models/Entities/AppUserRegister.php");
class Start_model extends CI_Model  {
   
   var $em;
   
   function __construct(){  
      parent::__construct();  
	  $this->em = $this->doctrine->em;
   }    
   
  
   public function test($tb){
       $query= $this->db->get($tb);
      $row=$query->result_array();
      return $row; 
       
   }
   
   public function registerIt($details)
   {
   	$done=0;
   	$dt=array();
   	$dt['firstName']	=$fname=$details['firstName']  ;
   	$dt['lastName'] 	=$lname=$details['lastName'] ;
   	$dt['email']		=$email=$details['email'] ;
   	$dt['password'] 	=$password=md5($details['password']);
   	$dt['now']			=$now = date("YmdHis");
   	$dt['record_hash']	=$record_hash=md5($email.$now);
   	$dt['uniqueId'] 	=$uniqueId= hexdec( substr(md5($fname.$lname.$now.$email), 0, 10) );
	$insert_id=$this->store_registerIt($dt);
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
   
   function store_registerIt($data){
	   $id=0;
	   $rg = new Entities\AppUserRegister();
       $rg->setregEmailId($data['email']);
       $rg->setregUniqueId($data['uniqueId']);
       $rg->setregRecordhash($data['record_hash']);
       $rg->setregUserName($data['email']);
       $rg->setregEmailId($data['email']);
      /*  $rg->setregPassword($data['password']);
       $rg->setregFirstname($data['firstName']);
       $rg->setregLastname($data['lastName']);
       $rg->setregNow($data['now']); */
        try {
            //save to database
            $this->em->persist($rg);
            $this->em->flush();
            $id=$rg->getregId();
        }
        catch(Exception $err){
            die($err->getMessage());
        }
        return $id; 
   }
   
   // call to set session and cookie
   function set_session($sdata){
   	$uqi=$sdata['uqi'];
   	$uhash='3323';
   	$COOKIE_EXPIRY_IN_DAYS = COOKIE_EXPIRY_IN_DAYS;
   	//print_r($this->session);
   	// session
   	$this->session->set_userdata($sdata);
   	// 
   	 
   	// cookie
   	$data=array("uiq"=>$uqi,"uhash"=>$uhash);
   	$cookie = array(
   			'name'   => LOGIN_COOKIE,
   			'value'  => json_encode($data),
   			'expire' => time()+(3600*24*$COOKIE_EXPIRY_IN_DAYS)
   	);
   	set_cookie($cookie);
   }
}