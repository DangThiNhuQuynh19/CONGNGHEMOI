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
                $str = "SELECT *
                    FROM phieukhambenh pk 
                    JOIN bacsi bs ON pk.mabacsi = bs.mabacsi 
                    JOIN calamviec cv ON pk.macalamviec = cv.macalamviec
                    WHERE pk.mabenhnhan = '$idbn'";
        
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
        public function phieukhambenhcuataikhoan($tentk, $status = null) {
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
        
            if ($con) {
                $sql = "SELECT pk.maphieukb, pk.ngaykham, pk.giobatdau, pk.trangthai, pk.gioketthuc, bs.hoten AS hotenbacsi,
                        bn.hotenbenhnhan, ck.tenchuyenkhoa
                        FROM phieukhambenh pk
                        JOIN bacsi bs ON pk.mabacsi = bs.mabacsi
                        JOIN benhnhan bn ON pk.mabenhnhan = bn.mabenhnhan
                        JOIN chuyenkhoa ck ON bs.machuyenkhoa = ck.machuyenkhoa
                        WHERE bn.tentk = '$tentk'";

                if ($status) {
                    $sql .= " AND pk.trangthai = '$status'";
                }
        
                $tbl = $con->query($sql);
        
                $p->dongketnoi($con);
                return $tbl;
            } else {
                return false;
            }
        }
        public function huyPhieuKhamBenh($maphieukb) {
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "update phieukhambenh set trangthai='đã hủy' WHERE maphieukb = '$maphieukb'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }   
        public function updatePhieuKhamBenh($maphieukb) {
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "update phieukhambenh set trangthai='đã khám' WHERE maphieukb = '$maphieukb'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }   
        public function phieukhamtheoidpk($maphieukb) {
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "select * FROM phieukhambenh WHERE maphieukb = '$maphieukb' ";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }   
    }
?>