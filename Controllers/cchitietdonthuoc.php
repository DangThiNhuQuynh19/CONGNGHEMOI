<?php
    include_once("Models/mchitietdonthuoc.php");
    class cChiTietDonThuoc{
        public function create_chitietdonthuoc($madonthuoc,$mathuoc,$lieudung,$thoigianuong,$songayuong) {
            $p = new mChiTietDonThuoc();
            $tbl = $p->insert_chitietdonthuoc($madonthuoc,$mathuoc,$lieudung,$thoigianuong,$songayuong);
            if (!$tbl) {
                return -1;
            } else {
                return 0;
            }
            
        }
    }
?>