<?php
 include_once('ketnoi.php');
 class mLichXetNghiem{
        public function select_lichxetnghiem_mabacsi($mabacsi){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "select * from lichxetnghiem as l join benhnhan as b on l.mabenhnhan=b.mabenhnhan
                join loaixetnghiem as loai on l.maloaixetnghiem=loai.maloaixetnghiem 
                join chuyenkhoa as c on loai.machuyenkhoa=c.machuyenkhoa
                join khunggioxetnghiem as k on k.makhunggioxetnghiem = l.makhunggio
                where mabacsi='$mabacsi' ORDER BY l.malichxetnghiem DESC ";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }

        public function select_lichxetnghiem_mabenhnhan($mabenhnhan){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "select * from lichxetnghiem where mabenhnhan='$mabenhnhan' ORDER BY malichxetnghiem DESC";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }

        public function timkiem_lichxetnghiem($tukhoa, $machuyenkhoa, $trangthai,$mabacsi) {
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
        
            if ($con) {
                $sql = "SELECT * 
                        FROM lichxetnghiem AS l
                        JOIN bacsi AS bs ON l.mabacsi= bs.mabacsi
                        JOIN benhnhan AS b ON l.mabenhnhan = b.mabenhnhan
                        JOIN loaixetnghiem AS loai ON l.maloaixetnghiem = loai.maloaixetnghiem
                        JOIN chuyenkhoa AS c ON loai.machuyenkhoa = c.machuyenkhoa
                        JOIN khunggioxetnghiem AS k ON k.makhunggioxetnghiem = l.makhunggio
                        WHERE l.mabacsi = '$mabacsi'";
        
                if (!empty($tukhoa)) {
                    $sql .= " AND (b.mabenhnhan LIKE '%$tukhoa%' OR b.hotenbenhnhan LIKE '%$tukhoa%')";
                }
        
                if (!empty($machuyenkhoa)) {
                    $sql .= " AND c.machuyenkhoa = '$machuyenkhoa'";
                }
        
                if (!empty($trangthai)) {
                    $sql .= " AND l.trangthailichxetnghiem = '$trangthai'";
                }
        
                $result = $con->query($sql);
                $p->dongketnoi($con);
                return $result;
            } else {
                return false;
            }
        }
        
        public function select_lichxetnghiem_malichxetnghiem($mabacsi, $malichxetnghiem){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "SELECT * 
                FROM lichxetnghiem AS l
                JOIN benhnhan AS b ON l.mabenhnhan = b.mabenhnhan
                JOIN loaixetnghiem AS loai ON l.maloaixetnghiem = loai.maloaixetnghiem
                JOIN chuyenkhoa AS c ON loai.machuyenkhoa = c.machuyenkhoa
                JOIN khunggioxetnghiem AS k ON k.makhunggioxetnghiem = l.makhunggio
                WHERE l.mabacsi = '$mabacsi' and l.malichxetnghiem='$malichxetnghiem'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
        
    }
?>