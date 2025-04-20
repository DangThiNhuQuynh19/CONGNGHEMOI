<?php
include_once(__DIR__ . "/../model/mbacsi.php");

class cBacSi{
    public function getAllBacSi(){
        $p = new mBacSi();
        $tbl = $p->dsbacsi();
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