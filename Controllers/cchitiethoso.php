<?php
    include_once("Models/mchitiethoso.php");
    class cChiTietHoSo{
        public function create_chitiethoso($mahoso,$mabacsi,$trieuchung,$chandoan,$huongdieutri,$madonthuoc,$ketluan) {
            $p = new mChiTietHoSo();
            $tbl = $p->insert_chitiethoso($mahoso,$mabacsi,$trieuchung,$chandoan,$huongdieutri,$madonthuoc,$ketluan);
            if (!$tbl) {
                return -1;
            } else {
                return 0;
            }
        }
    }
?>
