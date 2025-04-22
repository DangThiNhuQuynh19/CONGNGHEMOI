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
    public function getBacSiById($id){
        $p = new mBacSi();
        $tbl = $p->chitietbacsi($id);
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
    public function getLichLamViecBacSiById($id){
        $p = new mBacSi();
        $tbl = $p->lichlamviectheobacsi($id);
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
    public function getLichTheoNgay($mabacsi, $ngay){
        $p = new mBacSi();
        $tbl = $p->getCaLamViecTheoNgay($mabacsi, $ngay);
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