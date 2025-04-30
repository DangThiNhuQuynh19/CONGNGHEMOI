<?php
 include_once('ketnoi.php');
 class mPhieuKhamBenh{
        public function insertphieukham($maphieukb,$ngaykham,$macalamviec,$mabacsi,$mabenhnhan,$tongtien,$trangthai){
            $p = new clsketnoi();
            $truyvan = "INSERT INTO phieukhambenh(maphieukb,ngaykham,macalamviec,mabacsi,mabenhnhan,tongtien,
                            trangthai) VALUES ('$maphieukb','$ngaykham','$macalamviec','$mabacsi','$mabenhnhan',
                            '$tongtien','$trangthai')";
            $con = $p->moketnoi();
            $kq = mysqli_query($con, $truyvan);
            $p->dongketnoi($con);
            return $kq;
        }
        public function phieukhambenhcuabn($idbn){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "select * from phieukhambenh where mabenhnhan = '$idbn'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
        public function kiemTraTrungLich($mabenhnhan, $ngaykham, $macalamviec) {
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "SELECT * FROM phieukhambenh 
                    WHERE mabenhnhan = '$mabenhnhan' 
                      AND ngaykham = '$ngaykham' 
                      AND macalamviec = '$macalamviec'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }   
    }
?>