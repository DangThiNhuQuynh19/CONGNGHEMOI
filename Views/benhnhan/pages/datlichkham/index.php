<?php
// Include các file controller
include_once('Controllers/cbacsi.php');
include_once('Controllers/clichkham.php');

// Lấy tham số từ URL
$idbs = isset($_GET['idbs']) ? $_GET['idbs'] : null;
$ngay = isset($_GET['ngay']) ? $_GET['ngay'] : null;
$ca = isset($_GET['ca']) ? $_GET['ca'] : null;

if ($idbs && $ngay && $ca) {
    // Lấy thông tin bác sĩ từ mã bác sĩ
    $pBacSi = new cBacSi();
    $tblBacSi = $pBacSi->getBacSiById($idbs);

    // Check if the result is valid (mysqli_result should not be used directly as an int)
    if ($tblBacSi === false) {
        echo "Lỗi kết nối cơ sở dữ liệu.";
    } elseif ($tblBacSi->num_rows == 0) {
        echo "Không tìm thấy thông tin bác sĩ.";
    } else {
        // Fetch data using fetch_assoc() from the result set
        $bacSi = $tblBacSi->fetch_assoc();
        if ($bacSi) {
            $hoten = $bacSi['hoten'];
            $capbac = $bacSi['capbac'];
            $chuyenKhoa = $bacSi['tenchuyenkhoa'];
            $gia = $bacSi['giakham'];
            $anh = $bacSi['imgbs'];
        } else {
            echo "Không có thông tin bác sĩ.";
        }
    }

    // Lấy thông tin lịch làm việc từ mã ca
    $pLichKham = new cLichKham();
    $tblLich = $pLichKham->getlich($ca);

    // Check if the result is valid (mysqli_result should not be used directly as an int)
    if ($tblLich === false) {
        echo "Lỗi kết nối cơ sở dữ liệu.";
    } elseif ($tblLich->num_rows == 0) {
        echo "Không tìm thấy thông tin ca làm việc.";
    } else {
        // Fetch data using fetch_assoc() from the result set
        $lich = $tblLich->fetch_assoc();
        if ($lich) {
            $giobatdau = $lich['giobatdau'];
            $gioketthuc = $lich['gioketthuc'];
        } else {
            echo "Không có thông tin lịch làm việc.";
        }
    }
} else {
    echo "Thiếu tham số trong URL.";
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Đặt Lịch Khám Online</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    :root {
      --custom-purple: rgb(85, 45, 125);
      --custom-purple-dark: rgb(70, 35, 110);
      --input-border: #ced4da;
      --input-focus: var(--custom-purple);
    }

    body {
      background-color: #f4f6f9;
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
      margin-top: 100px;
    }

    h2 {
      color: var(--custom-purple);
      font-weight: 600;
    }

    label {
      font-weight: 500;
      margin-bottom: 4px;
    }

    .form-control,
    .form-select {
      padding: 10px 12px;
    }

    .btn-primary {
      background-color: var(--custom-purple);
      border-color: var(--custom-purple);
      border-radius: 50px;
      font-weight: 500;
      font-size: 16px;
      transition: 0.3s;
    }

    .btn-primary:hover {
      background-color: var(--custom-purple-dark);
      border-color: var(--custom-purple-dark);
    }

    #thanNhanSection {
      border: 2px dashed var(--custom-purple);
      border-radius: 12px;
      background-color: #fdf9ff;
      padding: 20px;
    }

    #thanNhanSection h5 {
      font-weight: 600;
      margin-bottom: 15px;
    }

    .container {
      max-width: 950px;
      background-color: #ffffff;
      padding: 35px 30px;
      border-radius: 20px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.05);
    }

    .text-center button {
      box-shadow: 0 4px 12px rgba(85, 45, 125, 0.3);
    }

    .card {
      background-color: #ffffff;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      margin-bottom: 30px;
    }

    .card-body {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 20px;
    }

    .doctor-info {
      flex: 1;
    }

    .doctor-image {
      width: 130px;
      height: 130px;
    }

    .doctor-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      border-radius: 50%;
    }

    .card-title {
      font-size: 1.5rem;
      color: var(--custom-purple);
      font-weight: 600;
    }

    .card p {
      font-size: 1rem;
      color: #555;
      margin-bottom: 10px;
    }

    .card .card-body p {
      margin-bottom: 15px;
    }

    .card .card-body p:last-child {
      margin-bottom: 0;
    }

    .card-body .card-title,
    .card-body p {
      padding-left: 10px;
      padding-right: 10px;
    }

    .card-body {
      background-color: #f9f9f9;
      border-radius: 10px;
    }
  </style>
</head>
<body>
<?php if ($idbs && $ngay && $ca): ?>
  <div class="container text-center">
    <div class="card">
      <div class="card-body d-flex justify-content-center align-items-center">
        <div class="doctor-info text-start">
          <h5 class="card-title"><?php echo htmlspecialchars($capbac); ?> - <?php echo htmlspecialchars($hoten); ?></h5>
          <p><strong>Chuyên khoa:</strong> <?php echo htmlspecialchars($chuyenKhoa); ?></p>
          <p><strong>Ngày khám:</strong> <?php echo htmlspecialchars($ngay); ?></p>
          <p><strong>Giờ bắt đầu:</strong> <?php echo htmlspecialchars($giobatdau); ?></p>
          <p><strong>Giờ kết thúc:</strong> <?php echo htmlspecialchars($gioketthuc); ?></p>
          <p><strong>Giá khám:</strong> <?php echo htmlspecialchars($gia);  ?> đồng</p>
        </div>
        <div class="doctor-image ms-4">
          <img src="Assets/img/<?php echo htmlspecialchars($anh); ?>" alt="Ảnh bác sĩ" class="img-fluid rounded-circle">
        </div>
      </div>
    </div>
  </div>
