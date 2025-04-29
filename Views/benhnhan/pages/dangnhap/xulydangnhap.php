<?php
include_once('Controllers/ctaikhoan.php');
$nguoidung = new ctaiKhoan();
if (isset($_POST["btndangnhap"])) {
    $tentk = $_POST["tentk"];
    $password = MD5($_POST["password"]);
    
    $result = $nguoidung->dangnhap($tentk, $password);

    if ($result) {
        // Lưu tên tài khoản (tentk) trong session
        $_SESSION['tentk'] = $tentk;
        header("Location: index.php");
        exit;
    } else {
        echo '<script>document.getElementById("errorMessage").classList.add("show");</script>';
    }
}
?>
