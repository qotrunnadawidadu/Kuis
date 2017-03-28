<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lokasi extends CI_Controller {

	public function index($idPerusahaan)
	{
		$this->load->model('perusahaan_model');		
		$data['lokasi_perusahaan']=$this->perusahaan_model->getLokasi($idPerusahaan);
		$this->load->view('lokasi', $data);
	
	}

}


 ?>
