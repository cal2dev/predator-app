<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class OnBoard extends CI_Controller {

	
	public function __construct() {
		parent::__construct();
	//	$this->load->helper("form");
		$this->load->helper('url');
	//	$this->load->library("session");
		//   $this->load->module('upload_file');
	}
	public function index()
	{
		
		$this->load->view('onBoard'); 
	}
}