<?php else: ?>
  <p class="text-danger text-center">Không có thông tin đặt lịch khám.</p>
<?php endif; ?>

<!-- The rest of the form code remains unchanged -->

</body>
</html>

  <div class="container mt-5 mb-5">
    <h2 class="mb-4 text-center">Đặt Lịch Khám Online</h2>
    <form method="POST" action="luu_lich_kham.php">
      <!-- Patient History Section -->
      <div class="mb-3">
        <label class="form-label">Bạn đã từng khám bệnh trước đây?</label>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="patientHistory" id="daTungKham" value="Đã từng khám" onclick="togglePatientHistory()" checked>
          <label class="form-check-label" for="daTungKham">Đã từng khám</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="patientHistory" id="chuaTungKham" value="Chưa từng khám" onclick="togglePatientHistory()">
          <label class="form-check-label" for="chuaTungKham">Chưa từng khám</label>
        </div>
      </div>

      <!-- Form Fields Below -->
      <div class="row g-3" id="formFields">
        <!-- Các ô nhập khác chỉ hiển thị khi "Chưa từng khám" -->
        <div class="col-md-6">
          <label for="hotenbenhnhan" class="form-label">Họ Tên Bệnh Nhân</label>
          <input type="text" class="form-control" id="hotenbenhnhan" name="hotenbenhnhan" required>
        </div>

        <div class="col-md-4">
          <label for="ngaysinh" class="form-label">Ngày Sinh</label>
          <input type="date" class="form-control" id="ngaysinh" name="ngaysinh" required>
        </div>

        <div class="col-md-4">
          <label for="gioitinh" class="form-label">Giới Tính</label>
          <select class="form-select" id="gioitinh" name="gioitinh" required>
            <option value="">-- Chọn --</option>
            <option value="Nam">Nam</option>
            <option value="Nữ">Nữ</option>
            <option value="Khác">Khác</option>
          </select>
        </div>

        <div class="col-md-4">
          <label for="nghenghiep" class="form-label">Nghề Nghiệp</label>
          <input type="text" class="form-control" id="nghenghiep" name="nghenghiep">
        </div>

        <div class="col-md-6">
          <label for="cccdbenhnhan" class="form-label">CCCD</label>
          <input type="text" class="form-control" id="cccdbenhnhan" name="cccdbenhnhan">
        </div>

        <div class="col-md-6">
          <label for="dantoc" class="form-label">Dân Tộc</label>
          <input type="text" class="form-control" id="dantoc" name="dantoc">
        </div>

        <div class="col-md-6">
          <label for="email" class="form-label">Email</label>
          <input type="email" class="form-control" id="email" name="email">
        </div>

        <div class="col-md-6">
          <label for="sdtbenhnhan" class="form-label">SĐT Bệnh Nhân</label>
          <input type="text" class="form-control" id="sdtbenhnhan" name="sdtbenhnhan">
        </div>

        <div class="col-md-4">
          <label for="tinh" class="form-label">Tỉnh/Thành Phố</label>
          <input type="text" class="form-control" id="tinh" name="tinh">
        </div>

        <div class="col-md-4">
          <label for="quan" class="form-label">Quận/Huyện</label>
          <input type="text" class="form-control" id="quan" name="quan">
        </div>

        <div class="col-md-4">
          <label for="xa" class="form-label">Xã/Phường</label>
          <input type="text" class="form-control" id="xa" name="xa">
        </div>

        <div class="col-md-12">
          <label for="sonha" class="form-label">Số Nhà</label>
          <input type="text" class="form-control" id="sonha" name="sonha">
        </div>

        <div class="col-md-6">
          <label for="tiensubenhtatgiadinh" class="form-label">Tiền Sử Bệnh Gia Đình</label>
          <textarea class="form-control" id="tiensubenhtatgiadinh" name="tiensubenhtatgiadinh" rows="2"></textarea>
        </div>

        <div class="col-md-6">
          <label for="tiensubenhbandau" class="form-label">Tiền Sử Bệnh Bản Thân</label>
          <textarea class="form-control" id="tiensubenhbandau" name="tiensubenhbandau" rows="2"></textarea>
        </div>

      </div>

      <!-- Mã Bệnh Nhân - Chỉ hiển thị khi "Đã từng khám" -->
      <div class="col-md-6" id="mabenhnhanField" style="display:none;">
        <label for="mabenhnhan" class="form-label">Mã Bệnh Nhân</label>
        <input type="text" class="form-control" id="mabenhnhan" name="mabenhnhan" required>
      </div>

      <div class="text-center mt-4">
        <button type="submit" class="btn btn-primary">Xác Nhận Đặt Lịch</button>
      </div>
    </form>
  </div>

</body>
</html>
