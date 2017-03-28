<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Perusahaan_Model extends CI_Model {

		public function __construct()
		{
			parent::__construct();
			//Do your magic here
		}	

		public function getPerusahaan()
		{
			$query = $this->db->get('perusahaan');
			return $query->result_array();
		}

		public function getProduk($idPerusahaan)
		{	
			$this->db->select('*');
			$this->db->from('produk');
			$this->db->join('perusahaan', 'perusahaan.id = produk.fk_perusahaan');
			$this->db->where('perusahaan.id', $idPerusahaan);
			$query = $this->db->get();
			return $query->result_array();
		}
		public function getLokasi($idPerusahaan)
		{
			$this->db->select('lokasi.namaLokasi AS nama_lokasi, lokasi.tanggalBerdiri, perusahaan.namaPerusahaan');
			$this->db->from('lokasi');
			$this->db->join('perusahaan', 'perusahaan.id = lokasi.fk_perusahaan');
			$this->db->where('perusahaan.id', $idPerusahaan);
			$query = $this->db->get();
			return $query->result_array();
		}

}
