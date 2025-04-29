<?php
include_once("Models/mbenhnhan.php");

class cBenhNhan{
    public function getbenhnhanbytk($tentk){
        $p = new mBenhNhan();
        $tbl = $p->xembenhnhantheotentk($tentk);
        if (!$tbl) {
            return -1; 
        } else {
            if ($tbl->num_rows > 0) {
                $row = $tbl->fetch_assoc();  
                return $row;                 
            } else {
                return 0; 
            }
        }
    }

    public function getdanhsachbenhnhan(){
        $p = new mBenhNhan();
        $tbl = $p->select_list_benhnhan();
        $list = array();
        if (!$tbl) {
            return -1; 
        } else {
            if ($tbl->num_rows > 0) { 
                while($r=$tbl->fetch_assoc()){
                    $list[]= $r;
                }
                return $list ;                 
            } else {
                return 0; 
            }
        }
    }

    public function getbenhnhanbyid($id){
        $p = new mBenhNhan();
        $tbl = $p->select_benhnhan_id($id);
        if (!$tbl) {
            return -1; 
        } else {
            if ($tbl->num_rows > 0) {
                return $tbl->fetch_assoc();                  
            } else {
                return 0; 
            }
        }
    }

}
?>