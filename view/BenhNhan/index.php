<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
        }
        .header{
            width: 100%;
            height: 100px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000; 
            background-color: white;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .header_logo{
            margin-left: 100px;
        }
        .menu{
            margin-right: 10px;
        }
        .menu ul{
            list-style-type: none;
            display: flex;
            justify-content: space-between;
        }
        .menu li{
            margin-right: 20px;
            font-size: 20px;
            color: rgb(60, 21, 97);
        }
        .menu li a{
            text-decoration: none;
            color: rgb(60, 21, 97);
        }
        .btn-login, .btn-register {
            padding-left: 1px;
            display: inline-block;
            padding: 8px 8px;
            font-size: 14px;
            font-weight: bold;
            border-radius: 6px;
            text-decoration: none;
            text-align: center;
            transition: 0.3s;
        }

        .btn-login {
            background-color: rgb(60, 21, 97);
            color: white;
            border: 2px solid #6a0dad;
        }

        .btn-login:hover {
            background-color: white;
            color: #6a0dad;
            border: 2px solid #6a0dad;
        }
        .btn-register {
            background-color: rgb(60, 21, 97);
            color: white;
            border: 2px solid #800080;
        }
        .btn-register:hover {
            background-color: white;
            color: #800080;
            border: 2px solid #800080;
        }

        /* Dropdown menu styling */
        .user-dropdown {
            position: relative;
        }

        .user-icon {
            width: 40px;
            height: 40px;
            cursor: pointer;
        }

        .dropdown-menu {
            display: none;
            position: absolute;
            top: 50px;
            right: 0;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            min-width: 200px;
            border-radius: 8px;
        }

        .dropdown-menu a {
            padding: 10px;
            display: block;
            color: #333;
            text-decoration: none;
        }

        .dropdown-menu a:hover {
            background-color: #f1f1f1;
        }

        /* Hiển thị dropdown khi hover */
        .user-dropdown:hover .dropdown-menu {
            display: block;
        }
        
    </style>
</head>
<body>
<!-- HEADER -->
<div class="header">
    <div class="header_logo">
        <a href="?action=index" class="logo <?php echo (isset($_REQUEST['action']) && $_REQUEST['action'] === 'index') ? 'active' : ''; ?>"> 
            <img style="width:250px; height: 55px;" src="../../image/logo.png" alt="Logo">
        </a>
    </div>
    <div class="menu">
        <ul>
            <li><a href="?action=about" class="<?php echo (isset($_REQUEST['action']) && $_REQUEST['action'] === 'about') ? 'active' : ''; ?>">Về chúng tôi</a></li>
            <li><a href="?action=chuyenkhoa" class="<?php echo (isset($_REQUEST['action']) && $_REQUEST['action'] === 'chuyenkhoa') ? 'active' : ''; ?>">Chuyên khoa</a></li>
            <li><a href="?action=bacsi" class="<?php echo (isset($_REQUEST['action']) && $_REQUEST['action'] === 'bacsi') ? 'active' : ''; ?>">Bác sĩ</a></li>
            <li><a href="?action=goikham" class="<?php echo (isset($_REQUEST['action']) && $_REQUEST['action'] === 'goikham') ? 'active' : ''; ?>">Gói khám</a></li>
            <li><a href="?action=lienhe" class="<?php echo (isset($_REQUEST['action']) && $_REQUEST['action'] === 'lienhe') ? 'active' : ''; ?>">Liên hệ</a></li>
            <li><a href="?action=datlichkhamonline" class="<?php echo (isset($_REQUEST['action']) && $_REQUEST['action'] === 'datlichkhamonline') ? 'active' : ''; ?>" style="font-weight:bold;">Đặt lịch khám online</a></li>
        </ul>
    </div>

    <?php if (isset($_SESSION['vaitro']) && $_SESSION['vaitro'] == 1): ?>
        <div class="user-dropdown">
            <img src="../../image/user-icon.png" class="user-icon" alt="User">
            <div class="dropdown-menu">
                <a href="?action=hoso">Xem hồ sơ bệnh án điện tử</a>
                <a href="?action=lichhen">Lịch hẹn của bạn</a>
                <a href="?action=tinnhan">Tin nhắn</a>
                <a href="dangxuat.php">Đăng xuất</a>
            </div>
        </div>
    <?php else: ?>
        <div class="acc">
            <a href="dangnhap.php" class="btn-login">Đăng nhập</a>
            <a href="dangky.php" class="btn-register">Đăng ký</a>
        </div>
    <?php endif; ?>
</div>

<!-- PHẦN HIỂN THỊ NỘI DUNG THEO action -->
<?php
    if (isset($_REQUEST["action"])) {
        $val = $_REQUEST["action"];
        switch ($val) {
            case 'about':
                include_once("vechungtoi.php");
                break;
            case 'chuyenkhoa':
                include_once("chuyenkhoa.php");
                break;
            case 'bacsi':
                include_once("bacsi.php");
                break;
            case 'goikham':
                include_once("goikham.php");
                break;
            case 'lienhe':
                include_once("lienhe.php");
                break;
            case 'datlichkhamonline':
                include_once("datlichkham.php");
                break;
            case 'hoso':
                include_once("hosobenhan.php");
                break;
            case 'lichhen':
                include_once("lichhen.php");
                break;
            case 'tinnhan':
                include_once("tinnhan.php");
                break;
            case 'index':
            default:
                include_once("trangchu.php");
                break;
        }
    } else {
        include_once("trangchu.php");
    }
?>

   
</body>
</html>