<?php

class Model_kategori extends CI_Model{
    public function data_buket_bunga(){
        return $this->db->get_where("tb_barang",array('kategori' => 'buket bunga'));
    }

    public function data_buket_uang(){
        return $this->db->get_where("tb_barang",array('kategori' => 'buket uang'));
    }

    public function data_buket_makanan(){
        return $this->db->get_where("tb_barang",array('kategori' => 'buket makanan'));
    }

    public function data_hampers(){
        return $this->db->get_where("tb_barang",array('kategori' => 'hampers'));
    }

    public function data_cake_uang(){
        return $this->db->get_where("tb_barang",array('kategori' => 'cake uang'));
    }
}