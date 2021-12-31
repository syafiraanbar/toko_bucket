<?php

class Kategori extends CI_Controller{
    public function buket_bunga()
    {
        $data['buket_bunga'] = $this->model_kategori->data_buket_bunga()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('buket_bunga',$data);
        $this->load->view('templates/footer');
    }

    public function buket_uang()
    {
        $data['buket_uang'] = $this->model_kategori->data_buket_uang()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('buket_uang',$data);
        $this->load->view('templates/footer');
    }

    public function buket_makanan()
    {
        $data['buket_makanan'] = $this->model_kategori->data_buket_makanan()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('buket_makanan',$data);
        $this->load->view('templates/footer');
    }

    public function hampers()
    {
        $data['hampers'] = $this->model_kategori->data_hampers()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('hampers',$data);
        $this->load->view('templates/footer');
    }

    public function cake_uang ()
    {
        $data['cake_uang'] = $this->model_kategori->data_cake_uang()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('cake_uang',$data);
        $this->load->view('templates/footer');
    }
}