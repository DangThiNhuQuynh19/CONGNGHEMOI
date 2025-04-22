<?php
session_start(); // Khởi tạo session ở đầu trang
?>
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

        .header {
            width: 100%;
            height: 100px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000; 
            background-color: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .header_logo {
            margin-left: 100px;
        }

        .menu {
            margin-right: 20px;
            display: flex;
            align-items: center;
        }

        .menu ul {
            list-style-type: none;
            display: flex;
            justify-content: space-between;
        }

        .menu li {
            margin-right: 20px;
            font-size: 20px;
            color: rgb(60, 21, 97);
        }

        .menu li a {
            text-decoration: none;
            color: rgb(60, 21, 97);
        }

        
        /* Biểu tượng đầu người */
        .user-icon {
            border-radius: 52%;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-left: 10px; /* Khoảng cách với menu */
        }

        .user-icon:hover {
            background-color: #6a34a5; /* Màu tím nhạt hơn khi hover */
        }

        /* Dropdown menu */
        .user-dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-menu {
            display: none;
            position: absolute;
            top: 50px;
            right: 0;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            min-width: 200px;
            border-radius: 8px;
            transition: all 0.3s ease;
            opacity: 0;
            visibility: hidden;
        }

        .user-dropdown.show .dropdown-menu {
            display: block;
            opacity: 1;
            visibility: visible;
        }

        .dropdown-menu a {
            padding: 12px 16px;
            display: block;
            color: rgb(60, 21, 97);
            font-size: 20px;
            text-decoration: none;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .dropdown-menu a:hover {
            background-color: #f1f1f1;
            color: #6a34a5; /* Màu tím khi hover */
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
        <div class="user-icon">
            <span><img src="../../image/user1.png" alt="" style="width:40px;"></span> 
        </div>
        <button class="dropbtn">
            Xin chào, <?php echo htmlspecialchars($_SESSION['hoten']); ?>
        </button>
        <div class="dropdown-menu">
            <a href="?action=hoso">Xem hồ sơ bệnh án điện tử</a>
            <a href="?action=lichhen">Lịch hẹn của bạn</a>
            <a href="?action=tinnhan">Tin nhắn</a>
            <a href="/HOSPITAL/view/TaiKhoan/dangxuat.php">Đăng xuất</a>
        </div>
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
            case 'chitietbacsi':
                include_once("chitietbacsi.php");
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

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const userIcon = document.querySelector(".user-icon");
        const userDropdown = document.querySelector(".user-dropdown");

        // Toggle dropdown khi click vào biểu tượng người dùng
        userIcon.addEventListener("click", function () {
            userDropdown.classList.toggle("show");
        });

        // Đóng dropdown khi click ngoài
        document.addEventListener("click", function (event) {
            if (!userDropdown.contains(event.target)) {
                userDropdown.classList.remove("show");
            }
        });
    });
</script>

</body>
</html>
