<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Start extends REST_Controller {

	
	public function __construct() {
		parent::__construct();
		//$this->load->helper("form");
		$this->load->library('form_validation');
		$this->load->helper('url');
		$this->load->model('start/start_model');
	//	$this->load->library("session");
		//   $this->load->module('upload_file');
	}
	public function index_get()
	{
		$this->login_get(); 
	}
	
	function login_get() {
		$this->load->view('html/login.php');
	}
	function signup_get() {
		$this->load->view('html/signup.php');
	}
	function signup_post() {
		$post_val= $this->input->post('data') ;  // for payload var $this->_post_args
	//	print_r($this->load->model('start/start_model'));
		
		//$tb=$this->start_model->test(USER_REG);
		//print_r($post_val);exit;
		//$tb=$this->load_model;
		
	//	print_r($this->Start_model);
		
		if($post_val){ 
			$this->form_validation->set_data($post_val);
			//$this->form_validation->set_error_delimiters('<div style=color:red;>', '</div>');
			//$this->form_validation->set_message('is_unique', 'Error Message');
			if ($this->form_validation->run('signup') == FALSE) {
				$err=$this->form_validation->error_array();
				if(isset($err['password']))	$msg[]=PASS_ERROR;
				if(isset($err['email']))	$msg[]=PASS_DUP;
				$this->responser($msg,400);
			} else { 
				$this->start_model->registerIt($post_val);
			}
		}
		//$this->response($message, 200); // 200 being the HTTP response code for success
		exit;
	}
	function responser($msg,$code) {
	//	$message = array("error");
		$message = array("error" => count($msg),"message" =>$msg);
		$this->response($message, $code); // 200 - for success, 400 - error
	}
}
