<?php
include_once(__DIR__ . "/../model/mbenhnhan.php");

class cBenhNhan{
    public function getBenhNhanByID($id){
        $p = new mBenhNhan();
        $tbl = $p->layThongTinBenhNhan($id);
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