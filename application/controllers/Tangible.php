<?php

    class Tangible extends CI_Controller
    {

        public function __construct()
        {  
            parent::__construct();
            $this->load->model('Tangible_model');
        }

        public function index($id_prov, $id_daerah, $id_tipe, $id_provinsi) 
        {
                $data['judul']          = 'Tangible';
                $data['id_prov']        = $id_prov;
                $data['id_daerah']      = $id_daerah;
                $data['id_tipe']        = $id_tipe;
                $data['id_provinsi']    = $id_provinsi;

                $data['tangible']       = $this->Tangible_model->getTangibleById($id_tipe);
                
                $this->load->view('templates/header', $data);
                $this->load->view('tangible/index', $data);
                $this->load->view('templates/footer');
        }

        public function tambah($id_prov, $id_daerah, $id_tipe, $id_provinsi)
        {
            if(isset($_SESSION['username'])){
                $data['judul']          = "Tambah Tangible";
                $data['id_prov']        = $id_prov;
                $data['id_daerah']      = $id_daerah;
                $data['id_tipe']        = $id_tipe;
                $data['id_provinsi']    = $id_provinsi;


                $this->load->view('templates/header', $data);
                $this->load->view('tangible/tambah',$data);
                $this->load->view('templates/footer');

            } else { redirect('auth');}
        }
            
        public function prosesTambahTangible($id_prov, $id_daerah, $id_tipe, $id_provinsi)
        {
            $this->Tangible_model->tambahtangible();
            redirect (base_url()."tangible/index/". $id_prov.'/'.$id_daerah.'/'.$id_tipe. '/' .$id_provinsi);
        }

        public function hapus($id_prov,$id_daerah,$id_tipe,$id_tangible, $id_provinsi)
        {
            $this->Tangible_model->hapusTangible($id_tangible);
            redirect (base_url()."tangible/index/". $id_prov.'/'.$id_daerah.'/'.$id_tipe. '/' .$id_provinsi);
        }

        public function updateTangible($id_prov,$id_daerah,$id_tipe,$id_tangible, $id_provinsi)
        {
            $data['judul']       = "Update Tangible";
            $data['id_prov']     = $id_prov;
            $data['id_daerah']   = $id_daerah;
            $data['id_tipe']     = $id_tipe;
            $data['id_tangible'] = $id_tangible;   
            $data['id_provinsi'] = $id_provinsi;   
            
            $data['post']        = $this->Tangible_model->getTangibleByIdUpdate($id_tangible);

            $this->load->view('templates/header',$data);
            $this->load->view('tangible/update',$data);
            $this->load->view('templates/footer');
        }

        public function prosesUpdatetangible($id_prov,$id_daerah,$id_tipe,$id_tangible, $id_provinsi)
        {
            $this->Tangible_model->updateTangible($id_tangible);
            redirect (base_url()."tangible/index/". $id_prov.'/'.$id_daerah.'/'.$id_tipe. '/' .$id_provinsi);
        }

}
