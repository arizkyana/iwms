<?php defined('BASEPATH') OR exit('No direct script access allowed');

class IO_Controller extends MX_Controller {

    function __construct(){
    	
        parent::__construct();

        if(!$this->session->userdata('id_user')){ 

            redirect('Auth');
        }
    }
}