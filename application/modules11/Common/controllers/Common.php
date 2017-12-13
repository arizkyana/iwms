<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Common extends MX_Controller {

	function get_menu(){

		$array_menu = array();
		$uid 		= $this->session->userdata('id_user');
		$main_menu 	= $this->common_model->mquery_menu(0,$uid);

		if($main_menu!=null){

    		foreach ($main_menu as $m){

				$child = $this->get_child_menu($m->id_modul,$uid);

				$items = array(

					"menu_title" 	=> $m->nama_modul,
					"url" 			=> base_url().$m->url,					
					"icon"			=> $m->icon,
					"child"			=> $child
				);

				array_push($array_menu,$items);
    		}
    	}

    	echo json_encode($array_menu);
	}

	function get_child_menu($parent_modul,$user_id,$ar_child_menu=array()){

		$child_menu = $this->common_model->mquery_menu($parent_modul,$user_id);

    	if($child_menu!=null){

    		foreach ($child_menu as $c){

    			$ar_sub_child = $this->get_child_menu($c->id_modul,$user_id);

				$items = array(

					"menu_title" 	=> $c->nama_modul,
					"url" 			=> base_url().$c->url,					
					"icon"			=> $c->icon,
					"child"			=> $ar_sub_child
				);

				array_push($ar_child_menu,$items);
    		}    		

    		return $ar_child_menu;
    	}
    	else{

    		return array();
    	}
    }

}
