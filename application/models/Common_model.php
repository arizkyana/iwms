<?php

class Common_model extends CI_Model {

	public function __construct(){
        
        parent::__construct();
    }
	
	function mcheck_user($uid, $pwd){
		
		$pwd 		= substr(md5(substr(md5($pwd),0,15)),0,15);

      	$this->db->where('status',1);
      	$this->db->where('id_user',$uid);
      	$this->db->where('password',$pwd);

      	$result = $this->db->get('user_list');

      	if ($result->num_rows() == 0) {

        	return false;
      	}
      	else {
        
			$result = $result->row();          
        	return $result;
      	}
  	}

  	function mquery_menu($parent,$user_id){

  		$sql = "SELECT DISTINCT u.id_user,gdu.id_group,mdl.* FROM user_list u
		          INNER JOIN user_daftar_user_group gdu 
		            ON u.id_user = gdu.id_user
		          INNER JOIN user_hak_akses_group gha
		            ON gdu.id_group=gha.id_group
		          INNER JOIN modul mdl
		            ON gha.id_modul=mdl.id_modul
		        WHERE mdl.parent = '".$parent."' AND u.id_user='".$user_id."'
		        ORDER BY mdl.parent,mdl.sequence";  		

		    return $this->db->query($sql)->result();
  	}
}
