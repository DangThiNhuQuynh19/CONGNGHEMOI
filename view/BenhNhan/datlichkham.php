<?php include_once(__DIR__ . "/header.php"); ?>
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
    }

    h2 {
      color: var(--custom-purple);
      font-weight: 600;
    }

    label {
      font-weight: 500;
      margin-bottom: 4px;
    }

    input[type="text"],
    input[type="email"],
    input[type="date"],
    select,
    textarea {
      border-radius: 8px;
      border: 1px solid var(--input-border);
      transition: all 0.3s ease;
    }

    input:focus,
    select:focus,
    textarea:focus {
      border-color: var(--input-focus);
      box-shadow: 0 0 0 0.2rem rgba(85, 45, 125, 0.2);
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
      box-shadow: 0 8px 20px rgba(0,0,0,0.05);
    }

    .text-center button {
      box-shadow: 0 4px 12px rgba(85, 45, 125, 0.3);
    }

    @media (max-width: 576px) {
      .container {
        padding: 20px 15px;
      }

      h2 {
        font-size: 22px;
      }

      .btn-primary {
        width: 100%;
      }
    }
  </style>

  <script>
    function checkAge() {
      const birthDate = new Date(document.getElementById("ngaysinh").value);
      const today = new Date();
      let age = today.getFullYear() - birthDate.getFullYear();
      const mDiff = today.getMonth() - birthDate.getMonth();
      if (mDiff < 0 || (mDiff === 0 && today.getDate() < birthDate.getDate())) {
        age--;
      }

      const thanNhanSection = document.getElementById("thanNhanSection");
      thanNhanSection.style.display = (age < 18) ? "block" : "none";
    }
  </script>
</head>
<body>

  <div class="container mt-5 mb-5">
    <h2 class="mb-4 text-center">Đặt Lịch Khám Online</h2>
    <form method="POST" action="luu_lich_kham.php">
      <div class="row g-3">

        <div class="col-md-6">
          <label for="mabenhnhan" class="form-label">Mã Bệnh Nhân</label>
          <input type="text" class="form-control" id="mabenhnhan" name="mabenhnhan" required>
        </div>

        <div class="col-md-6">
          <label for="hotenbenhnhan" class="form-label">Họ Tên Bệnh Nhân</label>
          <input type="text" class="form-control" id="hotenbenhnhan" name="hotenbenhnhan" required>
        </div>

        <div class="col-md-4">
          <label for="ngaysinh" class="form-label">Ngày Sinh</label>
          <input type="date" class="form-control" id="ngaysinh" name="ngaysinh" required onchange="checkAge()">
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
          <label for="tiensubenhtatbanthan" class="form-label">Tiền Sử Bệnh Bản Thân</label>
          <textarea class="form-control" id="tiensubenhtatbanthan" name="tiensubenhtatbanthan" rows="2"></textarea>
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
      </div>

      <div class="mt-4 text-center">
        <button type="submit" class="btn btn-primary px-5 py-2">Đặt Lịch</button>
      </div>
    </form>
  </div>
</body>
</html>
