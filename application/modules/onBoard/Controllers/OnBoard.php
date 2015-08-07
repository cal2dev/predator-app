<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class OnBoard extends MY_Controller {

	private $is_logged = FALSE;
	private $cok = 0;
	private $cok_hash = 0;
	private $uqi = 0;
	
	public function __construct() {
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('onBoard/onBoard_model');
		$this->check_for_user();
	}
	public function index()
	{
		$this->load->view('onBoard');
	}
	public function board() {
		if($this->session->is_logged){
			$u_data=$this->session->u_data;
		//	$fname=$this->session->u_data->u_fname;
		//	$lname=$this->session->u_data->u_lname;
		}
		$this->load->view('html/home.html',$u_data);
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
		//$this->session->is_logged=false;
		if($this->session->is_logged){
			
		}else{
			//print_r($this->cok);	 //var_dump($_SESSION);
			if(property_exists($this->cok,'uiq'))
			$ud=$this->onBoard_model->cookie_loadUser($this->cok);
			if($ud){
				$this->load->model('start/start_model');
				$is_register=$this->start_model->create_login($ud);
			}
			
		}
	}
}

