<?php
session_start();  // Khởi tạo session

// Xóa toàn bộ session để đăng xuất
session_destroy();

// Chuyển hướng về trang chủ sau khi đăng xuất
header("Location: ../../index.php");  // Điều chỉnh đường dẫn theo cấu trúc thư mục của bạn
exit();
?>
