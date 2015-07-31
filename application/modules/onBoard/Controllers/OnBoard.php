<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class OnBoard extends MY_Controller {

	private $is_logged = 0;
	private $cok = 0;
	private $cok_hash = 0;
	private $uqi = 0;
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('onBoard/onBoard_model');
	}
	public function index()
	{
		$this->check_for_user();
		$this->load->view('onBoard');
	}
	public function board() {
		$this->load->view('html/home.html');
	}
	public function login() {
		$this->load->view('html/loginUI.html');
	}
	
	public function contact() {
		$this->load->view('html/contact.html');
	}
	
	public function about() {
		$this->load->view('html/about.html');
	}
	protected function check_for_user() {
		$this->cok=json_decode(get_cookie(LOGIN_COOKIE));
		//print_r($cok);	//print_r($_COOKIE);
		$this->uqi=$this->session->uqi;
		if($this->uqi){
			$this->is_logged=1;
			$this->onBoard_model->loadUser($this->uqi);
		}
	}
}

