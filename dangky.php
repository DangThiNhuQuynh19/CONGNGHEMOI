<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Đăng ký tài khoản</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f4f4f8;
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }

    .register-box {
      background-color: #ffffff;
      padding: 40px 30px;
      border-radius: 12px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 450px;
      text-align: center;
    }

    .register-box img.logo {
      width: 100px;
      height: auto;
      margin-bottom: 20px;
    }

    .register-box h2 {
      color: #6f42c1;
      margin-bottom: 30px;
    }

    label {
      display: block;
      text-align: left;
      margin-bottom: 8px;
      font-weight: 500;
      color: #333;
    }

    input[type="text"],
    input[type="email"],
    input[type="date"],
    input[type="password"] {
      width: 100%;
      padding: 10px 12px;
      border: 1px solid #ccc;
      border-radius: 8px;
      margin-bottom: 20px;
      font-size: 16px;
      box-sizing: border-box;
      transition: border-color 0.3s ease;
    }

    input:focus {
      outline: none;
      border-color: #6f42c1;
    }

    button {
      width: 100%;
      padding: 12px;
      background-color: rgb(85, 45, 125);
      color: white;
      font-size: 16px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    button:hover {
      background-color: #5a34a5;
    }

    @media (max-width: 480px) {
      .register-box {
        padding: 30px 20px;
      }
    }
  </style>
</head>
<body>

  <div class="register-box">
    <img src="image/logo-banner.png" alt="Logo" class="logo" />
    <h2>Đăng ký tài khoản</h2>
    <form>
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" placeholder="Nhập email" required />

      <label for="fullname">Họ tên:</label>
      <input type="text" id="fullname" name="fullname" placeholder="Nhập họ và tên" required />

      <label for="dob">Ngày sinh:</label>
      <input type="date" id="dob" name="dob" required />

      <label for="password">Mật khẩu:</label>
      <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" required />

      <label for="confirm-password">Nhập lại mật khẩu:</label>
      <input type="password" id="confirm-password" name="confirm-password" placeholder="Nhập lại mật khẩu" required />

      <button type="submit">Đăng ký</button>
    </form>
  </div>

</body>
</html>