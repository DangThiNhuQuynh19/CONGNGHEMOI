<?php
 include_once('ketnoi.php');
 class mHoSoBenhAnDienTu{
        public function gethosotheotentk($tentk){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "SELECT * FROM hosobenhan hs 
                join benhnhan bn on hs.mabenhnhan=bn.mabenhnhan 
                join chitiethoso ct on hs.mahoso = ct.mahoso 
                join bacsi bs on ct.mabacsi = bs.mabacsi 
                join chuyenkhoa ck on bs.machuyenkhoa = ck.machuyenkhoa 
                join donthuoc dt on ct.madonthuoc = dt.madonthuoc 
                where bn.tentk= '$tentk'
                order by hs.mahoso";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
        public function getchitiethosotheotentk($id){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "SELECT * FROM hosobenhan hs
                  join chitiethoso ct on hs.mahoso = ct.mahoso  
                join benhnhan bn on hs.mabenhnhan=bn.mabenhnhan 
                join bacsi bs on ct.mabacsi = bs.mabacsi 
                join chuyenkhoa ck on bs.machuyenkhoa = ck.machuyenkhoa  
                join donthuoc dt on ct.madonthuoc = dt.madonthuoc 
                join chitietdonthuoc ctdt on dt.madonthuoc = ctdt.madonthuoc
                join thuoc t on t.mathuoc = ctdt.mathuoc
                join lichxetnghiem xn on bn.mabenhnhan = xn.mabenhnhan
                join loaixetnghiem lxn on xn.maloaixetnghiem = lxn.maloaixetnghiem
                join khunggioxetnghiem kg on xn.makhunggio=kg.makhunggioxetnghiem
                join ketquaxetnghiem kq on xn.malichxetnghiem = kq.malichxetnghiem
                where hs.mahoso = '$id'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
        public function getchitiethosotheohoso($id){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "SELECT * FROM hosobenhan hs 
                join chitiethoso ct on hs.mahoso = ct.mahoso 
                where hs.mahoso = '$id'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
        public function getdonthuoctheohoso($id){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "SELECT * FROM  donthuoc dt 
                join chitiethoso ct on ct.machitiethoso = dt.machitiethoso
                join chitietdonthuoc ctdt on dt.madonthuoc = ctdt.madonthuoc
                join thuoc t on t.mathuoc = ctdt.mathuoc
                where ct.machitiethoso = '$id'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
        public function getxetnghiemtheohoso($id){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "SELECT * FROM  lichxetnghiem xn 
                join chitiethoso ct on ct.mahoso = xn.mahoso
                join loaixetnghiem lxn on xn.maloaixetnghiem = lxn.maloaixetnghiem
                join khunggioxetnghiem kg on xn.makhunggio=kg.makhunggioxetnghiem
                join ketquaxetnghiem kq on xn.malichxetnghiem = kq.malichxetnghiem
                where ct.machitiethoso = '$id'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
    }
?>