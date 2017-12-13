<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Master_komplen extends IO_Controller {

	function __construct(){

		parent::__construct();
		$this->load->model('Master_komplen_mod','model');
	}

	public function index(){

		$v_data = array(

			'title' => 'Master Data Komplain'
		);

		$data['content'] = $this->load->view('list_view',$v_data,true);

		$this->load->view('_templates/main_view', $data);
	}

	function ajax_list(){

		$list = $this->model->get_datatables();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $l) {

			$act = '<a class="btn btn-primary btn-xs btn-flat" href="#" onclick="editData(\''.$l->id_komplain.'\')"><i class="fa fa-edit"></i></a>&nbsp;';
			$act .= '<a class="btn btn-danger btn-xs btn-flat" href="#" onclick="deleteData(\''.$l->id_komplain.'\')"><i class="fa fa-trash"></i></a>&nbsp;';
			
			$row = array();

			$row[] 	= $l->id_komplain;
			$row[] 	= $l->id_lokasi;
			$row[] 	= $l->judul;
			$row[] 	= $l->keterangan;
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

		$id 	= $this->input->post('txt_komplain');
		$lokasi = $this->input->post('txt_lokasi');
		$judul 	= $this->input->post('txt_judul');
		$keterangan 	= $this->input->post('txt_keterangan');
	
		$data = array(

			'id_komplain'	=> $id,
			'id_lokasi' 	=> $lokasi,
			'judul' 		=> $judul,
			'keterangan'	=> $keterangan
		);

		if($id >'0'){

			$this->model->insert($data);
		}
		else{

			$this->model->update($data,$id);
		}
	}

	function cek_lokasi($lokasi){

		$param = " lokasi='".$lokasi."' ";

		echo json_encode($this->model->mget_driver($lokasi,$param));
	}

	function get_driver_data($id){

		$param = " id_komplain='".$id."' ";

		echo json_encode($this->model->mget_driver($id,$param));
	}

	function delete_data($id){

		$this->model->mdelete_data($id);
	}
}
