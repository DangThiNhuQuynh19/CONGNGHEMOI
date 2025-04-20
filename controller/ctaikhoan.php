<?php
include_once(__DIR__ . "/../model/mtaikhoan.php");

class cTaiKhoan {
    // Đăng ký tài khoản
    public function dangkytk($email, $hoten, $ngaysinh, $mk) {
        $mNguoiDung = new mNguoiDung();
        return $mNguoiDung->dangkytk($email, $hoten, $ngaysinh, $mk);
    }

    public function dangnhap($email, $mk) {
        $mNguoiDung = new mNguoiDung();
        
        // Lấy dữ liệu người dùng từ cơ sở dữ liệu
        $ketqua = $mNguoiDung->select01NguoiDung($email);
    
        if ($ketqua->num_rows > 0) {
            $user = $ketqua->fetch_assoc();
            $hashedPassword = $user['matkhau']; // Mật khẩu đã được mã hóa
    
            if (password_verify($mk, $hashedPassword)) {
                // Đăng nhập thành công → lưu thông tin người dùng và vai trò
                $_SESSION["vaitro"] = $user['vaitro'];  // Lưu vai trò vào session
                $_SESSION["user"] = $user;  // Lưu toàn bộ thông tin người dùng vào session
                
                return true;
            } else {
                return "Sai tài khoản hoặc mật khẩu.";
            }
        } else {
            return "Tài khoản không tồn tại.";
        }
    }
    
    
}
?>