<?php
include_once("Models/mlichxetnghiem.php");

class cLichXetNghiem{
    public function get_lichxetnghiem_mabacsi($mabacsi){
        $p = new mLichXetNghiem();
        $tbl = $p->select_lichxetnghiem_mabacsi($mabacsi);
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
    
    public function get_lichxetnghiem_tukhoa($tukhoa, $machuyenkhoa, $trangthai,$mabacsi){
        $p = new mLichXetNghiem();
        $tbl = $p->timkiem_lichxetnghiem($tukhoa , $machuyenkhoa , $trangthai, $mabacsi);
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

    public function get_lichxetnghiem_malichxetnghiem($mabacsi,$malichxetnghiem){
        $p = new mLichXetNghiem();
        $tbl = $p->select_lichxetnghiem_malichxetnghiem($mabacsi,$malichxetnghiem);
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