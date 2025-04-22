<?php
 include_once('ketnoi.php');
 class mBenhNhan{
    public function layThongTinBenhNhan($mabenhnhan){
        $p = new clsKetNoi();
        $con = $p->moketnoi();
        $con->set_charset('utf8');
        if($con){
            $str = "SELECT * FROM benhnhan WHERE mabenhnhan = '$mabenhnhan'";
            $tbl = $con->query($str);
            $p->dongketnoi($con);
            return $tbl;
        }else{
            return false; 
        }
    }
    }
?>