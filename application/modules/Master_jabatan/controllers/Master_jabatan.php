<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Master_jabatan extends IO_Controller {

	function __construct(){

		parent::__construct();
		$this->load->model('Master_jabatan_mod','model');
	}

	public function index(){

		$v_data = array(

			'title' => 'Master Data Jabatan'
		);

		$data['content'] = $this->load->view('list_view',$v_data,true);

		$this->load->view('_templates/main_view', $data);
	}

	function ajax_list(){

		$list = $this->model->get_datatables();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $l) {

			$act = '<a class="btn btn-primary btn-xs btn-flat" href="#" onclick="editData(\''.$l->id.'\')"><i class="fa fa-edit"></i></a>&nbsp;';
			$act .= '<a class="btn btn-danger btn-xs btn-flat" href="#" onclick="deleteData(\''.$l->id.'\')"><i class="fa fa-trash"></i></a>&nbsp;';
			
			$row = array();

			$row[] 	= $l->nama_jabatan;
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

		$id 	= $this->input->post('hid_id');
		$nmjabatan = $this->input->post('txt_nmjabatan');

		$data = array(

			'nama_jabatan' 		=> $nmjabatan
		);

		if($id==''){

			$this->model->insert($data);
		}
		else{

			$this->model->update($data,$id);
		}
	}

	function cek_jabatan($jabatan){

		$param = " nama_jabatan='".$jabatan."' ";

		echo json_encode($this->model->mget_jabatan($jabatan,$param));
	}

	function get_jabatan_data($id){

		$param = " id='".$id."' ";

		echo json_encode($this->model->mget_jabatan($id,$param));
	}

	function delete_data($id){

		$this->model->mdelete_data($id);
	}
}
