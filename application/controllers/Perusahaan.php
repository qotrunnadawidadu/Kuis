<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Perusahaan extends CI_Controller {

	public function index()
	{
		$this->load->model('perusahaan_model');		
		$data['data_perusahaan']=$this->perusahaan_model->getPerusahaan();
		$this->load->view('perusahaan', $data);
	}

}



 ?>