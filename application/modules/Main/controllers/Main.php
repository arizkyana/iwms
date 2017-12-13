<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends IO_Controller {

	public function index(){

		$v_data = array(

			'title' => 'Welcome To IWWMIS'
		);

		$data['content'] = $this->load->view('main_view',$v_data,true);

		$this->load->view('_templates/main_view', $data);
	}
}
