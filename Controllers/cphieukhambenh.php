<?php
include_once("Models/mphieukhambenh.php");

class cPhieuKhamBenh {
    public function insertphieukham($maphieukb,$ngaykham,$macalamviec,$mabacsi,$mabenhnhan,$tongtien,$trangthai){
        $p = new mPhieuKhamBenh();
        $kq = $p -> insertphieukham($maphieukb,$ngaykham,$macalamviec,$mabacsi,$mabenhnhan,$tongtien,$trangthai);
        if($kq){
            return $kq;
        } else {
            return false;
        }
    }
    public function getAllPhieuKhamBenhOfBN($idbn){
        $p = new mPhieuKhamBenh();
        $tbl = $p->phieukhambenhcuabn($idbn);
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
    public function kiemTraTrungLich($mabenhnhan, $ngaykham, $macalamviec) {
        $model = new mPhieukhambenh();
        $result = $model->kiemTraTrungLich($mabenhnhan, $ngaykham, $macalamviec);
        
        if ($result && $result->num_rows > 0) {
            return true; // Đã có lịch trùng
        }
        return false; // Không có lịch trùng
    }

}
?>
