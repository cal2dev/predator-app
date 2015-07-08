<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Load extends CI_Controller {

	
	public function __construct() {
		parent::__construct();
	//	$this->load->helper("form");
		$this->load->helper('url');
	//	$this->load->library("session");
		//   $this->load->module('upload_file');
	}
	public function index()
	{
		$this->login(); 
	}
	
	function login() {
		$this->load->view('html/login.php');
	}
	function signup() {
		$this->load->view('html/signup.php');
	}
	
}
