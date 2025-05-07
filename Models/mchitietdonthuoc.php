<?php
    include_once('ketnoi.php');
    class mChiTietDonThuoc{
        public function insert_chitietdonthuoc($madonthuoc,$mathuoc,$lieudung,$thoigianuong,$songayuong){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "insert into chitietdonthuoc(madonthuoc,mathuoc,lieudung,thoigianuong,songayuong) 
                        values('$madonthuoc','$mathuoc','$lieudung','$thoigianuong','$songayuong')";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
    }
?>