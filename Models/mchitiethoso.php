<?php
    include_once('ketnoi.php');
    class mChiTietHoSo{
        public function insert_chitiethoso($mahoso,$mabacsi,$trieuchung,$chandoan,$huongdieutri,$madonthuoc,$ketluan){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "insert into chitiethoso(mahoso,mabacsi,ngaykham,trieuchungbandau,chandoan,huongdieutri,madonthuoc,ketluan) 
                values('$mahoso','$mabacsi',CURDATE(),'$trieuchung','$chandoan','$huongdieutri','$madonthuoc','$ketluan')";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }

    }
?>