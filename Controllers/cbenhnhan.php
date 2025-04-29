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
}
?>