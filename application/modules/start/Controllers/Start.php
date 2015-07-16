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
		$post_val= $this->_post_args;  // for post var $this->input->post()
	//	print_r($this->load->model('start/start_model'));
		print_r($this);
	//	$this->load->start_model->test();
		//$tb=$this->load_model;
		
	//	print_r($this->Start_model);
		
		if($post_val){ 
			
			//$this->form_validation->set_rules($config);
			$this->form_validation->set_data($post_val);
			$this->form_validation->set_error_delimiters('<div style=color:red;>', '</div>');
			//$this->form_validation->set_message('is_unique', 'Error Message');
			if ($this->form_validation->run('signup') == FALSE) {
				//echo "username or email id already registed";
				
				var_dump($this->form_validation->error_array());
				//echo validation_errors();echo "here";
				//return "username or email id already registed";
				// $data['errors'] = 1;
			} else { 
			
			}
		}
		//$message = array("error" => 0,"message" =>"You have logged in successfully!","email" => 'ddd',"password" => 'sdsdsd');
		//$this->response($message, 200); // 200 being the HTTP response code for success
		exit;
	}
}
