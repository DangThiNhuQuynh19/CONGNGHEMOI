<?php
// Include các file controller cần thiết
include_once('Controllers/cbacsi.php');
include_once('Controllers/clichkham.php');

// Xử lý lấy thông tin bác sĩ, lịch làm việc
$idbs = $_GET['idbs'] ?? null;
$ngay = $_GET['ngay'] ?? null;
$ca = $_GET['ca'] ?? null;

if ($idbs && $ngay && $ca) {
    $pBacSi = new cBacSi();
    $tblBacSi = $pBacSi->getBacSiById($idbs);
    if ($tblBacSi && $tblBacSi->num_rows > 0) {
        $bacSi = $tblBacSi->fetch_assoc();
        $hoten = $bacSi['hoten'];
        $capbac = $bacSi['capbac'];
        $chuyenKhoa = $bacSi['tenchuyenkhoa'];
        $gia = $bacSi['giakham'];
        $anh = $bacSi['imgbs'];
    } else {
        $error = "Không tìm thấy thông tin bác sĩ.";
    }

    $pLichKham = new cLichKham();
    $tblLich = $pLichKham->getlich($ca);
    if ($tblLich && $tblLich->num_rows > 0) {
        $lich = $tblLich->fetch_assoc();
        $giobatdau = $lich['giobatdau'];
        $gioketthuc = $lich['gioketthuc'];
    } else {
        $error = "Không tìm thấy thông tin ca làm việc.";
    }
} else {
    $error = "Thiếu tham số trên URL.";
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

<div class="container mt-5 mb-5">
  <h2 class="mb-4 text-center">Đặt Lịch Khám Online</h2>
  <form method="POST" action="luu_lich_kham.php">
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
        <div class="col-md-6">
          <label for="nhommau" class="form-label">Nhóm Máu</label>
          <select class="form-select" id="nhommau" name="nhommau">
            <option value="">-- Chọn --</option>
            <option value="A">A</option>
            <option value="B">B</option>
            <option value="AB">AB</option>
            <option value="O">O</option>
          </select>
        </div>
      </div>
<!-- Thông tin thân nhân nếu dưới 18 tuổi -->
      <div id="thanNhanSection" class="p-3 mt-4" style="display:none;">
          <h5 style="color: var(--custom-purple);">Thông Tin Thân Nhân (Bệnh nhân dưới 18 tuổi)</h5>
          <div class="row g-3">
            <div class="col-md-6">
              <label for="hotenthannhan" class="form-label">Họ Tên Thân Nhân</label>
              <input type="text" class="form-control" id="hotenthannhan" name="hotenthannhan">
            </div>

            <div class="col-md-3">
              <label for="quanhe" class="form-label">Quan Hệ</label>
              <input type="text" class="form-control" id="quanhe" name="quanhe">
            </div>

            <div class="col-md-3">
              <label for="sdtthannhan" class="form-label">SĐT Thân Nhân</label>
              <input type="text" class="form-control" id="sdtthannhan" name="sdtthannhan">
            </div>

            <div class="col-md-6">
              <label for="cccdthannhan" class="form-label">CCCD Thân Nhân</label>
              <input type="text" class="form-control" id="cccdthannhan" name="cccdthannhan">
            </div>
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
</div>
<script>
  document.addEventListener('DOMContentLoaded', function () {
  const ngaysinhInput = document.getElementById('ngaysinh');
  const thanNhanSection = document.getElementById('thanNhanSection');
  const daTungKham = document.getElementById('daTungKham'); // Lấy radio "Đã từng khám"

  // Xử lý thay đổi ngày sinh để kiểm tra độ tuổi
  ngaysinhInput.addEventListener('change', function () {
    const today = new Date();
    const birthDate = new Date(this.value);

    let age = today.getFullYear() - birthDate.getFullYear();
    const m = today.getMonth() - birthDate.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
      age--;
    }

    if (age < 18) {
      thanNhanSection.style.display = 'block';
    } else {
      thanNhanSection.style.display = 'none';
    }
  });

  // Kiểm tra khi chọn "Đã từng khám" hay "Chưa từng khám"
  daTungKham.addEventListener('change', function () {
    togglePatientHistory(); // Gọi lại hàm togglePatientHistory để xử lý lại khi thay đổi lựa chọn
    // Khi chọn "Đã từng khám", ẩn thông tin thân nhân
    thanNhanSection.style.display = 'none';
  });

  const chuaTungKham = document.getElementById('chuaTungKham'); // Lấy radio "Chưa từng khám"
  chuaTungKham.addEventListener('change', function () {
    togglePatientHistory(); // Gọi lại hàm togglePatientHistory khi chọn "Chưa từng khám"
  });

  // Kiểm tra khi tải trang lần đầu
  window.onload = togglePatientHistory;

  // Hàm ẩn/hiện form thông tin cá nhân và mã bệnh nhân
  function togglePatientHistory() {
    const daTungKhamChecked = daTungKham.checked; // Kiểm tra nếu chọn "Đã từng khám"
    const formFields = document.getElementById('formFields');
    const maBenhNhanField = document.getElementById('mabenhnhanField');

    if (daTungKhamChecked) {
      formFields.style.display = 'none';        // Ẩn form thông tin cá nhân
      maBenhNhanField.style.display = 'block';   // Hiện ô nhập mã bệnh nhân
    } else {
      formFields.style.display = 'flex';         // Hiện form thông tin cá nhân
      maBenhNhanField.style.display = 'none';    // Ẩn ô nhập mã bệnh nhân
    }
  }
});
</script>
</body>
</html>

