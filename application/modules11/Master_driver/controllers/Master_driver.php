<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Master_driver extends IO_Controller {

	function __construct(){

		parent::__construct();
		$this->load->model('master_driver_mod','model');
	}

	public function index(){

		$v_data = array(

			'title' => 'Master Data driver'
		);

		$data['content'] = $this->load->view('list_view',$v_data,true);

		$this->load->view('_templates/main_view', $data);
	}

	function ajax_list(){

		$list = $this->model->get_datatables();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $l) {

			$act = '<a class="btn btn-primary btn-xs btn-flat" href="#" onclick="editData(\''.$l->nik.'\')"><i class="fa fa-edit"></i></a>&nbsp;';
			$act .= '<a class="btn btn-danger btn-xs btn-flat" href="#" onclick="deleteData(\''.$l->nik.'\')"><i class="fa fa-trash"></i></a>&nbsp;';
			
			$row = array();

			$row[] 	= $l->nik;
			$row[] 	= $l->nama;
			$row[] 	= $l->jns_kelamin;
			$row[] 	= $l->alamat;
			$row[] 	= $l->no_telepon;
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

		$nik 			= $this->input->post('txt_nik');
		$nama 			= $this->input->post('txt_nama');
		$jns_kelamin 	= $this->input->post('opt_jns_kelamin');
		$alamat			= $this->input->post('txt_alamat');
		$no_telepon		= $this->input->post('txt_no_telepon');

		$data = array(

			'nik' 				=> $nik,
			'nama' 				=> $nama,
			'jns_kelamin'		=> $jns_kelamin,
			'alamat'			=> $alamat,
			'no_telepon'		=> $no_telepon
		);

		if($nik==''){

			$this->model->insert($data);
		}
		else{

			$this->model->update($data,$nik);
		}
	}

	function cek_nik($nama){

		$param = " nik='".$nama."' ";

		echo json_encode($this->model->mget_driver($nama,$param));
	}

	function get_driver_data($nik){

		$param = " nik='".$nik."' ";

		echo json_encode($this->model->mget_driver($nik,$param));
	}

	function delete_data($nik){

		$this->model->mdelete_data($nik);
	}
}
