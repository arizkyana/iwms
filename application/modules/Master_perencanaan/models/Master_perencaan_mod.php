<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Master_perencanaan_mod extends CI_Model {

	var $table 			= 'm_perencanaan';
	var $column_order 	= array(null, 'id_ren', 'tgl_ren', 'id_lokasi', 'LEVEL', 'keterangan'); //set column field database for datatable orderable
	var $column_search 	= array('id_ren', 'tgl_ren', 'id_lokasi', 'LEVEL', 'keterangan'); //set column field database for datatable searchable 
	var $order 			= array('id' => 'asc'); // default order 

	function insert($data){

		$this->db->insert('m_perencanaan',$data);
	}

	function update($data,$id){

		$this->db->where('id_ren',$id);
		$this->db->update('m_perencanaan',$data);
	}

	function mget_wilayah($perencanaan,$param=null){

		if($param!=null){

			$this->db->where($param);
		}

		return $this->db->get('m_perencanaan')->row();
	}

	private function _get_datatables_query(){
		
		$this->db->from($this->table);

		$i = 0;
	
		foreach ($this->column_search as $item) // loop column 
		{
			if($_POST['search']['value']) // if datatable send POST for search
			{
				
				if($i===0) // first loop
				{
					$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $_POST['search']['value']);
				}
				else
				{
					$this->db->or_like($item, $_POST['search']['value']);
				}

				if(count($this->column_search) - 1 == $i) //last loop
					$this->db->group_end(); //close bracket
			}
			$i++;
		}
		
		if(isset($_POST['order'])) // here order processing
		{
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} 
		else if(isset($this->order))
		{
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	function get_datatables(){

		$this->_get_datatables_query();
		if($_POST['length'] != -1)
		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
	}

	function count_filtered(){

		$this->_get_datatables_query();
		$query = $this->db->get();
		return $query->num_rows();
	}

	function count_all(){

		$this->db->from($this->table);
		return $this->db->count_all_results();
	}

	function mdelete_data($id){

		$this->db->where('id_ren',$id);
		$this->db->delete('m_perencanaan');
	}
}
