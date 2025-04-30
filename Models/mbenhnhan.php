<?php
 include_once('ketnoi.php');
 class mBenhNhan{
        public function xembenhnhantheotentk($tentk){
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "select * from benhnhan where tentk = '$tentk' and quanhe  LIKE 'bản thân' limit 1";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
<<<<<<< HEAD

        public function select_list_benhnhan(){
=======
        public function getBenhNhanByTenTK($tentk) {
>>>>>>> 0f71e08b867709d4b77268aafd787c6122c0405c
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
<<<<<<< HEAD
                $str = "select * from benhnhan";
=======
                $str = "select * from benhnhan where tentk = '$tentk'";
>>>>>>> 0f71e08b867709d4b77268aafd787c6122c0405c
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
<<<<<<< HEAD

        public function select_benhnhan_id($id){
=======
        public function getBenhNhanByID($id) {
>>>>>>> 0f71e08b867709d4b77268aafd787c6122c0405c
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if($con){
                $str = "select * from benhnhan where mabenhnhan = '$id'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            }else{
                return false; 
            }
        }
<<<<<<< HEAD
        
=======
        public function capnhatbenhnhan($mabenhnhan, $hotenbenhnhan, $ngaysinh, $gioitinh, $nghenghiep, $cccdbenhnhan,
                                $dantoc, $email, $sdtbenhnhan, $tinh, $quan, $xa, $sonha, $quanhe,
                                $tiensubenhtatcuagiadinh, $tiensubenhtatcuabenhnhan, $nhommau) {
            $p = new clsKetNoi();
            $con = $p->moketnoi();
            $con->set_charset('utf8');
            if ($con) {
                // Sử dụng dấu backtick để bao quanh tên cột
                $str = "UPDATE benhnhan 
                        SET hotenbenhnhan='$hotenbenhnhan', ngaysinh='$ngaysinh', gioitinh='$gioitinh', nghenghiep='$nghenghiep', 
                            cccdbenhnhan='$cccdbenhnhan', dantoc='$dantoc', email='$email', sdtbenhnhan='$sdtbenhnhan',
                            `tinh/thanhpho`='$tinh', `quan/huyen`='$quan', `xa/phuong`='$xa', sonha='$sonha', quanhe='$quanhe',
                            tiensubenhtatcuagiadinh='$tiensubenhtatcuagiadinh', tiensubenhtatcuabenhnhan='$tiensubenhtatcuabenhnhan', 
                            nhommau='$nhommau' 
                        WHERE mabenhnhan='$mabenhnhan'";
                $tbl = $con->query($str);
                $p->dongketnoi($con);
                return $tbl;
            } else {
                return false;
            }
        }

>>>>>>> 0f71e08b867709d4b77268aafd787c6122c0405c
    }
    
?>