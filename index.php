<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #login {
            position: absolute;
            top: 20px;
            right: 25px;
            font-size: 20px;
        }
    </style>
</head>
<body>
<div id="login">
  
  <?php
    if(isset($_SESSION["dn"])){
      echo '<a href="../dangxuat" onclick="return confirm(\'Bạn thực sự muốn đăng xuất?\');">Đăng xuất   </a>';
    }else{
      echo '<a href="?dangnhap">Đăng nhập / </a>';
      echo '<a href="?dangky">Đăng ký</a>';
    }
  ?>  
</div>
  <div id="main">


    <?php
      if(isset($_GET["dangnhap"])){
        include_once("view/taikhoan/dangnhap.php");
      }else if(isset($_GET["dangky"])){
        include_once("view/taikhoan/dangky.php");
      }else{
        include_once("view/taikhoan/dangnhap.php");
      }
    ?>
   
   <?php

if (isset($_SESSION["dn"])) {

  // Điều hướng dựa trên vai trò
  if ($_SESSION["dn"] == 0) {
      header("refresh:0;url='view/BacSi/index.php'");
      echo "<script>alert('Đăng nhập thành công!');</script>";
      exit;
  } elseif ($_SESSION["dn"] == 1) {
      header("refresh:0;url='view/Benhnhan/index.php'");
      echo "<script>alert('Đăng nhập thành công!');</script>";
      exit;
  }else{
    echo "<script>alert('Đăng nhập thất bại. Vui lòng kiểm tra lại tài khoản và mật khẩu!');</script>";
    header("refresh:0;url='index.php'");
    exit;
  }

}
?>
    
  </div>
</body>
</html>