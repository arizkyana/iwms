<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Master_rumah extends IO_Controller {

	function __construct(){

		parent::__construct();
		$this->load->model('Master_rumah_mod','model');
	}

	public function index(){

		$v_data = array(

			'title' => 'Master Data Sampah'
		);

		$data['content'] = $this->load->view('list_view',$v_data,true);

		$this->load->view('_templates/main_view', $data);
	}

	function ajax_list(){

		$list = $this->model->get_datatables();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $l) {

			$act = '<a class="btn btn-primary btn-xs btn-flat" href="#" onclick="editData(\''.$l->id_rumah.'\')"><i class="fa fa-edit"></i></a>&nbsp;';
			$act .= '<a class="btn btn-danger btn-xs btn-flat" href="#" onclick="deleteData(\''.$l->id_rumah.'\')"><i class="fa fa-trash"></i></a>&nbsp;';
			
			$row = array();

			$row[] 	= $l->id_rumah;
			$row[] 	= $l->alamat;
			$row[] 	= $l->id_wilayah;
			$row[] 	= $l->type;
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

		$id 		= $this->input->post('txt_id_rumah');
		$alamat 	= $this->input->post('txt_alamat');
		$wilayah 	= $this->input->post('opt_idwilayah');
		$type		= $this->input->post('txt_type');

		$data = array(

			'id_rumah' 		=> $id,
			'alamat' 		=> $alamat,
			'id_wilayah'	=> $wilayah,
			'type'			=> $type
		);

		if($id >'0'){

			$this->model->insert($data);
		}
		else{

			$this->model->update($data,$id);
		}
	}

	function cek_nopol($nopol){

		$param = " nopol='".$nopol."' ";

		echo json_encode($this->model->mget_driver($nopol,$param));
	}

	function get_driver_data($id){

		$param = " id_rumah='".$id."' ";

		echo json_encode($this->model->mget_driver($id,$param));
	}

	function delete_data($id){

		$this->model->mdelete_data($id);
	}
}
