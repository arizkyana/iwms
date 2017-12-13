<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Master_agama extends IO_Controller {

	function __construct(){

		parent::__construct();
		$this->load->model('Master_agama_mod','model');
	}

	public function index(){

		$v_data = array(

			'title' => 'Master Data Agama'
		);

		$data['content'] = $this->load->view('list_view',$v_data,true);

		$this->load->view('_templates/main_view', $data);
	}

	function ajax_list(){

		$list = $this->model->get_datatables();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $l) {

			$act = '<a class="btn btn-primary btn-xs btn-flat" href="#" onclick="editData(\''.$l->id_agama.'\')"><i class="fa fa-edit"></i></a>&nbsp;';
			$act .= '<a class="btn btn-danger btn-xs btn-flat" href="#" onclick="deleteData(\''.$l->id_agama.'\')"><i class="fa fa-trash"></i></a>&nbsp;';
			
			$row = array();

			$row[] 	= $l->id_agama;
			$row[] 	= $l->nama_agama;
			$row[]	= $act;
			$data[] = $row;
		}

		$output = array(

			"draw" => $_POST['draw'],
			"recordsTotal" => $this->model->count_all(),
			"recordsFiltered" => $this->model->count_filtered(),
			"data" => $data,
		);

		//output to json format
		echo json_encode($output);
	}

	function simpan_data(){

		$id 	= $this->input->post('txt_id_agama');
		$agama  = $this->input->post('txt_nama_agama');
		

		$data = array(

			'id_agama' 		=> $id_agama,
			'nama_agama' 	=> $nm_agama
		
		);

		if($id==''){

			$this->model->insert($data);
		}
		else{

			$this->model->update($data,$id);
		}
	}

	function cek_id_agama($id_agama){

		$param = " id_agama='".$id_agama."' ";

		echo json_encode($this->model->mget_driver($id_agama,$param));
	}

	function get_driver_data($id){

		$param = " id_agama='".$id."' ";

		echo json_encode($this->model->mget_driver($id,$param));
	}

	function delete_data($id){

		$this->model->mdelete_data($id);
	}
}
