<?php
include("Controllers/chosobenhandientu.php");
$p = new cHoSoBenhAnDienTu();

if (isset($_SESSION['tentk'])) {
    $tentk = $_SESSION['tentk'];
    $tbl = $p->getAllHSBADTOfTK($tentk);

    if ($tbl == -1) {
        echo "Lỗi kết nối cơ sở dữ liệu!";
    } elseif ($tbl == 0) {
        echo "Không có hồ sơ bệnh án!";
    } else {
        // Lấy tất cả hồ sơ thành mảng
        $rows = [];
        while ($row = $tbl->fetch_assoc()) {
            $rows[] = $row;
        }

        $bn = $rows[0];
?>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

        <div class="container mt-4">
            <!-- Thông tin bệnh nhân -->
            <div class="card mb-4 shadow">
                <div class="card-body">
                    <h4 class="card-title">🧑‍⚕️ Thông tin bệnh nhân</h4>
                    <p><strong>Họ tên:</strong> <?= $bn['hotenbenhnhan'] ?></p>
                    <p><strong>Giới tính:</strong> <?= $bn['gioitinh'] ?></p>
                    <p><strong>Ngày sinh:</strong> <?= $bn['ngaysinh'] ?></p>
                    <p><strong>Số điện thoại:</strong> <?= $bn['sdtbenhnhan'] ?></p>
                </div>
            </div>

            <!-- Lịch sử khám -->
            <h4>📋 Lịch sử hồ sơ bệnh án</h4>
            <?php foreach ($rows as $row): ?>
                <div class="card mb-3 shadow-sm">
                    <div class="card-body d-flex justify-content-between align-items-center">
                        <div>
                            <h5 class="card-title text-primary"><?= $row['capbac'] ?> - <?= strtoupper($row['hoten']) ?></h5>
                            <p class="mb-1"><strong>Chuyên khoa:</strong> <?= strtoupper($row['tenchuyenkhoa']) ?></p>
                            <p class="mb-1"><strong>Ngày lập hồ sơ:</strong> <?= $row['ngaytao'] ?></p>
                            <p class="mb-1"><strong>Chẩn đoán:</strong> <?= $row['chandoan'] ?></p>
                        </div>
                        <div class="text-end">
                            <img src="Assets/img/<?= $row['imgbs'] ?>" alt="ảnh bác sĩ" width="100" class="rounded-circle mb-2">
                            <br>
                            <a href="index.php?action=xemchitiethsba&id=<?= $row['mahoso'] ?>" class="btn btn-outline-primary">Xem chi tiết</a>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
<?php
    }
} else {
    echo "Bạn chưa đăng nhập.";
}
?>
