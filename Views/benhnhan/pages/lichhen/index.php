<?php
session_start();
date_default_timezone_set('Asia/Ho_Chi_Minh');
include_once('Controllers/cphieukhambenh.php');

if (!isset($_SESSION['user']) || !isset($_SESSION['user']['tentk'])) {
    echo "<p>Bạn chưa đăng nhập hoặc thiếu thông tin tài khoản.</p>";
    exit;
}

$tentk = $_SESSION['user']['tentk'];
$pPhieu = new cPhieuKhamBenh();
$filter = $_GET['filter'] ?? null; // Lọc theo trạng thái
$currentDate = date('Y-m-d');

// Lấy danh sách phiếu khám theo bộ lọc
if ($filter === 'đã hủy') {
    $phieus = $pPhieu->getAllPhieuKhamBenhOfTK($tentk, $filter);
} elseif ($filter === 'đã khám') {
    $phieus = $pPhieu->getAllPhieuKhamBenhOfTK($tentk, $filter);
} elseif($filter === 'chưa khám') {
    $phieus = $pPhieu->getAllPhieuKhamBenhOfTK($tentk, $filter);
}else{
    $phieus = $pPhieu->getAllPhieuKhamBenhOfTK($tentk, $filter);
}

// Xử lý hủy lịch hẹn
if (isset($_GET['cancel_id'])) {
    $maphieukb = $_GET['cancel_id'];
    $phieu = $pPhieu->getPhieuKhamBenhOfIDPK($maphieukb);
    if ($phieu) {
        $ngaykham = $phieu['ngaykham'];
        if ($ngaykham == $currentDate) {
            echo "<script>alert('Không thể hủy lịch hẹn vì sắp tới giờ khám.');</script>";
        } else {
            $malichlamviec = $phieu['malichlamviec'];
            $result = $pPhieu->cancelPhieuKhamBenh($maphieukb);
            if ($result) {
                include_once('Controllers/clichlamviec.php');
                $pLichLamViec = new cLichLamViec();
                $pLichLamViec->updatelichlamviectrong($malichlamviec);
                echo "<script>alert('Lịch hẹn đã được hủy thành công.'); window.location.href='?action=lichhen';</script>";
            } else {
                echo "<script>alert('Lỗi khi hủy lịch hẹn. Vui lòng thử lại sau.');</script>";
            }
        }
    } else {
        echo "<script>alert('Không tìm thấy phiếu khám với mã này.');</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Lịch hẹn khám bệnh</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            padding-top: 130px;
            background-color: #f9f6ff;
        }
        h2 {
            color: #6c3483;
            text-align: center;
            margin-bottom: 20px;
        }
        form {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 90%;
            margin: 0 auto;
            background-color: #fff;
            border-collapse: collapse;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(108, 52, 131, 0.2);
        }
        th, td {
            padding: 12px 16px;
            border-bottom: 1px solid #eee;
            text-align: center;
        }
        th {
            background-color: #3c1561;
            color: white;
            text-transform: uppercase;
        }
        tr:nth-child(even) {
            background-color: #f3e9fa;
        }
        tr:hover {
            background-color: #ede0f0;
        }
        p {
            text-align: center;
            font-size: 18px;
            color: #c0392b;
        }
        .muted-text {
            color: #999;
            font-style: italic;
        }
    </style>
</head>
<body>

<h2>Lịch Hẹn Khám Bệnh</h2>

<form method="get">
    <input type="hidden" name="action" value="lichhen">
    <label>
        <input type="radio" name="filter" value="chưa khám" <?= ($filter === 'upcoming') ? 'checked' : '' ?>>
        Chưa khám
    </label>
    <label style="margin-left: 20px;">
        <input type="radio" name="filter" value="đã khám" <?= ($filter === 'completed') ? 'checked' : '' ?>>
        Đã khám
    </label>
    <label style="margin-left: 20px;">
        <input type="radio" name="filter" value="đã hủy" <?= ($filter === 'cancelled') ? 'checked' : '' ?>>
        Đã hủy
    </label>
    <button type="submit" class="btn btn-primary btn-sm" style="margin-left: 20px;">Lọc</button>
</form>

<?php if ($phieus === -1): ?>
    <p>Lỗi kết nối dữ liệu.</p>
<?php elseif ($phieus === 0): ?>
    <p>Không có lịch hẹn nào được tìm thấy.</p>
<?php else: ?>
    <table>
        <thead>
        <tr>
            <th>Mã Lịch Hẹn</th>
            <th>Bệnh Nhân</th>
            <th>Ngày Khám</th>
            <th>Thời Gian</th>
            <th>Khoa</th>
            <th>Bác Sĩ</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <?php while ($row = $phieus->fetch_assoc()): ?>
            <?php
            $trangthai = $row['trangthai'] ?? '';
            ?>
            <tr>
                <td><?= htmlspecialchars($row['maphieukb']) ?></td>
                <td><?= htmlspecialchars($row['hotenbenhnhan']) ?></td>
                <td><?= htmlspecialchars($row['ngaykham']) ?></td>
                <td><?= htmlspecialchars($row['giobatdau']) . ' - ' . htmlspecialchars($row['gioketthuc']) ?></td>
                <td><?= htmlspecialchars($row['tenchuyenkhoa']) ?></td>
                <td><?= htmlspecialchars($row['hotenbacsi']) ?></td>
                <td>
                    <?php
                    if ($trangthai === 'đã hủy') {
                        echo '<span class="muted-text">Đã hủy</span>';
                    } elseif ($trangthai === 'đã khám') {
                        echo '<span class="muted-text">Đã khám</span>';
                    } else {
                        echo '<a href="?action=lichhen&cancel_id=' . $row['maphieukb'] . '" class="btn btn-danger btn-sm"
                                onclick="return confirm(\'Bạn có chắc chắn muốn hủy lịch hẹn này?\');">Hủy lịch hẹn</a>';
                    }
                    ?>
                </td>
            </tr>
        <?php endwhile; ?>
        </tbody>
    </table>
<?php endif; ?>

</body>
</html>