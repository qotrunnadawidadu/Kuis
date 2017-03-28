<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Produk extends CI_Controller {

	public function index($idPerusahaan)
	{
		$this->load->model('perusahaan_model');		
		$data['produk']=$this->perusahaan_model->getProduk($idPerusahaan);		
		$this->load->view('produk', $data);
	}

}



 ?>