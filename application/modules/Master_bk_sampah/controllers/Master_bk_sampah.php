<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Master_bk_sampah extends IO_Controller {

	function __construct(){

		parent::__construct();
		$this->load->model('Master_bk_sampah_mod','model');
	}

	public function index(){

		$v_data = array(

			'title' => 'Master Data Bak Sampah'
		);

		$data['content'] = $this->load->view('list_view',$v_data,true);

		$this->load->view('_templates/main_view', $data);
	}

	function ajax_list(){

		$list = $this->model->get_datatables();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $l) {

			$act = '<a class="btn btn-primary btn-xs btn-flat" href="#" onclick="editData(\''.$l->id_lokasi.'\')"><i class="fa fa-edit"></i></a>&nbsp;';
			$act .= '<a class="btn btn-danger btn-xs btn-flat" href="#" onclick="deleteData(\''.$l->id_lokasi.'\')"><i class="fa fa-trash"></i></a>&nbsp;';
			
			$row = array();

			$row[] 	= $l->id_lokasi;
			$row[] 	= $l->nama_lokasi;
			$row[] 	= $l->jenis;
			$row[] 	= $l->tipe;
			$row[] 	= $l->alamat;
			//$row[]	= $act;
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

		$id_lokasi 		= $this->input->post('txt_id_lokasi');
		$nama_lokasi 	= $this->input->post('txt_nama_lokasi');

		$data = array(

			'id_lokasi' 		=> $id_lokasi,
			'nama_lokasi' 		=> $nama_lokasi
		);

		if($id_lokasi >'0'){

			$this->model->insert($data);
		}
		else{

			$this->model->update($data,$id_lokasi);
		}
	}

	function cek_lokasi($lokasi){

		$param = " nama_lokasi ='".$lokasi."' ";

		echo json_encode($this->model->mget_bk_sampah($lokasi,$param));
	}

	function get_bk_sampah_data($id){

		$param = " id_lokasi='".$id."' ";

		echo json_encode($this->model->mget_bk_sampah($id,$param));
	}

	function filter(){

		$param = $this->input->post();
		 header('Content-Type: application/json');
		echo json_encode($this->model->mget_bk_sampah_filter($param));
	}

	function delete_data($id){

		$this->model->mdelete_data($id);
	}
}
