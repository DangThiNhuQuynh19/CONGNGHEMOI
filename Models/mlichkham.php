<?php
class mLichKham {
    public function lichkham($ngay, $id, $gioHienTai = null) {
        $p = new clsKetNoi();
        $con = $p->moketnoi();
        $con->set_charset('utf8');
        if ($con) {
            $str = "";
            // Kiểm tra nếu ngày là hôm nay và có giờ hiện tại
            if ($ngay == date('Y-m-d') && $gioHienTai !== null) {
                // Lọc ca làm việc có giờ bắt đầu >= giờ hiện tại
                $str = "SELECT * FROM lichlamviec AS lv 
                        JOIN calamviec AS cv ON lv.macalamviec = cv.macalamviec
                        WHERE ngaylam = '$ngay' AND mabacsi = '$id' AND giobatdau >= '$gioHienTai'";
            } else {
                // Ngày lớn hơn hôm nay, hiển thị tất cả ca
                $str = "SELECT * FROM lichlamviec AS lv 
                        JOIN calamviec AS cv ON lv.macalamviec = cv.macalamviec
                        WHERE ngaylam = '$ngay' AND mabacsi = '$id'";
            }
            $tbl = $con->query($str);
            $p->dongketnoi($con);
            return $tbl;
        } else {
            return false;
        }
    }
    
    
    
    public function xemlich($id){
        $p = new clsKetNoi();
        $con = $p->moketnoi();
        $con->set_charset('utf8');
        if($con){
            $str = "select * from lichlamviec as lv join calamviec as cv 
            on cv.macalamviec = lv.macalamviec where cv.macalamviec='$id'";
            $tbl = $con->query($str);
            $p->dongketnoi($con);
            return $tbl;
        }else{
            return false; 
        }
    }
}

?>