<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Common_lib{

    var $CI;

    public function __construct(){

        //$this->_CI =& get_instance();
        $CI =& get_instance();
        $CI->load->database();   
    }


    function build_sidemenu(){

    	$CI =& get_instance();

    	$uid 			= $CI->session->userdata('logged_in')['iduser'];
    	$string_menu 	= '';
 
    	$main_menu_data = $this->look_up_menu(0,$uid);

    	if($main_menu_data!=null){

    		foreach ($main_menu_data as $r) {
    			
    			$url 	= base_url().$r->url;
    			$icon  	= $r->icon;
    			$title 	= $r->modul_name;

                $child_menu   = $this->build_child_menu($r->modul_id,$uid); //data child menu

                $class_tree = "";
                if($child_menu!='') $class_tree = ' class="treeview" ';

    			$string_menu .= '<li '.$class_tree.'>
                                <a href="'.$url.'">
                                    <i class="'.$icon.'"></i>
                                    <span>'.$title.'</span>';

                //child menu
                if($child_menu!=''){

                    $string_menu .='<span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                  </span>';
                }

                $string_menu    .= "</a>";
                $string_menu    .= $child_menu;
                //end child menu

				$string_menu .= '</li>';

    		}
    	}

    	echo $string_menu;
    }

    function build_child_menu($parent_modul,$user_id,$string_child_menu=''){

    	$CI =& get_instance();

    	$child_menu = $this->look_up_child($parent_modul);

    	if($child_menu!=null){

    		$string_child_menu .= '<ul class="treeview-menu">';

    		foreach ($child_menu as $r) {
    			
    			$url 	= base_url().$r->url;
    			$icon  	= $r->icon;
    			$title 	= $r->modul_name;

    			
    			$string_child_menu .= '<li>
                                <a href="'.$url.'">
                                    <i class="'.$icon.'"></i>
                                    <span>'.$title.'</span>';

                //child menu
                $child_sub_menu 	= $this->build_child_menu($r->modul_id,$user_id,$string_child_menu);
                $string_child_menu .= $child_sub_menu;

                if($child_sub_menu!='') $string_child_menu .= '<span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>';
                //end child menu
                
				$string_child_menu .= '</a></li>';
    		}

    		$string_child_menu .= '</ul>';

    		return $string_child_menu;
    	}
    	else{

    		return '';
    	}
    }

    function look_up_menu($parent_modul,$user_id){

    	$CI =& get_instance();

    	$sql = "SELECT DISTINCT u.id,m.* FROM 
                    `user` u
                        INNER JOIN user_privilege p ON u.id=p.user_id
                        INNER JOIN modul m ON p.menu_id=m.modul_id
                WHERE u.id='".$user_id."' AND m.parent='".$parent_modul."'
                ORDER BY m.parent,m.sequence";

		return $CI->db->query($sql)->result();
    }

    function look_up_child($parent){

        $CI =& get_instance();

        $sql = "SELECT * FROM modul WHERE parent='".$parent."' ORDER BY sequence";

        return $CI->db->query($sql)->result();
    }

    function generate_qrcode($string){

        require_once APPPATH.'third_party/phpqrcode/qrlib.php';
        
        $filename   = "./assets/images/barcode/".$string.".jpg";
        
        QRcode::png($string, $filename, "L", 4, 1); 
    }
}
