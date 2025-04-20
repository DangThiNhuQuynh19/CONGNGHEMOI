<?php
include_once(__DIR__ . "/../model/mchuyenkhoa.php");

class cChuyenKhoa{
    public function getAllChuyenKhoa(){
        $p = new mChuyenKhoa();
        $tbl = $p->dschuyenkhoa();
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