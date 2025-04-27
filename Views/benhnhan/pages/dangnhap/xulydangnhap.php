<?php
include_once('Controllers/ctaikhoan.php');
$nguoidung = new ctaikhoan();
if (isset($_POST["btndangnhap"])) {
    $email = $_POST["email"];
    $password =MD5($_POST["password"]);
    $nguoidung->dangnhap($email,$password);
}
?>
