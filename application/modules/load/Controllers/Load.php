<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Load extends REST_Controller {

	
	public function __construct() {
		parent::__construct();
		//$this->load->helper("form");
		$this->load->helper('url');
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
		print_r($post_val);
		if($post_val){
		//$checkAuth = $this->loadModel('login/login_model');
		//$something = $checkAuth->checkAuth($post_val);
		}
		//$message = array("error" => 0,"message" =>"You have logged in successfully!","email" => 'ddd',"password" => 'sdsdsd');
		//$this->response($message, 200); // 200 being the HTTP response code for success
		exit;
	}
}
