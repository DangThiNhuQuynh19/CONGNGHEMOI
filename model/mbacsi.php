<?php
 include_once('ketnoi.php');
 class mBacSi{
        public function dsbacsi(){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "select * from bacsi join chuyenkhoa on bacsi.machuyenkhoa = chuyenkhoa.machuyenkhoa";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
        public function chitietbacsi($id){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "select * from bacsi join chuyenkhoa on bacsi.machuyenkhoa = chuyenkhoa.machuyenkhoa where bacsi.mabacsi='$id'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
        public function lichlamviectheobacsi($id){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "SELECT * FROM lichlamviec as l 
                        JOIN calamviec as c ON l.macalamviec = c.macalamviec 
                        WHERE mabacsi = '$id'
                        AND CONCAT(ngaylam, ' ', giobatdau) >= NOW()
                        ORDER BY ngaylam ASC, giobatdau ASC";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
        public function getCaLamViecTheoNgay($mabacsi, $ngay){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if ($con) {
                $sql = "SELECT l.*, c.giobatdau, c.gioketthuc 
                        FROM lichlamviec AS l
                        JOIN calamviec AS c ON l.macalamviec = c.macalamviec
                        WHERE l.mabacsi = '$mabacsi' AND l.ngaylam = '$ngay'
                        ORDER BY c.giobatdau ASC";
                $kq = $con->query($sql);
                $p->dongketnoi($con);
                return $kq;
            } else {
                return false;
            }
        }
        
    }
?>