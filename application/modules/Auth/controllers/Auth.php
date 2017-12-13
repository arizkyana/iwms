<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends MX_Controller {

	function __construct(){

        parent::__construct();        
    }

  	function index(){

  		if(!$this->session->userdata('id_user')){

  			$this->load->view('vLogin_view');
  		}
  		else{

  			redirect('Main','refresh');
  		}
   	}

	function logout_act(){

		$this->session->unset_userdata('id_user');		
   		session_destroy();

   		redirect(base_url().'Auth','refresh');
	}

	function login_act(){

		$login 		= false;
        $id_user    = $this->input->post("username");
        $password   = $this->input->post("password");

        if(!($id_user && $password)) {

            $this->session->set_flashdata('err_message', 'User ID dan Password harus diisi.');
        }
        else{

            $user_data = $this->common_model->mcheck_user($id_user, $password);


            if($user_data!=NULL){

                $this->session->set_userdata('id_user',$user_data->id_user);
                $this->session->set_userdata('full_name',$user_data->nama_lengkap);
                $this->session->set_userdata('foto',$user_data->foto);

                $login = true;
            }
            else {

                $this->session->set_flashdata('err_message', 'User ID atau Password yang anda masukkan salah.');
            }
        }

        if($login){

        	redirect(base_url().'Main','refresh');
        }
        else{

        	redirect(base_url().'Auth');
        }
    }
}
