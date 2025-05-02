<?php
include_once("Models/mhosobenhandientu.php");

class cHoSoBenhAnDienTu{
    public function getAllHSBADTOfTK($tentk) {
        $p = new mHoSoBenhAnDienTu();
        $tbl = $p->gethosotheotentk($tentk);
        if (!$tbl) {
            return -1;
        } else {
            if ($tbl->num_rows > 0) {
                return $tbl;
            } else {
                return 0;
            }
        }
    }
}
?>