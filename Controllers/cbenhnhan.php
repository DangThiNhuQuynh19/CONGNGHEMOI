<?php
include_once("Models/mbenhnhan.php");

class cBenhNhan{
    public function getidbenhnhan($id){
        $p = new mBenhNhan();
        $tbl = $p->kiemtraidbenhnhan($id);
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