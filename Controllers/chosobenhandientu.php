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
    public function getChiTietHSBADTOfTK($id) {
        $p = new mHoSoBenhAnDienTu();
        $tbl = $p->getchitiethosotheotentk($id);
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
        // Lấy thông tin đơn thuốc của bệnh nhân theo hồ sơ
    public function getDonThuocByIDHS($id) {
        $p = new mHoSoBenhAnDienTu();
        $tbl = $p->getdonthuoctheohoso($id);
        if (!$tbl) {
            return -1; 
        } else {
            if ($tbl->num_rows > 0) {
                $data = [];
                while ($row = $tbl->fetch_assoc()) {
                    $data[] = $row;
                }
                return $data;
            } else {
                return 0; 
            }
        }
    }

    // Lấy thông tin xét nghiệm của bệnh nhân theo hồ sơ
    public function getXetNghiemByIDHS($id) {
        $p = new mHoSoBenhAnDienTu();
        $tbl = $p->getxetnghiemtheohoso($id);
        if (!$tbl) {
            return -1; 
        } else {
            if ($tbl->num_rows > 0) {
                $data = [];
                while ($row = $tbl->fetch_assoc()) {
                    $data[] = $row;
                }
                return $data;
            } else {
                return 0; 
            }
        }
    }

}
?>