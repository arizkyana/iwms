<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Master_wilayah extends IO_Controller {

	function __construct(){

		parent::__construct();
		$this->load->model('master_wilayah_mod','model');
	}

	public function index(){

		$v_data = array(

			'title' => 'Master Data wilayah'
		);

		$data['content'] = $this->load->view('list_view',$v_data,true);

		$this->load->view('_templates/main_view', $data);
	}

	function ajax_list(){

		$list = $this->model->get_datatables();
		$data = array();
		$no = $_POST['start'];

		foreach ($list as $l) {

			$act = '<a class="btn btn-primary btn-xs btn-flat" href="#" onclick="editData(\''.$l->id_wilayah.'\')"><i class="fa fa-edit"></i></a>&nbsp;';
			$act .= '<a class="btn btn-danger btn-xs btn-flat" href="#" onclick="deleteData(\''.$l->id_wilayah.'\')"><i class="fa fa-trash"></i></a>&nbsp;';
			
			$row = array();

			$row[] 	= $l->nama_wilayah;
			$row[] 	= $l->alamat;
			$row[] 	= $l->lat;
			$row[] 	= $l->lng;
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
		$wilayah = $this->input->post('wilayah');
		$alamat 	= $this->input->post('alamat');
		$lat 	= $this->input->post('lat');
		$lng	= $this->input->post('lng');
		$radius	= $this->input->post('radius');

		$data = array(

			'id_wilayah' 		=> $id,
			'nama_wilayah' 		=> $wilayah,
			'alamat'			=> $alamat,
			'lat'				=> $lat,
			'lng'				=> $lng,
			'radius'			=> $radius

		);

		$retval;
		if($id==''){

			$retval = $this->model->insert($data);
		}
		else{

			$this->model->update($data,$id);
		}

		echo json_encode($retval);
	}

	function cek_wilayah($wilayah){

		$param = " nama_wilayah='".$wilayah."' ";

		echo json_encode($this->model->mget_wilayah($wilayah,$param));
	}

	function get_wilayah_data($id){

		$param = " id_wilayah='".$id."' ";

		echo json_encode($this->model->mget_wilayah($id,$param));
	}

	function delete_data($id){

		$this->model->mdelete_data($id);
	}
}
