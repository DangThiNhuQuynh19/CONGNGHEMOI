<?php
include_once("Models/mlichkham.php");

class cLichKham {
    public function getLichKhamOfBacSiByNgay($ngay, $id, $gioHienTai = null) {
        $p = new mLichKham();
        $tbl = $p->lichkham($ngay, $id, $gioHienTai);
    
        if (!$tbl) {
            return false;
        } else {
            return ($tbl->num_rows > 0) ? $tbl : false;
        }
    }
    
    
    public function getlich($id){
        $p = new mLichKham();
        $tbl = $p->xemlich($id);
        if(!$tbl){
            return -1;
        }else{
            if($tbl->num_rows > 0){
                return $tbl;
            }else{
                return 0;
            }
        }
    }
}
?>
