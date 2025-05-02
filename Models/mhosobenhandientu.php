<?php
 include_once('ketnoi.php');
 class mHoSoBenhAnDienTu{
        public function gethosotheotentk($tentk){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "SELECT * from hosobenhan hs
                JOIN benhnhan bn ON hs.mabenhnhan = bn.mabenhnhan
                JOIN bacsi bs ON hs.mabacsi = bs.mabacsi
                JOIN chuyenkhoa ck ON bs.machuyenkhoa = ck.machuyenkhoa
                JOIN lichsucapnhathsba ls ON hs.mahoso = ls.mahoso
                JOIN chitiethoso ct ON hs.mahoso = ct.mahoso
                JOIN donthuoc dt ON hs.mahoso = dt.mahoso
                JOIN chitietdonthuoc ctdt ON dt.madonthuoc = ctdt.madonthuoc
                JOIN thuoc t ON ctdt.mathuoc = t.mathuoc
                WHERE bn.tentk = '$tentk'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
    }
?>