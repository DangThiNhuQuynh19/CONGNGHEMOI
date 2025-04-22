<?php
include_once(__DIR__ . "/../../controller/cbacsi.php");

if (!isset($_GET['mabacsi']) || !isset($_GET['ngay'])) {
    echo json_encode(['status' => 'error', 'message' => 'Thiếu dữ liệu']);
    exit;
}

$mabacsi = $_GET['mabacsi'];
$ngay = $_GET['ngay'];


$c = new cBacSi();
$dsCa = $c->getLichTheoNgay($mabacsi, $ngay);

if ($dsCa === -1) {
    echo json_encode(['status' => 'error', 'message' => 'Lỗi kết nối']);
} elseif ($dsCa === 0) {
    echo json_encode(['status' => 'empty', 'message' => 'Không có ca làm việc trong ngày này']);
} else {
    $data = [];
    while ($row = $dsCa->fetch_assoc()) {
        $data[] = [
            'giobatdau' => date('H:i', strtotime($row['giobatdau'])),
            'gioketthuc' => date('H:i', strtotime($row['gioketthuc'])),
            'trangthai' => $row['trangthai']
        ];
    }
    echo json_encode(['status' => 'success', 'data' => $data]);
}
?>
