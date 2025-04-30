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
    public function getAllBenhNhanByTK($tentk) {
        $m = new mBenhNhan();
        $tbl = $m->getBenhNhanByTenTK($tentk);

        $ds = [];
        if ($tbl && $tbl->num_rows > 0) {
            while ($row = $tbl->fetch_assoc()) {
                $ds[] = $row;
            }
        }
        return $ds;
    }
    public function getbenhnhanbyid($id){
        $p = new mBenhNhan();
        $tbl = $p->getBenhNhanByID($id);
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
    public function updateBenhNhan($mabenhnhan,$hotenbenhnhan,$ngaysinh,$gioitinh,$nghenghiep,$cccdbenhnhan,
                                    $dantoc,$email,$sdtbenhnhan,$tinh,$quan,$xa,$sonha,$quanhe,
                                    $tiensubenhtatcuagiadinh,$tiensubenhtatcuabenhnhan,$nhommau) {
        $p = new mBenhNhan();
        $kq = $p->capnhatbenhnhan($mabenhnhan,$hotenbenhnhan,$ngaysinh,$gioitinh,$nghenghiep,$cccdbenhnhan,
                                    $dantoc,$email,$sdtbenhnhan,$tinh,$quan,$xa,$sonha,$quanhe,
                                    $tiensubenhtatcuagiadinh,$tiensubenhtatcuabenhnhan,$nhommau);
        if ($kq) { 
            return true;
        } else {
            return false;
        }
    }


    public function get_list_benhnhan(){
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

    public function get_benhnhan_id($id){
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