-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 20, 2025 lúc 06:36 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `benhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bacsi`
--

CREATE TABLE `bacsi` (
  `mabacsi` int(11) UNSIGNED NOT NULL,
  `motabs` varchar(300) NOT NULL,
  `hoten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sdt` int(12) NOT NULL,
  `cccd` bigint(200) NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date DEFAULT NULL,
  `imgbs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giakham` int(11) NOT NULL,
  `machuyenkhoa` int(11) UNSIGNED NOT NULL,
  `capbac` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `trangthai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tentk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bacsi`
--

INSERT INTO `bacsi` (`mabacsi`, `motabs`, `hoten`, `ngaysinh`, `email`, `sdt`, `cccd`, `ngaybatdau`, `ngayketthuc`, `imgbs`, `giakham`, `machuyenkhoa`, `capbac`, `trangthai`, `tentk`) VALUES
(1, 'Với hơn 30 năm nghiên cứu và khám chữa bệnh thành công cho nhiều bệnh nhân cơ xương khớp, PGS.TS.BSCC Đặng Hồng Hoa, Trưởng khoa Cơ xương khớp, Bệnh viện Hạnh Phúc được mệnh danh là “Nữ anh hùng áo trắng của ngành Cơ xương khớp”.', 'ĐẶNG HỒNG HOA', '1997-12-12', 'danghonghoahanhphuchospital@gmail.com', 357388370, 64302345664, '2019-04-08', NULL, 'dang-hong-hoa-avt.png', 150000, 1, 'PGS.TS.BSCC', 'Đang làm việc', 'coxuongkhop.danghonghoa@gmail.com'),
(2, '', 'Vũ Thái Hà', '1987-02-05', 'dalieu.vuthaiha@gmail.com', 357388371, 26665432112, '2015-04-08', NULL, 'thaiha.png', 450000, 2, 'Thạc sĩ', 'Đang làm việc', 'dalieu.vuthaiha@gmail.com'),
(3, '', 'Lê Trần Mỹ Tú', '1986-02-05', 'dalieu.letranmytu@gmail.com', 357388372, 36665432113, '2018-04-08', NULL, 'mytu.png', 100000, 7, 'Bác sĩ', 'Đang làm việc', 'dalieu.letranmytu@gmail.com'),
(4, '', 'Nguyễn Phương Anh', '1995-02-05', 'dalieu.nguyenphuonganh@gmail.com', 357388378, 36665432114, '2018-04-09', NULL, 'phuonganh.jpg', 180000, 7, 'Bác sĩdalieu', 'Đang làm việc', 'dalieu.nguyenphuonganh@gmail.com'),
(5, '', 'Trần Thu Hà', '1997-12-20', 'dalieu.tranthuha@gmail.com', 357388377, 36665432115, '2018-04-02', NULL, 'thuha.jpg', 250000, 7, 'Bác sĩ', 'Đang làm việc', 'dalieu.tranthuha@gmail.com'),
(6, '', 'Võ Thị Trúc Phương', '1986-02-05', 'yhoccotruyen.vothitrucphuong@gmail.com', 357388374, 36665432116, '2015-04-08', NULL, 'trucphuong.jpg', 120000, 6, 'Thạc sĩ', 'Đang làm việc', 'yhoccotruyen.vothitrucphuong@gmail.com'),
(7, '', 'Đỗ Ngọc Bảo Duy', '1987-02-10', 'yhoccotruyen.dongocbaoduy@gmail.com', 357388374, 36665432117, '2015-04-08', NULL, 'baoduy.png', 150000, 6, 'Thạc sĩ', 'Đang làm việc', 'yhoccotruyen.dongocbaoduy@gmail.com'),
(8, '', 'Nguyễn Văn Việt ', '1986-12-04', 'yhoccotruyen.nguyenvanviet@gmail.com', 355576892, 36665432118, '2019-12-04', NULL, 'vanviet.png', 120000, 6, 'Bác sĩ', 'Đang làm việc', 'yhoccotruyen.nguyenvanviet@gmail.com'),
(9, '', 'Kiều Đình Khoan', '1986-02-05', 'yhoccotruyen.kieudinhkhoan@gmail.com', 357388372, 36665432119, '2015-04-08', NULL, 'dinhkhoan.jpg', 150000, 6, 'Thạc sĩ', 'Đang làm việc', 'yhoccotruyen.kieudinhkhoan@gmail.com'),
(10, '', 'Trần Thái Hà', '1987-02-11', 'yhoccotruyen.tranthaiha@gmail.com', 357388332, 26665432120, '2015-04-08', NULL, 'thaiha.jpg', 400000, 6, 'Phó giáo sư, tiến sĩ, Bác sĩ', 'Đang làm việc', 'yhoccotruyen.tranthaiha@gmail.com'),
(16, '', 'Nguyễn Văn Doanh', '1980-04-10', 'thankinh.nguyenvandoanh@gmail.com', 912345678, 36665432121, '2008-06-15', NULL, 'vandoanh.png', 300000, 14, 'Bác sĩ', 'Đang làm việc', 'thankinh.nguyenvandoanh@gmail.com'),
(17, '', 'Vũ Văn Hòe', '1982-08-25', 'thankinh.vuvanhoe@gmail.com', 938123456, 36665432122, '2010-09-01', NULL, 'vanhoe.jpg', 300000, 14, 'Bác sĩ', 'Đang làm việc', 'thankinh.vuvanhoe@gmail.com'),
(18, '', 'Nguyễn Văn Thông', '1975-02-14', 'thankinh.nguyenvanthong@gmail.com', 909234567, 36665432123, '2005-03-20', NULL, 'vanthong.jpg', 400000, 14, 'Tiến sĩ', 'Đang làm việc', 'thankinh.nguyenvanthong@gmail.com'),
(19, '', 'Hà Thị Minh Nguyệt', '1988-12-05', 'thankinh.hathiminhnguyet@gmail.com', 978456123, 36665432124, '2015-07-10', NULL, 'minhnguyet.jpg', 250000, 14, 'Bác sĩ', 'Đang làm việc', 'thankinh.hathiminhnguyet@gmail.com'),
(20, '', 'Trần Thị Mai Thy', '1990-06-22', 'thankinh.tranthimaithy@gmail.com', 967345123, 36665432125, '2017-10-01', NULL, 'maithy.jpg', 250000, 14, 'Bác sĩ', 'Đang làm việc', 'thankinh.tranthimaithy@gmail.com'),
(21, '', 'Nguyễn Phương Khanh', '1985-06-20', 'nhi.nguyenphuongkhanh@gmail.com', 923456789, 36665432126, '2012-08-15', NULL, 'hoaian.jpg', 250000, 2, 'Thạc sĩ, Bác sĩ CKI', 'Đang làm việc', 'nhi.nguyenphuongkhanh@gmail.com'),
(22, '', 'Nguyễn Thị Hoài An', '1975-03-10', 'nhi.nguyenthihoaian@gmail.com', 901234567, 36665432127, '2002-05-10', NULL, 'phuongkhanh.jpg', 400000, 2, 'Phó Giáo sư, Tiến sĩ, Bác sĩ', 'Đang làm việc', 'nhi.nguyenthihoaian@gmail.com'),
(23, '', 'Nguyễn Thị Lệ Liễu', '1965-10-05', 'nhi.nguyenthilelieu@gmail.com', 934567890, 36665432128, '1992-03-20', NULL, 'lelieu.jpg', 400000, 2, 'Bác sĩ', 'Đang làm việc', 'nhi.nguyenthilelieu@gmail.com'),
(24, '', 'Nguyễn Thị Ngọc', '1988-02-18', 'nhi.nguyenthingoc@gmail.com', 945678901, 36665432129, '2016-06-10', NULL, 'thingoc.jpg', 300000, 2, 'Bác sĩ', 'Đang làm việc', 'nhi.nguyenthingoc@gmail.com'),
(25, '', 'Nguyễn Xuân Tài', '1980-11-25', 'nhi.nguyenxuantai@gmail.com', 967890123, 36665432130, '2010-01-05', NULL, 'xuantai.png', 350000, 2, 'Bác sĩ', 'Đang làm việc', 'nhi.nguyenxuantai@gmail.com'),
(26, '', 'Nguyễn Thị Anh Thư', '1985-05-10', 'nguyenthianhthu@example.com', 901234567, 12345678910, '2010-08-15', NULL, 'anhthu.jpg', 350000, 3, 'Bác sĩ', 'Đang làm việc', 'phusan.nguyenthianhthu@gmail.com'),
(27, '', 'Cao Chí Trung', '1978-11-22', 'caochitrung@example.com', 987654321, 987654321012, '2003-06-01', NULL, 'chitrung.jpg', 300000, 3, 'Bác sĩ', 'Đang làm việc', 'phusan.caochitrung@gmail.com'),
(28, '', 'Nguyễn Tuấn Minh', '1980-03-15', 'phusan.nguyentuanminh@gmail.com', 933445566, 98765432190, '2005-07-20', NULL, 'tuanminh.jpg', 200000, 3, 'Bác sĩ', 'Đang làm việc', 'phusan.nguyentuanminh@gmail.com'),
(29, '', 'Phạm Thị Quỳnh', '1988-09-01', 'phusan.phamthiquynh@gmail.com', 911223344, 112233445566, '2013-11-10', NULL, 'thiquynh.jpg', 150000, 3, 'Thạc sĩ, Bác sĩ', 'Đang làm việc', 'phusan.phamthiquynh@gmail.com'),
(30, '', 'Nguyễn Thị Hoài An', '1975-12-20', 'ranghammat.nguyenthithoaian@gmail.com', 909876543, 78901234567, '2000-09-01', NULL, 'nguyenthithoaiian.jpg', 400000, 10, 'Phó Giáo sư, Tiến sĩ, Bác sĩ', 'Đang làm việc', 'ranghammat.nguyenthithoaian@gmail.com'),
(31, '', 'Nguyễn Ngọc Phấn', '1982-06-18', 'ranghammat.nguyenngocphan@gmail.com', 977889900, 187654321098, '2008-04-10', NULL, 'nguyenngocphan.jpg', 250000, 10, 'Bác sĩ ', 'Đang làm việc', 'ranghammat.nguyenngocphan@gmail.com'),
(32, '', 'Đoàn Tiến Thành', '1979-08-05', 'ranghammat.doantienthanh@gmail.com', 966554433, 298765432101, '2004-11-15', NULL, 'doantienthanh.jpg', 300000, 10, 'Bác sĩ ', 'Đang làm việc', 'ranghammat.doantienthanh@gmail.com'),
(33, '', 'Nguyễn Thành Tuấn', '1983-07-25', 'ranghammat.nguyenthanhtuan@gmail.com', 912345678, 34567890123, '2015-05-10', NULL, 'nguyenthanhtuan.jpg', 250000, 10, 'Tiến sĩ, Bác sĩ', 'Đang làm việc', 'ranghammat.nguyenthanhtuan@gmail.com'),
(34, '', 'Nguyễn Tuyết Mai', '1965-04-01', 'ranghammat.nguyentuyetmai@gmail.com', 987654320, 23456789012, '1985-09-15', NULL, 'nguyentuyetmai.jpg', 300000, 10, 'Bác sĩ', 'Đang làm việc', 'ranghammat.nguyentuyetmai@gmail.com'),
(35, '', 'Nguyễn Quốc Dũng', '1975-03-10', 'nguyenquocdung@example.com', 901122334, 56789012345, '1995-08-20', NULL, 'nguyenquocdung.jpg', 200000, 11, 'Thạc sĩ, Bác sĩ Chuyên khoa II', 'Đang làm việc', 'ungbuou.nguyenquocdung@gmail.com'),
(36, '', 'Nguyễn Văn Nghị', '1980-11-28', 'nguyenvannghi@example.com', 988776655, 167890123456, '2007-06-01', NULL, 'nguyenvannghi.png\r\n', 370000, 11, 'Thạc sĩ, Bác sĩ', 'Đang làm việc', 'ungbuou.nguyenvannghi@gmail.com'),
(37, '', 'Phạm Văn Vũng', '1978-05-15', 'phamvanvung@example.com', 933221144, 278901234567, '2002-10-10', NULL, 'phamvanvung.jpg', 120000, 11, 'Tiến sĩ, Bác sĩ', 'Đang làm việc', 'ungbuou.phamvanvung@gmail.com'),
(38, '', 'Phạm Xuân Hậu', '1970-09-20', 'phamxuanhau@example.com', 901234987, 12345678912, '1995-08-15', NULL, 'phamxuanhau.jpg', 150000, 13, 'Bác sĩ', 'Đang làm việc', 'timmach.phamxuanhau@gmail.com'),
(39, '', 'Nguyễn Phúc Thiện', '1975-04-12', 'nguyenphucthien@example.com', 987654123, 987654321098, '2002-07-01', NULL, 'nguyenphucthien.jpg', 100000, 13, 'Bác sĩ Chuyên khoa', 'Đang làm việc', 'timmach.nguyenphucthien@gmail.com'),
(40, '', 'Cao Khả Anh', '1983-04-22', 'phuchoichucnang.caokhaanh@gmail.com', 901234123, 12345678911, '2010-08-01', NULL, 'caokhaanh.jpg', 200000, 15, 'Bác sĩ', 'Đang làm việc', 'phuchoichucnang.caokhaanh@gmail.com'),
(41, '', 'Đỗ Hồng Sơn', '1979-11-15', 'phuchoichucnang.dohongson@gmail.com', 987654321, 987654321012, '2005-06-10', NULL, 'dohongson.jpg', 150000, 15, 'Thạc sĩ, Bác sĩ', 'Đang làm việc', 'phuchoichucnang.dohongson@gmail.com'),
(42, '', 'Lê Quang Quốc Anh', '1972-07-08', 'phuchoichucnang.lequangquocanh@gmail.com', 933221133, 112233445566, '1998-09-20', NULL, 'lequangquocanh.jpg', 300000, 15, 'Phó Giáo sư, Tiến sĩ, Bác sĩ', 'Đang làm việc', 'phuchoichucnang.lequangquocanh@gmail.com'),
(43, '', 'Nguyễn Thị Thúy Nga', '1982-09-10', 'mat.nguyenthithuynga@gmail.com', 901122334, 12345678901, '2008-05-15', NULL, 'nguyenthithuynga.jpg', 300000, 8, 'Bác sĩ Chuyên khoa I', 'Đang làm việc', 'mat.nguyenthithuynga@gmail.com'),
(44, '', 'Lê Thị Phương Thảo', '1985-03-20', 'mat.lethiphuongthao@gmail.com', 988776655, 123456789012, '2012-10-01', NULL, 'lethiphuongthao.jpg', 300000, 8, 'Bác sĩ Chuyên khoa I', 'Đang làm việc', 'mat.lethiphuongthao@gmail.com'),
(45, '', 'Trần Thị Mỹ Nga', '1981-06-12', 'taimuihong.tranthimynga@gmail.com', 901122335, 67890123456, '2007-09-01', NULL, 'tranthimynga.jpg', 300000, 9, 'Bác sĩ', 'Đang làm việc', 'taimuihong.tranthimynga@gmail.com'),
(46, '', 'Lê Thị Thái Hòa', '1985-02-28', 'taimuihong.lethithaihoa@gmail.com', 988776656, 178901234567, '2010-04-10', NULL, 'lethithaihoa.jpg', 150000, 9, 'Bác sĩ', 'Đang làm việc', 'taimuihong.lethithaihoa@gmail.com'),
(47, '', 'Nguyễn Trung Khánh', '1977-10-20', 'taimuihong.nguyentrungkhanh@gmail.com', 933221136, 289012345678, '2003-11-20', NULL, 'nguyentrungkhanh.jpg', 400000, 9, 'Thạc sĩ, Bác sĩ', 'Đang làm việc', 'taimuihong.nguyentrungkhanh@gmail.com'),
(48, '', 'Lê Xuân Tài', '1976-08-18', 'khoangoai.lexuantai@gmail.com', 901122446, 23456789012, '2002-03-01', NULL, 'lexuantai.jpg', 200000, 1, 'Bác sĩ', 'Đang làm việc', 'khoangoai.lexuantai@gmail.com'),
(49, '', 'Trần Thành Công', '1983-02-25', 'khoangoai.tranthanhcong@gmail.com', 988776646, 134567890123, '2009-09-15', NULL, 'tranthanhcong.jpg', 300000, 1, 'Bác sĩ', 'Đang làm việc', 'khoangoai.tranthanhcong@gmail.com'),
(50, '', 'Đặng Bá Hiệp', '1979-11-10', 'khoangoai.dangbahiep@gmail.com', 933221146, 245678901234, '2005-07-20', NULL, 'dangbahiep.jpg', 400000, 1, 'Thạc sĩ, Bác sĩ', 'Đang làm việc', 'khoangoai.dangbahiep@gmail.com'),
(51, '', 'Võ Văn Mẫn', '1973-09-05', 'chanthuongchinhhinh.vovanman@gmail.com', 901234789, 87654321098, '1998-08-10', NULL, 'vovanman.jpg', 300000, 5, 'Bác sĩ Chuyên khoa II', 'Đang làm việc', 'chanthuongchinhhinh.vovanman@gmail.com'),
(52, '', 'Vũ Hoàng Liên', '1968-04-12', 'chanthuongchinhhinh.vuhoanglien@gmail.com', 988776699, 198765432101, '1993-06-20', NULL, 'vuhoanglien.jpg', 675000, 5, 'Thạc sĩ, Bác sĩ', 'Đang làm việc', 'chanthuongchinhhinh.vuhoanglien@gmail.com'),
(53, '', 'Lê Trọng Phát', '1965-11-28', 'chanthuongchinhhinh.letrongphat@gmail.com', 933221199, 209876543210, '1990-11-15', NULL, 'letrongphat.jpg', 200000, 5, 'Tiến sĩ, Bác sĩ', 'Đang làm việc', 'chanthuongchinhhinh.letrongphat@gmail.com'),
(54, '', 'Phạm Thị Hồng Hoa', '1970-05-15', 'thantietnieu.phamthihonghoa@gmail.com', 901122881, 45678901234, '1995-10-10', NULL, 'phamthihonghoa.jpg', 300000, 12, 'Tiến sĩ, Bác sĩ cao cấp, Thầy thuốc ưu tú', 'Đang làm việc', 'thantietnieu.phamthihonghoa@gmail.com'),
(55, '', 'Nguyễn Văn Nghị', '1978-12-01', 'thantietnieu.nguyenvannghi@gmail.com', 988776681, 156789012345, '2003-07-01', NULL, 'nguyenvannghi.jpg', 270000, 12, 'Thạc sĩ, Bác sĩ', 'Đang làm việc', 'thantietnieu.nguyenvannghi@gmail.com'),
(56, '', 'Đào Đức Phong', '1982-06-20', 'thantietnieu.daoducphong@gmail.com', 933221181, 267890123456, '2008-04-15', NULL, 'daoducphong.jpg', 300000, 12, 'Thạc sĩ, Bác sĩ Nội trú', 'Đang làm việc', 'thantietnieu.daoducphong@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `benhnhan`
--

CREATE TABLE `benhnhan` (
  `mabenhnhan` int(11) UNSIGNED NOT NULL,
  `hotenbenhnhan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `nghenghiep` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `cccdbenhnhan` bigint(200) DEFAULT NULL,
  `dantoc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sdtbenhnhan` int(12) DEFAULT NULL,
  `tinh/thanhpho` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `quan/huyen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `xa/phuong` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sonha` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hotenthannhan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `quanhe` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sdtthannhan` int(12) DEFAULT NULL,
  `cccdthannhan` bigint(200) DEFAULT NULL,
  `tiensubenhtatcuagiadinh` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `tiensubenhtatcuabenhnhan` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `nhommau` varchar(5) DEFAULT NULL,
  `tentk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `benhnhan`
--

INSERT INTO `benhnhan` (`mabenhnhan`, `hotenbenhnhan`, `ngaysinh`, `gioitinh`, `nghenghiep`, `cccdbenhnhan`, `dantoc`, `email`, `sdtbenhnhan`, `tinh/thanhpho`, `quan/huyen`, `xa/phuong`, `sonha`, `hotenthannhan`, `quanhe`, `sdtthannhan`, `cccdthannhan`, `tiensubenhtatcuagiadinh`, `tiensubenhtatcuabenhnhan`, `nhommau`, `tentk`) VALUES
(1, 'Kien Ngô', '1985-01-01', 'Nam', 'Kỹ sư', 123456789012, 'Kinh', 'kienngo@gmail.com', 901234567, 'Hà Nội', 'Hoàn Kiếm', 'Phường Hàng Bạc', '12A Đường Lê Duẩn', 'Ngô Thị Mai', 'Vợ', 912345678, 123456789013, 'Không', 'Không', 'O+', 'kienngo@gmail.com\r\n'),
(2, 'Hùng Đinh', '1990-03-15', 'Nam', 'Giáo viên', 234567890123, 'Kinh', 'hungdinh@example.com', 902345678, 'Hồ Chí Minh', 'Quận 1', 'Phường Bến Nghé', '34 Đường Nguyễn Huệ', 'Đinh Thị Lan', 'Chị gái', 923456789, 234567890124, 'Có', 'Không', 'A+', ''),
(3, 'Việt Nguyễn', '1980-05-20', 'Nam', 'Bác sĩ', 345678901234, 'Kinh', 'vietnguyen@example.com', 903456789, 'Đà Nẵng', 'Quận Hải Châu', 'Phường Thạch Thang', '56 Đường Phan Châu Trinh', 'Nguyễn Thị Thu', 'Mẹ', 934567890, 345678901235, 'Có', 'Có', 'B+', ''),
(4, 'Sơn Kiều', '1986-07-12', 'Nam', 'Lập trình viên', 456789012345, 'Kinh', 'sonkieuanh@example.com', 904567890, 'Hà Nội', 'Cầu Giấy', 'Phường Dịch Vọng', '78 Đường Trần Duy Hưng', 'Kiều Thị Lan', 'Chị', 945678901, 456789012346, 'Không', 'Không', 'O-', ''),
(5, 'Hương Sơn', '1983-09-30', 'Nữ', 'Kế toán', 567890123456, 'Kinh', 'huongson@example.com', 905678901, 'Hồ Chí Minh', 'Quận 3', 'Phường 12', '123 Đường Lý Thường Kiệt', 'Sơn Thị Minh', 'Chồng', 956789012, 567890123457, 'Có', 'Có', 'A-', ''),
(6, 'Quyên Lê', '1995-02-10', 'Nữ', 'Nhân viên', 678901234567, 'Kinh', 'quyenle@example.com', 906789012, 'Hà Nội', 'Ba Đình', 'Phường Kim Mã', '22 Đường Đội Cấn', 'Lê Thị Mai', 'Chị gái', 967890123, 678901234568, 'Không', 'Không', 'AB+', ''),
(7, 'Linh Dương', '1992-08-19', 'Nữ', 'Marketing', 789012345678, 'Kinh', 'linhduong@example.com', 907890123, 'Hồ Chí Minh', 'Quận 10', 'Phường 3', '99 Đường Cách Mạng Tháng 8', 'Dương Thị Lan', 'Mẹ', 978901234, 789012345679, 'Có', 'Không', 'B-', ''),
(8, 'Hiếu Ngô', '1990-04-17', 'Nam', 'Kỹ sư', 890123456789, 'Kinh', 'hieungo@example.com', 908901234, 'Đà Nẵng', 'Quận Sơn Trà', 'Phường Mỹ An', '45 Đường Nguyễn Văn Linh', 'Ngô Thị Thu', 'Vợ', 989012345, 890123456790, 'Có', 'Có', 'O+', ''),
(9, 'Thuỳ Linh', '1988-06-25', 'Nữ', 'Giáo viên', 987654321098, 'Kinh', 'thuylinh@example.com', 909876543, 'Cần Thơ', 'Quận Ninh Kiều', 'Phường An Cư', '123 Đường Nguyễn Văn Cừ', 'Lê Thị Tuyết', 'Chị gái', 912345670, 987654321099, 'Không', 'Không', 'AB+', ''),
(10, 'Vũ Minh', '1991-11-10', 'Nam', 'Nhân viên', 123456789013, 'Kinh', 'vuminh@example.com', 902345670, 'Hà Nội', 'Long Biên', 'Phường Ngọc Lâm', '123 Đường Nguyễn Văn Cừ', 'Minh Thị Hoa', 'Vợ', 912345678, 123456789014, 'Không', 'Có', 'O+', ''),
(11, 'Hải An', '1993-04-25', 'Nữ', 'Tư vấn viên', 234567890123, 'Kinh', 'haian@example.com', 902345671, 'Hồ Chí Minh', 'Quận 5', 'Phường 3', '45 Đường Nguyễn Trãi', 'An Thị Lan', 'Chị gái', 912345679, 234567890124, 'Không', 'Không', 'A-', ''),
(12, 'Tú Anh', '1994-02-14', 'Nữ', 'Nhân viên văn phòng', 345678901234, 'Kinh', 'tuanh@example.com', 903456782, 'Hà Nội', 'Đống Đa', 'Phường Nam Đồng', '67 Đường Tôn Đức Thắng', 'Anh Thị Minh', 'Mẹ', 923456781, 345678901235, 'Có', 'Có', 'B+', ''),
(13, 'Đức Kiên', '1989-06-18', 'Nam', 'Kỹ sư xây dựng', 456789012345, 'Kinh', 'duckiên@example.com', 904567893, 'Hà Nội', 'Thanh Xuân', 'Phường Khương Mai', '123 Đường Nguyễn Lương Bằng', 'Kiên Thị Thu', 'Chị', 934567892, 456789012346, 'Không', 'Không', 'O-', ''),
(14, 'Thanh Hương', '1992-12-03', 'Nữ', 'Giảng viên', 567890123456, 'Kinh', 'thanhhuong@example.com', 905678904, 'Hồ Chí Minh', 'Quận 7', 'Phường Tân Phong', '12 Đường Nguyễn Lương Bằng', 'Hương Thị Minh', 'Chồng', 945678903, 567890123457, 'Có', 'Có', 'A+', ''),
(15, 'Ngọc Sơn', '1985-01-29', 'Nam', 'Lập trình viên', 678901234567, 'Kinh', 'ngocson@example.com', 906789015, 'Đà Nẵng', 'Quận Liên Chiểu', 'Phường Hòa Minh', '45 Đường Phạm Văn Đồng', 'Sơn Thị Mai', 'Mẹ', 956789014, 678901234568, 'Có', 'Không', 'AB+', ''),
(16, 'Vân Quỳnh', '1990-07-20', 'Nữ', 'Kế toán', 789012345678, 'Kinh', 'vanquynh@example.com', 907890126, 'Cần Thơ', 'Quận Ninh Kiều', 'Phường Cái Khế', '23 Đường 3 Tháng 2', 'Quỳnh Thị Lan', 'Chị gái', 967890125, 789012345679, 'Không', 'Không', 'B-', ''),
(17, 'Phong Duy', '1988-03-17', 'Nam', 'Giám đốc', 890123456789, 'Kinh', 'phongduy@example.com', 908901237, 'Hà Nội', 'Hoàng Mai', 'Phường Thịnh Liệt', '99 Đường Giải Phóng', 'Duy Thị Thu', 'Vợ', 989012346, 890123456790, 'Có', 'Có', 'O+', ''),
(18, 'Tú Vũ', '1991-10-12', 'Nam', 'Bác sĩ', 901234567890, 'Kinh', 'tuvũ@example.com', 909012348, 'Hồ Chí Minh', 'Quận Bình Thạnh', 'Phường 21', '56 Đường Điện Biên Phủ', 'Vũ Thị Lan', 'Mẹ', 910123456, 901234567891, 'Có', 'Có', 'A+', ''),
(19, 'Hoàng Nam', '1987-05-22', 'Nam', 'Giám đốc', 12345678901, 'Kinh', 'hoangnam@example.com', 901234578, 'Hà Nội', 'Cầu Giấy', 'Phường Yên Hòa', '123 Đường Trần Duy Hưng', 'Nam Thị Mai', 'Vợ', 911234567, 12345678902, 'Không', 'Có', 'B+', ''),
(20, 'Tuấn Kiên', '1986-09-11', 'Nam', 'Giám đốc', 987654321098, 'Kinh', 'tuankien@example.com', 909876543, 'Cần Thơ', 'Quận Ninh Kiều', 'Phường An Cư', '123 Đường Nguyễn Văn Cừ', 'Kiên Thị Lan', 'Mẹ', 912345670, 987654321099, 'Không', 'Không', 'AB+', ''),
(21, 'Quang Bình', '1990-08-04', 'Nam', 'Nhân viên bán hàng', 123467890012, 'Kinh', 'quangbinh@example.com', 902345679, 'Hà Nội', 'Hai Bà Trưng', 'Phường Bạch Mai', '12 Đường Lê Duẩn', 'Bình Thị Lan', 'Mẹ', 912345678, 123467890013, 'Không', 'Có', 'O+', ''),
(22, 'Bảo Ngọc', '1993-09-18', 'Nữ', 'Học sinh', 234578901123, 'Kinh', 'baongoc@example.com', 902345680, 'Hồ Chí Minh', 'Quận 8', 'Phường 6', '23 Đường Phạm Thế Hiển', 'Ngọc Thị Lan', 'Chị gái', 912345681, 234578901124, 'Không', 'Không', 'A-', ''),
(23, 'Hồng Sơn', '1989-01-15', 'Nam', 'Bác sĩ', 345689012234, 'Kinh', 'hongson@example.com', 903456782, 'Đà Nẵng', 'Quận Thanh Khê', 'Phường Chính Gián', '67 Đường Lê Đình Lý', 'Sơn Thị Mai', 'Mẹ', 923456783, 345689012235, 'Có', 'Có', 'B+', ''),
(24, 'Linh Tùng', '1987-12-20', 'Nữ', 'Giám đốc Marketing', 456790123345, 'Kinh', 'linhtung@example.com', 904567895, 'Hà Nội', 'Tây Hồ', 'Phường Thụy Khuê', '89 Đường Lạc Long Quân', 'Tùng Thị Thu', 'Chồng', 934567896, 456790123346, 'Có', 'Có', 'O-', ''),
(25, 'Thanh Hương', '1995-07-03', 'Nữ', 'Bồi bàn', 567891234456, 'Kinh', 'thanhhuong@example.com', 905678906, 'Hồ Chí Minh', 'Quận 2', 'Phường An Khánh', '54 Đường Lương Định Của', 'Hương Thị Mai', 'Chị gái', 945678907, 567891234457, 'Không', 'Không', 'AB+', ''),
(26, 'Mạnh Quân', '1990-06-10', 'Nam', 'Lập trình viên', 678902345567, 'Kinh', 'manhquan@example.com', 906789018, 'Hà Nội', 'Cầu Giấy', 'Phường Dịch Vọng Hậu', '23 Đường Trần Thái Tông', 'Quân Thị Lan', 'Chị', 956789019, 678902345568, 'Có', 'Có', 'B-', ''),
(27, 'Thảo Vy', '1992-11-30', 'Nữ', 'Thiết kế đồ họa', 789013456678, 'Kinh', 'thaovy@example.com', 907890129, 'Cần Thơ', 'Quận Ninh Kiều', 'Phường An Cư', '56 Đường Nguyễn Văn Cừ', 'Vy Thị Mai', 'Chị gái', 967890130, 789013456679, 'Không', 'Không', 'O+', ''),
(28, 'Anh Tú', '1988-10-17', 'Nam', 'Giáo viên', 890124567789, 'Kinh', 'anhtu@example.com', 908901239, 'Đà Nẵng', 'Quận Hải Châu', 'Phường Thuận Phước', '45 Đường Phan Châu Trinh', 'Tú Thị Thu', 'Mẹ', 989012340, 890124567790, 'Có', 'Có', 'A+', ''),
(29, 'Nhã Lan', '1994-03-29', 'Nữ', 'Nhân viên chăm sóc khách hàng', 901235678890, 'Kinh', 'nhalan@example.com', 909012341, 'Hồ Chí Minh', 'Quận Bình Tân', 'Phường Bình Hưng Hòa', '123 Đường Hương Lộ 2', 'Lan Thị Mai', 'Chị gái', 990123456, 901235678891, 'Có', 'Không', 'AB-', ''),
(30, 'Tuyết Mai', '1991-04-22', 'Nữ', 'Kế toán trưởng', 12346789012, 'Kinh', 'tuyetmai@example.com', 901234570, 'Hà Nội', 'Ba Đình', 'Phường Kim Mã', '34 Đường Nguyễn Chí Thanh', 'Mai Thị Lan', 'Mẹ', 912345671, 12346789013, 'Không', 'Có', 'B+', ''),
(31, 'Phương Vy', '1993-05-07', 'Nữ', 'Nhân viên tư vấn', 123467890134, 'Kinh', 'phuongvy@example.com', 902345682, 'Hồ Chí Minh', 'Quận 4', 'Phường 12', '45 Đường Nguyễn Tất Thành', 'Vy Thị Lan', 'Chị gái', 912345683, 123467890135, 'Không', 'Không', 'O+', ''),
(42, 'Lê Thị Bình', '2000-02-22', NULL, NULL, NULL, NULL, 'abc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abc@gmail.com'),
(43, 'Nguyễn Thanh Hải', '2000-02-22', NULL, NULL, NULL, NULL, 'hai@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hai@gmail.com'),
(44, 'nguyễn văn ba', '1999-02-22', NULL, NULL, NULL, NULL, 'ba@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ba@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calamviec`
--

CREATE TABLE `calamviec` (
  `macalamviec` int(11) UNSIGNED NOT NULL,
  `tenca` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giobatdau` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `gioketthuc` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `calamviec`
--

INSERT INTO `calamviec` (`macalamviec`, `tenca`, `giobatdau`, `gioketthuc`) VALUES
(1, 'Ca sáng', '06:00', '14:00'),
(2, 'Ca trưa', '14:00', '22:00'),
(3, 'Ca tối', '22:00', '06:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonthuoc`
--

CREATE TABLE `chitietdonthuoc` (
  `id` int(11) NOT NULL,
  `madonthuoc` int(11) UNSIGNED NOT NULL,
  `mathuoc` int(11) UNSIGNED NOT NULL,
  `lieudung` varchar(255) NOT NULL,
  `thoigianuong` varchar(255) NOT NULL,
  `songayuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonthuoc`
--

INSERT INTO `chitietdonthuoc` (`id`, `madonthuoc`, `mathuoc`, `lieudung`, `thoigianuong`, `songayuong`) VALUES
(1, 1, 19, '1 viên/lần', 'Sáng sau ăn', 30),
(2, 1, 21, '1 viên/lần', 'Tối sau ăn', 30),
(3, 2, 3, '1 viên/lần', 'Sáng-Trưa-Tối sau ăn', 7),
(4, 2, 16, '1 viên/lần', 'Khi sốt trên 38.5°C, cách 6h/lần', 5),
(5, 3, 18, '1 viên/lần', 'Sáng trước ăn 30 phút', 14),
(6, 3, 16, '1 viên/lần', 'Khi đau, cách 6h/lần', 7),
(7, 4, 16, '1-2 viên/lần', 'Khi đau, cách 6h/lần', 5),
(8, 4, 9, '1 viên/lần', 'Sáng-Tối sau ăn', 7),
(9, 5, 3, '1 viên/lần', 'Sáng-Trưa-Tối sau ăn', 7),
(10, 5, 8, '1 viên/lần', 'Tối trước khi ngủ', 10),
(11, 5, 16, '1 viên/lần', 'Khi sốt trên 38.5°C, cách 6h/lần', 5),
(12, 6, 8, '1 viên/lần', 'Sáng sau ăn', 10),
(13, 6, 10, '1 viên/lần', 'Sáng sau ăn', 5),
(14, 7, 20, '1 viên/lần', 'Sáng-Tối sau ăn', 30),
(15, 8, 14, '1 viên/lần', 'Sáng-Tối sau ăn', 7),
(16, 8, 16, '1 viên/lần', 'Khi sốt trên 38.5°C, cách 6h/lần', 5),
(17, 8, 9, '1 viên/lần', 'Sáng-Tối sau ăn', 10),
(18, 9, 16, '1 viên/lần', 'Khi sốt trên 38.5°C, cách 6h/lần', 5),
(19, 9, 8, '1 viên/lần', 'Sáng sau ăn', 5),
(20, 9, 9, '1 viên/lần', 'Sáng-Tối sau ăn', 7),
(21, 10, 12, '1 gói/lần', 'Tối trước khi ngủ 30 phút', 10),
(22, 11, 10, '1 viên/lần', 'Sáng sau ăn', 10),
(23, 11, 15, '1 viên/lần', 'Sáng-Tối sau ăn', 15),
(24, 12, 16, '1 viên/lần', 'Khi đau, cách 6h/lần', 10),
(25, 12, 10, '1 viên/lần', 'Sáng sau ăn', 7),
(26, 13, 18, '1 viên/lần', 'Sáng trước ăn 30 phút', 10),
(27, 14, 9, '1 viên/lần', 'Sáng-Tối sau ăn', 30),
(28, 15, 21, '1 viên/lần', 'Tối sau ăn', 30),
(29, 16, 19, '1 viên/lần', 'Sáng sau ăn', 30),
(30, 16, 21, '1 viên/lần', 'Tối sau ăn', 30),
(31, 51, 19, '1 viên/lần', 'Sáng sau ăn', 30),
(32, 51, 21, '1 viên/lần', 'Tối sau ăn', 30),
(33, 52, 3, '1 viên/lần', 'Sáng-Trưa-Tối sau ăn', 7),
(34, 52, 16, '1 viên/lần', 'Khi sốt trên 38.5°C, cách 6h/lần', 5),
(35, 53, 18, '1 viên/lần', 'Sáng trước ăn 30 phút', 14),
(36, 53, 16, '1 viên/lần', 'Khi đau, cách 6h/lần', 7),
(37, 54, 16, '1-2 viên/lần', 'Khi đau, cách 6h/lần', 5),
(38, 54, 9, '1 viên/lần', 'Sáng-Tối sau ăn', 7),
(39, 55, 3, '1 viên/lần', 'Sáng-Trưa-Tối sau ăn', 7),
(40, 55, 8, '1 viên/lần', 'Tối trước khi ngủ', 10),
(41, 56, 8, '1 viên/lần', 'Sáng sau ăn', 10),
(42, 56, 10, '1 viên/lần', 'Sáng sau ăn', 5),
(43, 57, 20, '1 viên/lần', 'Sáng-Tối sau ăn', 30),
(44, 58, 14, '1 viên/lần', 'Sáng-Tối sau ăn', 7),
(45, 58, 16, '1 viên/lần', 'Khi sốt trên 38.5°C, cách 6h/lần', 5),
(46, 59, 16, '1 viên/lần', 'Khi sốt trên 38.5°C, cách 6h/lần', 5),
(47, 59, 8, '1 viên/lần', 'Sáng sau ăn', 5),
(48, 59, 9, '1 viên/lần', 'Sáng-Tối sau ăn', 7),
(49, 8, 11, '1 gói/lần', 'Sáng-Tối sau ăn', 5),
(50, 9, 2, '1 viên/lần', 'Sáng-Tối sau ăn', 5),
(51, 1, 22, '1 viên/lần', 'Sáng sau ăn', 30),
(52, 7, 21, '1 viên/lần', 'Tối sau ăn', 30),
(53, 3, 4, '1 viên/lần', 'Khi đau, cách 6h/lần', 5),
(54, 5, 2, '1 viên/lần', 'Sáng-Tối sau ăn', 5),
(55, 6, 5, '1 viên/lần', 'Sáng-Tối sau ăn', 7),
(56, 10, 6, '15ml/lần', 'Tối trước khi ngủ', 10),
(57, 11, 7, '1 gói/lần', 'Sáng-Tối sau ăn', 7),
(58, 12, 12, '1 gói/lần', 'Sáng sau ăn', 15),
(59, 13, 13, '1 viên/lần', 'Sáng-Tối sau ăn', 7),
(60, 14, 17, '1 viên/lần', 'Sáng-Tối sau ăn', 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoso`
--

CREATE TABLE `chitiethoso` (
  `machitiethoso` int(10) UNSIGNED NOT NULL,
  `mahoso` int(11) UNSIGNED NOT NULL,
  `ngaykham` date NOT NULL,
  `trieuchungbandau` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `chandoan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `huongdieutri` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `madonthuoc` int(11) UNSIGNED DEFAULT NULL,
  `ketluan` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoso`
--

INSERT INTO `chitiethoso` (`machitiethoso`, `mahoso`, `ngaykham`, `trieuchungbandau`, `chandoan`, `huongdieutri`, `madonthuoc`, `ketluan`) VALUES
(1, 1, '2024-04-17', 'Đau ngực, khó thở khi gắng sức, huyết áp cao 160/95 mmHg', 'Tăng huyết áp độ II, nghi ngờ bệnh mạch vành', 'Điều trị nội khoa, kiểm soát huyết áp, chế độ ăn giảm muối', 1, 'Cần theo dõi huyết áp hàng ngày, tái khám sau 1 tháng'),
(2, 2, '2024-04-17', 'Đau ngực, khó thở, mệt mỏi', 'Hở van tim hai lá nhẹ, chức năng tim bình thường', 'Theo dõi định kỳ, không cần can thiệp phẫu thuật', 2, 'Tái khám sau 6 tháng, siêu âm tim kiểm tra'),
(3, 3, '2024-04-17', 'Đau thượng vị, ợ chua, khó tiêu kéo dài 2 tháng', 'Viêm loét dạ dày, trào ngược dạ dày thực quản', 'Điều trị nội khoa, chế độ ăn uống, tránh rượu bia', 3, 'Cần uống thuốc đều đặn, tái khám sau 1 tháng'),
(4, 4, '2024-04-17', 'Đau hạ sườn phải, vàng da, vàng mắt', 'Viêm gan cấp, men gan tăng cao', 'Nghỉ ngơi, chế độ ăn nhẹ, kiêng rượu bia', 4, 'Cần xét nghiệm men gan lại sau 2 tuần'),
(5, 5, '2024-04-17', 'Nhìn mờ, mỏi mắt khi làm việc với máy tính', 'Cận thị nhẹ, khô mắt do làm việc với máy tính', 'Sử dụng kính, nhỏ mắt nhân tạo, nghỉ mắt định kỳ', 5, 'Cần đeo kính khi làm việc, tái khám sau 6 tháng'),
(6, 6, '2024-04-17', 'Nhìn mờ, khó đọc chữ nhỏ', 'Viễn thị, lão thị', 'Đeo kính điều chỉnh', 6, 'Cần đeo kính thường xuyên, tái khám sau 1 năm'),
(7, 7, '2024-04-17', 'Đau họng, khó nuốt, sốt nhẹ', 'Viêm amidan cấp', 'Điều trị kháng sinh, giảm đau, súc họng', 7, 'Uống thuốc đủ liều, tái khám nếu không đỡ sau 5 ngày'),
(8, 8, '2024-04-17', 'Nghẹt mũi, chảy mũi, đau đầu vùng trán', 'Viêm xoang mạn tính', 'Điều trị kháng sinh, rửa mũi, xông mũi', 8, 'Cần điều trị dứt điểm, tránh tái phát'),
(9, 9, '2024-04-17', 'Vết thương hở ở cẳng tay, chảy máu', 'Vết thương hở không nhiễm trùng', 'Làm sạch vết thương, khâu vết thương, băng vô trùng', 9, 'Thay băng sau 2 ngày, cắt chỉ sau 7 ngày'),
(10, 10, '2024-04-17', 'Vết thương sau phẫu thuật ruột thừa', 'Vết mổ liền tốt, không nhiễm trùng', 'Thay băng vô trùng, tiếp tục điều trị kháng sinh', 10, 'Tiếp tục thay băng mỗi 2 ngày, tái khám sau 1 tuần'),
(11, 11, '2024-04-17', 'Đau khớp gối, sưng, khó vận động', 'Viêm khớp gối, thoái hóa khớp', 'Điều trị giảm đau, chống viêm, vật lý trị liệu', 11, 'Cần tập vật lý trị liệu đều đặn, giảm cân nếu thừa cân'),
(12, 12, '2024-04-17', 'Gãy xương cẳng tay, đau, sưng', 'Gãy xương quay 1/3 dưới', 'Bó bột, giảm đau, theo dõi', 12, 'Tái khám sau 2 tuần để kiểm tra bột và X-quang'),
(13, 13, '2024-04-17', 'Tiểu buốt, tiểu rắt, đau vùng hạ vị', 'Viêm đường tiết niệu', 'Điều trị kháng sinh, uống nhiều nước', 13, 'Uống thuốc đủ liều, xét nghiệm nước tiểu lại sau điều trị'),
(14, 14, '2024-04-17', 'Đau vùng thắt lưng, tiểu máu', 'Sỏi thận 5mm bên phải', 'Điều trị nội khoa, uống nhiều nước', 14, 'Tái khám sau 1 tháng, siêu âm kiểm tra'),
(15, 15, '2024-04-17', 'Thai 28 tuần, phát triển bình thường', 'Thai phát triển bình thường, tim thai 140 lần/phút', 'Bổ sung sắt, acid folic, vitamin', 15, 'Tái khám sau 2 tuần'),
(16, 16, '2024-04-17', 'Khí hư bất thường, ngứa vùng kín', 'Viêm âm đạo do nấm Candida', 'Điều trị kháng nấm, vệ sinh vùng kín', 16, 'Tái khám sau 1 tuần nếu không đỡ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyenkhoa`
--

CREATE TABLE `chuyenkhoa` (
  `machuyenkhoa` int(11) UNSIGNED NOT NULL,
  `tenchuyenkhoa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mota` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `dichvu` varchar(5000) NOT NULL,
  `trangthai` int(11) DEFAULT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chuyenkhoa`
--

INSERT INTO `chuyenkhoa` (`machuyenkhoa`, `tenchuyenkhoa`, `mota`, `dichvu`, `trangthai`, `img`) VALUES
(1, 'KHOA CƠ XƯƠNG KHỚP', 'Nếu các bệnh lý tim mạch là nguyên nhân hàng đầu gây tử vong thì bệnh lý cơ xương khớp đứng đầu trong một loạt nguyên nhân dẫn đến tàn phế. Xã hội càng hiện đại, số ca mắc các bệnh lý này càng cao. Chẳng những vậy, bệnh xương khớp giờ đây đã không còn là căn bệnh của riêng người già mà có xu hướng ngày càng trẻ hóa.\r\n\r\nViệt Nam được xếp vào nhóm những quốc gia có tỷ lệ mắc bệnh xương khớp cao nhất thế giới. Số liệu thống kê cho thấy có khoảng 30% người trên 35 tuổi, 60% người trên 65 tuổi và 85% người trên 80 tuổi bị thoái hóa khớp – một trong những bệnh lý xương khớp phổ biến nhất ở nước ta.\r\n\r\nTin vui là những bệnh lý cơ xương khớp nếu được chẩn đoán, điều trị sớm và đúng cách thì có thể điều trị hiệu quả. Người bệnh không còn đau đớn và không gặp phải nguy cơ biến dạng chi thể hay tàn phế. Vì vậy, ngày càng có nhiều bệnh nhân xương khớp chủ động đi tầm soát, thăm khám để cải thiện triệu chứng và phòng ngừa biến chứng bệnh.\r\n\r\nKhoa Cơ xương khớp Bệnh viện Hạnh Phúc được thành lập đã đáp ứng nhu cầu khám, tầm soát và điều trị bệnh cơ xương khớp đang ngày càng gia tăng ở Việt Nam.', 'Khoa Nội cơ xương khớp BV Hạnh Phúc chuyên chẩn đoán và điều trị các bệnh lý xương khớp như:\r\n- Loãng xương, thoái hóa khớp, thoái hóa cột sống cổ, thoái hóa cột sống thắt lưng, bệnh gân cơ, đau thần kinh tọa, thoát vị địa đệm, viêm quanh khớp và các điểm bám gân khác, đau do xơ cơ.\r\n- Các bệnh khớp chuyển hóa như viêm khớp gout, bệnh gout cấp và mạn tính\r\n- Các bệnh khớp tự miễn như viêm khớp dạng thấp, viêm cột sống dính khớp, viêm khớp nhiễm khuẩn, viêm khớp phản ứng, viêm khớp vảy nến…\r\n- Các bệnh mô liên kết khác như lupus, viêm da cơ, xơ cứng bì, viêm mạch…\r\n- Các bệnh lý về gân cơ: viêm quanh khớp vai, viêm lồi cầu xương cánh tay, viêm mỏm trâm quay, ngón tay lò xo, viêm gân cơ mông nhỡ, hội chứng đường hầm cổ tay, chân…\r\n- Hội chứng Morton, Felty, Sjogren, Elher- Danos, Raynaud…\r\n- Bệnh Behcet, Still, Paget, Wegener…', 0, 'khoa-noi-co-xuong-khop.png'),
(2, 'KHOA TIM MẠCH', 'Khoa Tim mạch BV Hạnh Phúc đảm nhận nhiệm vụ:\r\n- Chẩn đoán bệnh tim, mạch máu và lồng ngực.\r\n- Điều trị nội, ngoại khoa, can thiệp, và hồi sức cấp cứu cho những bệnh nhân tim mạch.\r\n- Giáo dục sức khỏe, hướng dẫn PHÒNG BỆNH cho bệnh nhân và cộng đồng.\r\n- Nghiên cứu khoa học: nghiên cứu cơ bản; nghiên cứu RCT; nghiên cứu sổ bộ; nghiên cứu phân tích tổng hợp (meta-analysis).', 'Khoa Khám bệnh ngoại trú:\r\n- Khám, chẩn đoán và điều trị bệnh tim người lớn\r\n- Khám, chẩn đoán và điều trị bệnh tim trẻ em\r\n- Khám, chẩn đoán, theo dõi bệnh tim bào thai\r\n- Tầm soát bệnh tim mạch từ bào thai, sơ sinh, trẻ em đến người trưởng thành\r\n- Theo dõi bệnh nhân sau mổ tim, lồng ngực, sau can thiệp, đặt máy tạo nhịp hay đặt dụng cụ trong tim\r\n- Khám hội chẩn: đánh giá tim mạch trước mổ ngoài tim, thai kỳ,…\r\nKhoa Nội Tim mạch:\r\n- Chẩn đoán và điều trị các bệnh tim mạch như tăng huyết áp, bệnh van tim, bệnh cơ tim, bệnh mạch vành, viêm nội tâm mạc nhiễm trùng, suy tim mạn mất bù,…\r\n- Hội chẩn Nội tim mạch: hội chẩn mổ tim, đánh giá tim mạch trước mổ ngoài tim\r\n- Hội chẩn Ngoại tim mạch: hội chẩn mổ tim và mạch vành\r\n- Nghiên cứu khoa học\r\nKhoa Ngoại tim mạch và lồng ngực:\r\n- Phẫu thuật tim cho trẻ sơ sinh, trẻ em và người lớn\r\n- Khám, chẩn đoán, điều trị bệnh lý lồng ngực – mạch máu: lõm ngực, u trung thất, u phổi, tăng tiết mồ hôi, bệnh động mạch cảnh, phình động mạch chủ…\r\nKhoa Thông tim can thiệp:\r\n- Chụp và can thiệp bệnh động mạch vành cấp\r\n- Chụp và can thiệp mạch vành theo chương trình\r\nNong van tim qua da (nong van 2 lá bằng bóng qua da, nong van động mạch phổi)\r\n- Can thiệp bệnh tim bẩm sinh trẻ em và người lớn: bít thông liên nhĩ, bít thông liên thất, bít ống động mạch, bít tuần hoàn bàng hệ bệnh tim bẩm sinh phức tạp, đặt stent ống động mạch…\r\nKhoa Loạn Nhịp và Điện Sinh lý tim:\r\n- Chẩn đoán và điều trị ngất, các bệnh lý rối loạn nhịp tim\r\n- Triệt đốt rung nhĩ, ngoại tâm thu bằng năng lượng sóng cao tần kết hợp bản đồ điện học 3D\r\nHội chẩn về nhịp học với các khoa lâm sàng khác của bệnh viện\r\n- Điều trị rối loạn nhịp nhanh bằng thủ thuật cắt đốt qua catheter\r\n- Đặt máy tạo nhịp (1 buồng, 2 buồng); máy phá rung cấy được (ICD); máy tái đồng bộ tim (CRT-P; CRT-D)\r\n- Kiểm tra và điều chỉnh máy tạo nhịp\r\n- Nghiên cứu về rối loạn nhịp, bệnh các kênh của tim\r\nKhoa Tim mạch Nhi:\r\n- Khám, chẩn đoán và điều trị bệnh tim bẩm sinh và mắc phải\r\n- Thực hiện thủ thuật điều trị bằng can thiệp: đặt stent ống động mạch, nong van động mạch phổi, bít thông liên nhĩ, bít thông liên thất, bít ống động mạch,…\r\n- Chăm sóc, theo dõi bệnh tim bẩm sinh từ bào thai\r\n- Theo dõi bệnh tim bẩm sinh ở người lớn\r\n- Theo dõi sau phẫu thuật tim, thông tim can thiệp…\r\nKhoa Hồi sức Nội:\r\n- Hồi sức nội bệnh tim mạch nặng: nhồi máu cơ tim cấp, suy tim cấp, sốc tim, suy tim giai đoạn cuối, bệnh nhân có dụng cụ hỗ trợ thất,..\r\n- Nghiên cứu điều trị các bệnh nặng\r\nKhoa Hồi sức Ngoại:\r\n- Hồi sức bệnh nhân trước và sau phẫu thuật tim mạch và lồng ngực\r\n- Nghiên cứu điều trị', 0, 'khoa-noitimmach.png'),
(3, 'KHOA NGOẠI TỔNG HỢP', 'Khoa Ngoại Tổng hợp chuyên can thiệp điều trị ngoại khoa các bệnh lý ngoại tiêu hóa, gan – mật – tụy, bệnh lý hậu môn – trực tràng, chấn thương – vết thương bụng, thoát vị bẹn – bụng, bệnh lý tuyến giáp, tuyến vú và phổi… Nhờ liên tục cập nhật tiến bộ y học, áp dụng các kỹ thuật mới giúp các bác sĩ phát hiện chính xác và điều trị hiệu quả các bệnh lý ngoại khoa.\r\n\r\nPhần lớn phương pháp điều trị được áp dụng tại khoa là phẫu thuật nội soi, ít xâm lấn như nội soi cắt dạ dày, cắt đại tràng, gan – túi mật, phẫu thuật cắt trĩ bằng laser… Đối với sỏi túi mật, sỏi ống mật chủ, các bác sĩ thường lựa chọn cắt túi mật qua nội soi và nội soi ngược dòng lấy sỏi ống mật chủ qua đường miệng. Bên cạnh đó, phương pháp tăng cường hồi phục sau mổ (ERAS) được ứng dụng hàng ngày cho các bệnh nhân phẫu thuật đại trực tràng và các phẫu thuật lớn về tiêu hóa, gan mật tụy tại khoa nhằm tăng khả năng hồi phục sớm, giảm tỉ lệ biến chứng sau mổ, nâng cao chất lượng sống cho người bệnh.', '1. Bệnh lý gan\r\n- Dẫn lưu áp xe gan\r\n- Phẫu thuật nội soi cắt gan\r\n- Phẫu thuật mở cắt gan\r\n2. Bệnh lý túi mật\r\n- Cắt túi mật\r\n- Phẫu thuật mở ống mật chủ lấy sỏi đường mật, dẫn lưu đường mật\r\n3. Bệnh lý lách – tụy\r\n- Cắt thân đuôi tụy kèm cắt lách\r\n- Cắt lách do chấn thương\r\n4. Bệnh lý đường tiêu hóa\r\n- Nối vị tràng.\r\n- Phẫu thuật cắt đoạn dạ dày, mở thông dạ dày, khâu lỗ thủng dạ dày tá tràng.\r\n- Nối tắt ruột non – đại tràng hoặc trực tràng.\r\n- Cắt ruột thừa.\r\n- Phẫu thuật cắt đoạn đại tràng nối ngay.\r\n- Phẫu thuật nội soi trực tràng, sa trực tràng, đại trực tràng, nối tắt ruột non…\r\n- Phẫu thuật điều trị sa trực tràng đường bụng.\r\n- Phẫu thuật cắt trĩ.\r\n- Phẫu thuật điều trị viêm phúc mạc ruột thừa, phẫu thuật áp xe ruột thừa.\r\n- Phẫu thuật điều trị tắc ruột do bã thức ăn.\r\n- Đóng hậu môn nhân tạo.\r\n', 0, 'icon-ngoaitonghop.png'),
(4, 'KHOA NGOẠI LỒNG NGỰC – MẠCH MÁU', 'Đội ngũ y bác sĩ của khoa được đào tạo bài bản và chuyên sâu các kỹ thuật chuyên về phẫu thuật, can thiệp lồng ngực – mạch máu. \r\nKhoa đầu tư hệ thống máy móc, trang thiết bị hiện đại, hỗ trợ tối đa cho việc chẩn đoán nhanh chóng, chính xác và nâng cao hiệu quả trong điều trị các bệnh lý về lồng ngực, mạch máu như:\r\n- Hệ thống chụp & can thiệp mạch số hóa xóa nền (DSA) Philips Azurion Robotic Ceiling FlexArm hiện đại, tích hợp các phần mềm & công cụ tối ưu trong can thiệp bệnh động mạch chủ, mạch máu ngoại biên.\r\n- Máy CT 1975 lát cắt ứng dụng AI, tốc độ quay chụp nhanh nhất thế giới, giúp phát hiện nhanh tổn thương siêu nhỏ; tầm soát, chẩn đoán chính xác rung nhĩ với liều xạ thấp.\r\n- Máy chụp MRI 3 Tesla Siemens Magnetom Lumina.\r\n- Hệ thống máy siêu âm 4D tích hợp AI GE Healthcare Vivid E95 hỗ trợ chẩn đoán chính xác bệnh lý mạch máu.\r\n- Phòng mổ Hybrid  “2 trong 1” hiện đại đạt tiêu chuẩn quốc tế.\r\n- Hệ thống X-Quang kỹ thuật số treo trần cao cấp.\r\n- Hệ thống phẫu thuật nội soi 3D/4K Karl Storz tích hợp công nghệ hình ảnh đỉnh cao với độ phân giải 4K sắc nét, hỗ trợ tối đa trong phẫu thuật nội soi lồng ngực.\r\n- Robot Davinci XI thế hệ mới dự kiến được đưa vào hoạt động vào đầu năm 2025. Đây là hệ thống phẫu thuật bằng robot sử dụng phương pháp xâm lấn tối thiểu, với 4 cánh tay được trang bị dụng cụ phẫu thuật và camera giúp bác sĩ có thể điều khiển từ xa. Hệ thống bao gồm tầm nhìn 3DHD tiên tiến, chức năng chụp ảnh huỳnh quang Firefly giúp quan sát và đánh giá thời gian thực các mạch máu, tưới máu mô.', 'Cung cấp dịch vụ cao cấp, chuyên nghiệp, mang đến cho khách hàng cảm nhận hoàn toàn mới về quy trình khám và chăm sóc sức khỏe với các kỹ thuật tiên tiến như:\r\n- Kỹ thuật Hybrid (can thiệp và phẫu thuật đồng thời) đặt Stent Graft trong phình tách động mạch chủ.\r\n- Chụp, nong và đặt stent mạch máu ngoại biên: stent động mạch cảnh, stent động mạch thận, can thiệp động mạch chi, đặt filter tĩnh mạch chi dưới…\r\n- Đặt lưới lọc tĩnh mạch chủ dưới.\r\n- Phẫu thuật u tuyến giáp, ung thư tuyến giáp…\r\n- Phẫu thuật/can thiệp bệnh mạch máu: động mạch chủ bụng – ngực – đùi, động mạch cảnh, động mạch đốt sống, đường chạy thận nhân tạo, mạch máu ngoại biên khác…\r\n- Phẫu thuật nội soi điều trị các bệnh ở lồng ngực: phổi, màng phổi, trung thất, thực quản, tuyến ức, xương sườn, cột sống, cơ hoành…\r\n- Phẫu thuật/đốt sóng cao tần u tuyến giáp.\r\n- Phẫu thuật cắt hạch giao cảm.\r\n- Tiêm xơ tĩnh mạch, can thiệp nội mạch đốt tĩnh mạch hiển bằng laser/sóng cao tần/keo sinh học điều trị suy giãn tĩnh mạch…\r\n- Phẫu thuật nội soi với hệ thống Robot Da Vinci XI trong cắt u/ung thư phổi, các khối u trung thất, u tuyến ức, cắt tuyến giáp, mổ van tim, tim bẩm sinh thông liên nhĩ…', 0, 'icon-khoa-long-nguc-mach-mau.png'),
(5, 'KHOA CHẤN THƯƠNG CHỈNH HÌNH', 'Với cơ cấu gồm 8 khoa và 2 đơn vị chuyên khoa:\r\n- Khoa Tái tạo khớp\r\n- Khoa Thần kinh Cột sống\r\n- Khoa Y học thể thao & Nội soi\r\n- Khoa Chấn thương Chỉnh hình\r\n- Khoa Vi phẫu tạo hình & Bàn tay\r\n- Khoa Lão khoa Cơ xương khớp\r\n- Khoa Bướu xương & phần mềm\r\n- Khoa Phục hồi chức năng – Vật lý trị liệu\r\n- Đơn vị Thần kinh cơ\r\n- Đơn vị Nghiên cứu & Đào tạo\r\nKhoa Chấn thương chỉnh hình BV Hạnh Phúc tự tin làm chủ những kỹ thuật điều trị, phẫu thuật chấn thương chỉnh hình tiên tiến nhất thế giới. Cụ thể là:\r\n- Phẫu thuật thay khớp háng Superpath giúp bệnh nhân phục hồi nhanh chóng sau mổ.\r\n- Phẫu thuật thay khớp gối giúp bệnh nhân đi lại bình thường sau mổ.\r\n- Phẫu thuật điều trị cột sống ít xâm lấn với sự hỗ trợ của robot.\r\n- Điều trị tất cả các tổn thương phần mềm do bỏng, vết thương… giúp bệnh nhân phục hồi nhanh chóng, rút ngắn thời gian nằm viện.\r\n- Điều trị các bệnh lý nội cơ xương khớp như viêm khớp dạng thấp, viêm cột sống dính khớp… với liệu trình tốt nhất, mang lại hiệu quả điều trị sớm nhất.\r\n- Kỹ thuật tái tạo dây chằng khớp gối bằng dây chằng nhân tạo đầu tiên tại Việt Nam, thời gian mổ nhanh, không phải lấy gân từ vị trí khác, đặc biệt là có thể quay lại chơi thể thao rất sớm sau phẫu thuật.\r\n- Kỹ thuật bảo tồn dây chằng bằng phương pháp nối dây chằng với các chấn thương dưới 3 tuần.\r\n- Khâu rách sụn chêm bằng súng chuyên dụng', '- Thay khớp háng, khớp gối.\r\n- Điều trị các chấn thương mới: Gãy xương, sai khớp, vết thương bàn tay, chi thể đứt lìa, đứt mạch máu, thần kinh ngoại vi…\r\n- Điều trị di chứng chấn thương: Chậm liền xương, khớp giả, liền lệch, viêm xương tủy xương.\r\n- Phẫu thuật chấn thương: Thay khớp nhân tạo; -- Phẫu thuật cột sống; Phẫu thuật kết hợp điều trị cong vẹo cột sống; Phẫu thuật kết hợp xương điều trị gãy đốt sống; Phẫu thuật điều trị trượt đốt sống; Phẫu thuật điều trị thoát vị đĩa đệm.\r\n- Phẫu thuật các dị tật bẩm sinh: Phẫu thuật cắt ngón thừa; Phẫu thuật tách ngón điều trị dính ngón; Phẫu thuật điều trị ngón cái chẻ đôi; Phẫu thuật điều trị không có ngón tay cái; Phẫu thuật tạo hình điều trị vòng thắt bẩm sinh; Phẫu thuật ghép xương vi phẫu điều trị khớp giả bẩm sinh xương chảy; Phẫu thuật điều trị thiếu sản bờ quay, bờ trụ.\r\n- Phẫu thuật qua nội soi:\r\n- Điều trị sai khớp vai tái diễn;\r\n- Điều trị rách chóp xoay khớp vai;\r\n- Điều trị tổn thương SLAP (superior labral anterior posterior);\r\n- Điều trị rách sụn chêm khớp gối;\r\n- Điều trị dính khớp, viêm dày bao hoạt dịch;\r\n- Phẫu thuật lấy “chuột khớp”;\r\n- Điều trị đông cứng khớp vai;\r\n- Điều trị nhổ điểm bám mâm chày của ACL;\r\n- Tái tạo dây chằng chéo trước ACL, chéo sau PCL khớp gối;\r\n- Ghép xương sụn điều trị viêm sụn thể bóc tách ở khớp cổ chân;\r\n- Phẫu thuật điều trị thiểu sản bờ quay, bờ trụ;\r\n- Điều trị vết thương bằng liệu pháp VAC (vacuum assisted closure);\r\n- Điều trị các vết thương cấp và mạn tính;\r\n- Điều trị loét điểm tỳ, loét do tiểu đường;\r\n- Làm liền các vết mổ chậm liền, nhiễm khuẩn;', 0, 'khoa-cthuong-chinhhinh.png'),
(6, 'KHOA TIÊU HÓA - GAN MẬT - TỤY', 'Các bệnh khám và điều trị tại khoa Tiêu hóa – Gan Mật – Tụy:\r\n- Loét dạ dày tá tràng;\r\n- Chứng khó tiêu chức năng;\r\n- Trào ngược dạ dày thực quản;\r\n- Viêm gan virus A, B, C, E;\r\n- Viêm gan do rượu;\r\n- Viêm gan tự miễn;\r\n- Hội chứng ruột kích thích (viêm đại tràng cơ năng);\r\n- Bệnh viêm loét đại tràng chảy máu;\r\n- Bệnh Crohn;\r\n- Xơ gan do các nguyên nhân: virus B, C, Rượu, viêm gan tự miễn;\r\n- Ung thư gan;\r\n- Xuất huyết tiêu hóa do tăng áp lực tĩnh mạch cửa và xơ gan: vỡ giãn tĩnh mạch thực quản, vỡ giãn tĩnh mạch phình vị;\r\n- Nhiễm trùng đường mật;\r\n- Sỏi ống mật chủ, tắc mật do các nguyên nhân: u bóng vater, u đầu tụy, ung thư đường mật;\r\n- Áp xe gan: vi khuẩn, sán lá gan lớn, a míp;\r\nXuất huyết tiêu hóa (XHTH) không do tăng áp lực tĩnh mạch cửa: hội chứng Mallory weiss, XHTH do loét dạ dày tá tràng;\r\n- Viêm tụy cấp\r\n- Viêm tụy mạn\r\n- Viêm tụy tự miễn\r\n- Viêm loét đại tràng chảy máu\r\n- Bệnh Crohn\r\n- Polyp thực quản\r\n- Polyp dạ dày và tá tràng\r\n- Polyp đại tràng\r\n- Ung thư sớm thực quản\r\n- Ung thư sớm dạ dày\r\n- Ung thư sớm đại tràng hoặc polyp đại tràng ung thư hóa', '- Nội soi\r\n- Nội soi đại tràng điều trị: cắt polyp, thắt trĩ;\r\n- Đặt stent đường tiêu hóa: tắc nghẽn không còn chỉ định phẫu thuật: ung thư thực quản, ung thư hang vị , ung thư đại tràng;\r\n- Mở thông dạ dày qua nội soi đường miệng;\r\n- Nội soi siêu âm, chọc hút bằng kim nhỏ FNA;\r\n- Dẫn lưu nang giả tụy vào dạ dày;\r\n- Chụp mật tụy ngược dòng (ERCP):\r\n  + Lấy sỏi ống mật chủ, ống gan chung,\r\n  + Đặt stent đường mật: sỏi ống mật chủ, u đầu tụy, u bóng vater, u ống mật chủ, ở giai đoạn không còn phẫu thuật được hoặc cho trước mổ\r\n- Nội soi đường miệng cắt hớt (EMR), cắt tách niêm mạc (ESD) điều trị: tiền ung thư, ung thư thực quản dạ dày giai đoạn sớm;\r\n- Nội soi đường hậu môn cắt hớt (EMR), cắt tách niêm mạc (ESD):  điều trị tiền ung thư, ung thư đại tràng giai đoạn sớm;\r\n- Cắt cơ thắt thực quản dưới (POEM): điều trị co thắt tâm vị;\r\n- Siêu âm\r\n- Thăm dò khác\r\n- Các kỹ thuật, thủ thuật phối hợp', 0, 'logo-tieu-hoa-gan-mat-f.png'),
(7, 'KHOA DA LIỄU', 'Các bệnh da liễu là tập hợp các bệnh ảnh hưởng đến da, cấu trúc dưới da, móng, lông, tóc và cả những bệnh từ các cơ quan khác biểu hiện ra ngoài. Một số bệnh phổ biến bao gồm: viêm da dị ứng, nám, chàm, mề đay, mụn…\r\nCác bệnh da liễu thường do nhiều nguyên nhân như do sự tấn công của vi khuẩn, virus; tác động của ký sinh trùng – côn trùng; dị ứng – miễn dịch; nhóm rối loạn sắc tố… Dù khá dễ quan sát, nhiều người thường bỏ qua, bỏ sót hay chủ quan về các bệnh của da.', 'Chuyên điều trị:\r\n1. Bệnh về da\r\n- Mụn trứng cá, vảy nến, chàm (viêm da cơ địa), nấm da, hắc lào, nấm da đầu, lang ben, mề đay, zona, viêm da tiết bã, viêm nang lông, viêm mô bào, ghẻ chốc, áp xe,…\r\n- Chuyên khoa Da liễu – Thẩm mỹ Da tự hào là một trong ít đơn vị tại TP.HCM có đầy đủ các điều kiện đáp ứng điều trị bệnh da mạn tính. Đặc biệt, bệnh viện ứng dụng thuốc sinh học trong điều trị bệnh vảy nến, mề đay…\r\n- Bệnh lây truyền qua đường tình dục: giang mai, lậu, herpes sinh dục…\r\n2. Thẩm mỹ nội khoa\r\n- Nâng cơ, xóa nếp nhăn (trán, mắt, má, môi trên, cằm), giảm lượng mỡ dưới mắt và quầng thâm.\r\n- Triệt lông vùng dưới cánh tay, tay, chân, bikini, giảm tăng tiết mồ hôi, giảm mùi cơ thể, viêm nang lông và tạo độ trắng cho vùng dưới cánh tay.\r\n- Hút mụn, chữa mụn trứng cá, sẹo mụn, sẹo thâm, sẹo rỗ (sẹo lõm), sẹo lồi, sẹo xấu lâu năm.\r\n- Xóa nám, rám má, tàn nhang, trẻ hóa da, xóa xăm (xóa đủ các màu mực) và các vấn đề sắc tố khác… không đau.\r\n- Khắc phục rụng tóc, hói đầu, rám má, lỗ chân lông to, lão hóa da, nếp nhăn da, rạn da.\r\n- Tái tạo da mặt, trẻ hóa da, thu nhỏ lỗ chân lông, cải thiện da khô, chảy xệ, giảm độ đàn hồi. Khắc phục nọng cằm, tạo mặt V-line, cười hở lợi.\r\n- Điều trị mụn cóc, nốt ruồi, nốt chai, u tuyến mồ hôi, mụn thịt, mụn cơm, đồi mồi, tàn nhang, đốm nâu, lentigo, thịt dư, dày sừng da đầu, dày sừng ánh nắng, sẩn cục, bớt sùi, làm mờ đốm đen, đốm nâu, lấp đầy vùng lõm, trũng trên da…\r\n- Trị u mạch máu, bớt rượu vang, giãn mao mạch.\r\n- Trị thâm nách, hồng môi, hồng nhũ hoa, nấm móng.', 0, 'khoa-da-lieu.png'),
(8, 'KHOA MẮT', 'Cung cấp dịch vụ chăm sóc toàn diện sức khỏe nhãn khoa, chẩn đoán và điều trị các bệnh khúc xạ, bệnh lý võng mạc, đục thủy tinh thể, chấn thương mắt, tạo hình thẩm mỹ cho mắt…\r\nPhát huy lợi thế của bệnh viện, khoa kết hợp chặt chẽ cùng chuyên khoa Sơ sinh, Nội tiết, Tim mạch… giúp chăm sóc, điều trị toàn diện người bệnh mắc bệnh lý đặc thù như bệnh võng mạc ở trẻ sinh non (ROP), tăng nhãn áp do đái tháo đường, cao huyết áp…', 'Cung cấp các dịch vụ y tế đa dạng\r\n- Chẩn đoán tật khúc xạ: Cận – viễn – loạn\r\n- Chẩn đoán và điều trị bệnh phần trước nhãn cầu\r\n- Quản lý và điều trị bệnh khúc xạ\r\n- Phẫu thuật Lasik, SMILE, Phakic điều trị tật khúc xạ\r\n- Phẫu thuật Phaco điều trị đục thủy tinh thể\r\n- Chẩn đoán và điều trị bệnh lý võng mạc\r\n- Chẩn đoán và điều trị bệnh glôcôm\r\n- Chẩn đoán và điều trị bệnh lý nhãn khoa ở trẻ: Bệnh lý võng mạc ở trẻ sinh non (ROP)\r\n- Tạo hình thẩm mỹ mắt', 0, 'trung-tam-mat-cong-nghe-cao.png'),
(9, 'KHOA TAI MŨI HỌNG', 'Đáp ứng mọi nhu cầu khám chữa bệnh kỹ thuật cao cho người bệnh, chứ không dừng lại ở phương pháp điều trị đơn thuần. Khoa phát triển chuyên sâu về mảng Thanh học, Thính học, Tiền đình. Đây là các chức năng giọng nói, nghe, giữ thăng bằng cần phục hồi cho người bệnh.', 'Ứng dụng nhiều kỹ thuật tiên tiến trong thăm khám và điều trị:\r\n1. Phẫu thuật họng – thanh quản (nạo VA, cắt Amidan, chỉnh hình màn hầu điều trị chứng ngủ ngáy và ngưng thở khi ngủ, phẫu thuật điều trị bệnh thanh quản).\r\n- Với nạo VA, cắt Amidan, bác sĩ sử dụng sóng radio cao tần (máy Coblator công nghệ plasma) với nhiều ưu điểm vượt trội: sử dụng nhiệt độ thấp, ít chảy máu, ít đau, không tổn thương mô lành, người bệnh nói chuyện và ăn uống ngay sau mổ. Phẫu thuật khoảng 30 phút, nhẹ nhàng với gây mê an toàn. Thời gian nằm viện chỉ 1 ngày.\r\n- Chỉnh hình màn hầu: Sử dụng công nghệ cao sóng radio cao tần (máy Coblator) cho điều trị chứng ngủ ngáy và ngưng thở khi ngủ. Màn hầu được chỉnh hình ở mức phù hợp giúp giảm tình trạng ngủ ngáy và ngưng thở khi ngủ ở người béo phì, người bất thường về cấu trúc hầu họng. Quá trình phẫu thuật nhẹ nhàng với phương pháp gây mê an toàn, ít đau. Thời gian nằm viện chỉ 1 ngày.\r\n- Phẫu thuật điều trị bệnh về thanh quản: Cắt polyp dây thanh, cắt hạt dây thanh, phù Reinke, Papilloma thanh quản, liệt khép dây thanh… đều được thực hiện với kỹ thuật nội soi & dụng cụ vi phẫu. Phẫu thuật ít gây tổn thương dây thanh, giúp phục hồi lại giọng nói. Thời gian nằm viện chỉ 1 – 2 ngày, tùy tình trạng tổn thương dây thanh.\r\n2. Phẫu thuật mũi xoang (vách ngăn nội soi, nội soi mũi xoang, chỉnh hình cuốn mũi). Mỗi loại bệnh viêm xoang được cụ thể bằng một quy trình phẫu thuật: viêm xoang polyp mũi, viêm xoang do nấm, viêm xoang mủ. Dựa vào đó, các phẫu thuật viên sẽ đưa ra phương pháp tối ưu để cuộc mổ hiệu quả, an toàn nhất. Đơn cử với phương pháp chỉnh hình vách ngăn nội soi, bác sĩ dựa trên phim CT Scan và hình ảnh nội soi và thực hiện điều trị bằng máy khoan bào mô Microdebrider. Thực hiện nhẹ nhàng, thời gian phẫu thuật khoảng 60 phút khi mổ nội soi vách ngăn và cuốn mũi, khoảng 120 phút khi mổ nội soi mũi xoang, không phải đặt bấc mũi, giảm sự khó chịu, không đau. Thời gian nằm viện từ 2-3 ngày.\r\n3. Phẫu thuật tai (nội soi, vi phẫu, cấy điện cực ốc tai).\r\n- Mổ nội soi tai, bác sĩ thực hiện vá màng nhĩ, chỉnh hình xương con, thay thế xương bàn đạp, viêm tai xương chũm Cholesteatoma, u tiền đình ốc tai, giải áp dây thần kinh VII điều trị liệt mặt được thực hiện dưới nội soi và các dụng cụ vi phẫu. Thời gian nằm viện từ 2 – 3 ngày.\r\n- Vi phẫu tai, bác sĩ thực hiện mổ viêm tai xương chũm dưới kính hiển vi, có thể kết hợp chỉnh hình xương con, vá màng nhĩ, sào bào thượng nhĩ, khoét rỗng xương chũm, chỉnh hình xương con. Thời gian nằm viện từ 2 – 3 ngày.\r\nCấy điện cực ốc tai cho trẻ em & người lớn, có thể kích hoạt bật máy nghe chỉ sau 3 tuần từ khi phẫu thuật thành công. Thời gian nằm viện trong 5 ngày.\r\n4. Phẫu thuật đầu cổ: các đường rò bẩm sinh, u nang vùng cổ, u tuyến mang tai, u tuyến dưới hàm, sỏi tuyến nước bọt. Đơn cử như phẫu thuật u nang vùng cổ thì có u nang giáp móng, u nang giáp lưỡi, u tuyến dưới hàm, u tuyến mang tai, rò luân nhĩ được thực hiện an toàn với thủ thuật gây mê, mau lành vết thương. Thời gian nằm viện từ 2 – 5 ngày, tùy tổn thương u nang.\r\n5. Khám và điều trị bệnh tiền đình: chẩn đoán bệnh tiền đình trung ương ở não, chẩn đoán bệnh tiền đình ngoại biên ở tai, chẩn đoán toàn diện bằng hình ảnh học MRI não, tập phục hồi chức năng tiền đình.', 0, 'khoa-tai-mui-hong.png'),
(10, 'KHOA RĂNG HÀM MẶT', 'Chuyên khoa Răng Hàm Mặt, Bệnh viện Hạnh Phúc là đơn vị chuyên nghiệp và uy tín, cam kết mang đến dịch vụ chăm sóc sức khỏe răng miệng hàng đầu với:\r\n- Đội ngũ bác sĩ được đào tạo chuyên sâu, nhiều năm kinh nghiệm, liên tục cập nhật và ứng dụng những phương pháp, kỹ thuật mới nhất trong lĩnh vực Răng – Hàm – Mặt nhằm nâng cao hiệu quả điều trị cho người bệnh.\r\n- Hệ thống trang thiết bị nhập khẩu chính hãng từ các nước Âu – Mỹ: Đèn quang trùng hợp LED Bluephase N®MC Ivoclar Vivadent, Máy cạo vôi răng siêu âm Piezo với hệ thống 5 đèn LED, Máy nhổ răng không đau bằng sóng siêu âm Piezotome,…\r\nVới tầm nhìn vững chắc và sứ mệnh nâng cao sức khỏe cộng đồng, Chuyên khoa Răng Hàm Mặt, Bệnh viện Hạnh Phúc hướng đến nâng cao chất lượng cuộc sống của người dân TP.HCM và các tỉnh thành lân cận thông qua việc cung cấp dịch vụ chăm sóc sức khỏe răng miệng hiện đại, an toàn, hiệu quả.', 'Quy tụ đội ngũ chuyên gia tận tâm, kinh nghiệm chuyên sâu trong khám và điều trị các vấn đề về răng miệng:\r\n- Mang đến phác đồ điều trị chuyên sâu, hiệu quả, đảm bảo sự thoải mái và an toàn cho người mắc các tình trạng viêm lợi, rối loạn khớp thái dương hàm, viêm lưỡi, sâu răng, răng xỉn màu, hôi miệng, răng khôn mọc lệch, răng thưa, viêm tủy răng, tủy răng hoại tử, bệnh nha chu (nhiễm trùng nướu nghiêm trọng ảnh hưởng đến cấu trúc xung quanh).\r\n- Các dịch vụ định hướng sẽ triển khai trong thời gian gần:\r\n  + Áp dụng các kỹ thuật chỉnh nha cho cả trẻ em và người lớn. Sử dụng công nghệ hiện đại nhất trên thế giới như chỉnh hình can thiệp ở giai đoạn răng hỗn hợp, chỉnh nha bằng mắc cài, chỉnh nha bằng máng trong suốt Invisalign giúp bệnh nhân cải thiện thẩm mỹ và chức năng của hàm răng. Đặc biệt, các kỹ thuật này được áp dụng linh hoạt để điều trị các sai hình khớp cắn như khớp cắn chìa (hô), khớp cắn ngược (móm), khớp cắn hở, khớp cắn đối đầu, khớp cắn chéo, khớp cắn sâu,…\r\n  + Ngoài ra, Chuyên khoa Răng Hàm Mặt, Bệnh viện Đa khoa Tâm Anh TP.HCM cung cấp các giải pháp hiện đại như kỹ thuật hàm giả tháo lắp, làm cầu răng sứ và cấy ghép Implant, giúp người bệnh khôi phục hàm răng đẹp, nâng cao chất lượng cuộc sống.', 0, 'khoa-rang-ham-mat.png'),
(11, 'KHOA UNG BƯỚU', 'Khoa Ung bướu BV Hạnh Phúc đảm nhận các chức năng, nhiệm vụ sau:\r\n- Tư vấn, hướng dẫn tầm soát nhằm phát hiện và điều trị sớm bệnh lý ác tính trong cộng đồng.\r\n- Từng bước triển khai các dịch vụ khám chữa bệnh đa dạng, hợp lý để đáp ứng nhu cầu người bệnh.\r\n- Khám và điều trị một số bệnh lý ung bướu (lành tính và ác tính).\r\n- Tổ chức tiếp nhận, cấp cứu, khám, phát hiện, sàng lọc và điều trị, quản lý bệnh nhân ung thư từ các bệnh viện, phòng khám, trung tâm y tế trong và ngoài nước chuyển đến.\r\n- Phối hợp với các khoa khác (Ngoại, Sản, Chẩn đoán hình ảnh…), các chuyên khoa khác (Phẫu trị, Xạ trị …) để lập kế hoạch điều trị toàn diện, đa mô thức cho bệnh nhân ung thư; cập nhật và ứng dụng những tiến bộ về sinh học phân tử để xây dựng chiến lược cá thể hóa trong điều trị; cải thiện chất lượng sống cho người bệnh.\r\n- Điều trị đau và chăm sóc giảm nhẹ triệu chứng cho các bệnh nhân ung thư giai đoạn cuối vượt quá khả năng điều trị bằng phương pháp phẫu thuật, hóa chất, xạ trị.\r\n- Thực hiện tiêm truyền hóa chất, sử dụng thuốc trúng đích, thuốc miễn dịch để điều trị các bệnh lý ung thư.\r\n- Tham gia nghiên cứu khoa học, triển khai ứng dụng những tiến bộ khoa học để phục vụ khám chữa bệnh, phòng bệnh, phục hồi chức năng trong phòng, chống ung thư.', 'Khoa Ung bướu BV Hạnh Phúc cung cấp các dịch vụ:\r\n- Tư vấn, hướng dẫn tầm soát nhằm phát hiện và điều trị sớm bệnh lý ung bướu ác tính.\r\n- Khám và điều trị một số bệnh lý ung bướu (lành tính và ác tính).\r\n- Tiếp nhận, cấp cứu, khám, sàng lọc và điều trị, quản lý bệnh nhân ung thư từ các bệnh viện, phòng khám, trung tâm y tế trong và ngoài nước chuyển đến.\r\n- Thực hiện tiêm truyền hóa chất, sử dụng thuốc trúng đích, thuốc miễn dịch để điều trị các bệnh lý ung thư.\r\n- Điều trị đau và chăm sóc giảm nhẹ triệu chứng cho các bệnh nhân ung thư giai đoạn cuối vượt quá khả năng điều trị đặc hiệu.\r\nKHÁC BIỆT KHI ĐIỀU TRỊ UNG THƯ TẠI KHOA UNG BƯỚU\r\n- Hệ thống phòng VIP điều trị trong ngày với đầy đủ máy móc, tiện nghi hiện đại như ghế truyền hóa chất có bàn ăn, đảm bảo sự riêng tư của mỗi người bệnh, hệ thống tivi truyền hình cáp phục vụ nhu cầu giải trí, giúp bệnh nhân thư giãn trong quá trình điều trị. Ngoài ra, còn có thiết bị kết nối nhân viên y tế 24/24, hệ thống khí y tế và các thiết bị cấp cứu bố trí ngay tại khu điều trị.\r\n- Việc lấy máu xét nghiệm, cấp phát thuốc và phục vụ bữa ăn đều được bố trí ngay tại khoa nhằm đảm bảo tính riêng tư, thuận tiện cho người bệnh.\r\n- Phòng hóa trị được thiết kế 4 mặt đều là cửa kính cho bệnh nhân cảm thấy không bị gò bó, có thể nhìn thấy cảnh vật và thế giới xung quanh, thêm yêu cuộc sống giúp quá trình điều trị đạt hiệu quả tối ưu. Đồng thời, thiết kế này sẽ giúp “thu hẹp” khoảng cách giữa bệnh nhân với bác sĩ và nhân viên y tế, hỗ trợ theo dõi và luôn đồng hành cùng bệnh nhân.\r\n- Khu nội trú được thiết kế và bài trí theo tiêu chuẩn cao cấp với đầy đủ đồ dùng cá nhân, minibar, tivi màn hình LED, internet, thiết bị kết nối nhân viên y tế 24/24, hệ thống khí y tế và các thiết bị cấp cứu bố trí ngay tại giường…\r\nNhân viên chăm sóc chuyên nghiệp, tận tâm khi người bệnh khám, điều trị tại bệnh viện.\r\n', 0, 'icon-ung-buou-chuyen-khoa.png'),
(12, 'KHOA THẬN - TIẾT NIỆU', 'Chẩn đoán, điều trị, nghiên cứu bệnh đường tiết niệu cho cả nam và nữ, các bệnh nam khoa, thận học – lọc máu.', 'Khoa Tiết niệu chẩn đoán và điều trị:\r\n- Cấp cứu các bệnh tiết niệu như: bí tiểu cấp, đau quặn thận, chấn thương hoặc vết thương đường tiết niệu, viêm đài bể thận cấp…\r\n- Sỏi tiết niệu: sỏi thận, sỏi niệu quản, sỏi bàng quang\r\n- Nhiễm khuẩn đường tiết niệu: viêm đài bể thận, áp xe thận, viêm quanh thận, viêm bàng quang…\r\n- Chấn thương đường tiết niệu: chấn thương thận kín, vết thương thận, vỡ bàng quang, chấn thương niệu đạo\r\n- Ung bướu đường tiết niệu: ung thư thận, ung thư niệu mạc đường tiểu trên, ung thư bàng quang, ung thư dương vật, ung thư tinh hoàn\r\n- Bệnh tuyến tiền liệt: viêm tuyến tiền liệt, tăng sinh lành tính tuyến tiền liệt, ung thư tuyến tiền liệt\r\n- Các dị tật bẩm sinh đường tiết niệu: thận đôi, thận móng ngựa, thận lạc chỗ…\r\nĐơn vị Niệu nữ là chuyên khoa sâu, hướng đến mục tiêu trở thành nơi chăm sóc sức khỏe tiết niệu nữ giới hàng đầu tại Việt Nam, tháo gỡ rào cản ngại ngần của phụ nữ, giúp chị em tìm lại tự tin trong cuộc sống. Đơn vị Niệu nữ khám và tư vấn chuyên sâu các rối loạn tình dục, các rối loạn chức năng đường tiểu dưới và các vấn đề tiết niệu ở phụ nữ, cụ thể:\r\n- Rối loạn tình dục nữ\r\n- Viêm bàng quang kẽ, bàng quang tăng hoạt, bàng quang thần kinh\r\n- Sa tạng chậu\r\n- Đau vùng chậu mạn\r\nKhoa Nội thận – Lọc máu điều trị và theo dõi các bệnh về thận như:\r\n- Bệnh thận cấp và mạn: Tổn thương thận cấp, viêm cầu thận cấp, viêm cầu mạn\r\n- Các bệnh thận do nguyên nhân miễn dịch như bệnh thận IgA, lupus ban đỏ, bệnh cầu thận nguyên phát\r\nCác bệnh liên quan đến thận như tăng huyết áp, đái tháo đường, bệnh xốp tủy thận, thận đa nang…\r\n- Ghép thận và theo dõi sau ghép thận\r\n- Lọc máu cho người bệnh thận mạn giai đoạn cuối: lọc màng bụng, thận nhân tạo, lọc thận HDF online,…\r\nKhoa Nam học:\r\n- Cấp cứu bệnh nam khoa: xoắn thừng tinh, chấn thương tinh hoàn, vỡ thể hang dương vật, cương dương kéo dài, thắt nghẹt bao quy đầu\r\n- Nhiễm khuẩn tiết niệu và sinh dục: viêm tinh hoàn và mào tinh hoàn, viêm niệu đạo, viêm da quy đầu, nhiễm khuẩn lây qua đường tình dục\r\n- Các dị tật liên quan cơ quan sinh dục nam: tinh hoàn ẩn, hẹp bao da quy đầu, lỗ tiểu thấp…\r\n- Ung bướu cơ quan sinh dục nam: ung thư tinh hoàn, ung thư dương vật\r\n- Rối loạn tình dục\r\n- Vô sinh\r\n- Tầm soát sức khỏe tiền hôn nhân\r\n- Thực hiện phẫu thuật đặt tinh hoàn nhân tạo\r\n- Tư vấn và hỗ trợ triệt sản nam', 0, 'khoa-tietnieu.png'),
(13, 'KHOA NHI', 'So với người trưởng thành, trẻ nhỏ có hệ miễn dịch non nớt và sức đề kháng kém hơn. Vì thế, nguy cơ nhiễm các bệnh lý liên quan đến virus/vi khuẩn ở trẻ khá cao, đặc biệt là vào thời điểm giao mùa, thời tiết thay đổi đột ngột hoặc khi có dịch bệnh bùng phát.\r\nKhông chỉ có bệnh truyền nhiễm, trẻ em còn phải đối mặt với hàng loạt bệnh lý di truyền cũng như các bệnh không lây nhiễm, như bệnh tim mạch, bệnh cơ xương khớp, bệnh hô hấp mạn tính… Việc thăm khám và tầm soát sớm sẽ giúp các bé được chẩn đoán đúng bệnh, từ đó đưa ra phác đồ điều trị kịp thời và phù hợp.', 'Tư vấn, chăm sóc sức khỏe toàn diện cho trẻ\r\nKhám sức khỏe tổng quát:\r\n- Tư vấn tiêm chủng\r\n- Theo dõi sự phát triển thể chất và tinh thần của trẻ\r\n- Tư vấn chế độ dinh dưỡng phù hợp với từng độ tuổi\r\n- Thăm khám, chẩn đoán và điều trị các bệnh lý:\r\n  + Khám và điều trị các bệnh lý về hô hấp\r\n  + Khám và điều trị các bệnh truyền nhiễm\r\n  + Khám và điều trị các bệnh về tiêu hóa\r\n  + Khám và điều trị các bệnh da liễu\r\n  + Khám và điều trị bệnh lý về thận – nội tiết\r\n  + Khám và điều trị bệnh lý tai mũi họng\r\n  + Điều trị bệnh lý thần kinh, tâm thần\r\n  + Các bệnh lý khác ở trẻ em', 0, 'khoa-nhi.png'),
(14, 'KHOA THẦN KINH', 'Các bệnh lý liên quan đến hệ thần kinh là những bệnh lý vô cùng nguy hiểm và đang ngày một gia tăng tại Việt Nam. Trong đó, các bệnh lý nội thần kinh bao gồm: đột quỵ, đau đầu, đau nửa đầu, mất ngủ, suy giảm trí nhớ, động kinh, chóng mặt, rối loạn tiền đình, bệnh thần kinh ngoại biên… Các bệnh lý ngoại thần kinh bao gồm: chấn thương sọ não, u não, u tuyến yên, u trong ống sống – tủy sống, các bệnh lý cột sống thần kinh như thoát vị đĩa đệm cột sống cổ, thoát vị đĩa đệm cột sống lưng, trượt đốt sống…\r\nBệnh thần kinh không chỉ nguy hiểm, phức tạp mà việc điều trị, phẫu thuật còn đòi hỏi cao về chuyên môn, kỹ thuật tinh vi, kinh nghiệm dày dạn và khả năng phán đoán đúng của bác sĩ.', '1.Thần kinh:\r\n- Khám, tư vấn và điều trị các bệnh lý đau đầu: - Chứng đau nửa đầu, đau đầu căn nguyên mạch máu, đau đầu mãn tính,…\r\n- Khám, tư vấn và điều trị các bệnh lý rối loạn về giấc ngủ: Mất ngủ cấp tính hoặc mãn tính;\r\nKhám, chẩn đoán và điều trị bệnh tai biến mạch máu não (đột quỵ)\r\n- Khám, tư vấn và điều trị các bệnh lý về sa sút trí tuệ: Suy giảm nhận thức nhẹ, suy giảm trí nhớ, sa sút trí tuệ nguyên nhân mạch máu , Alzheimer;\r\n- Khám, chẩn đoán và điều trị Bệnh rối loạn vận động như bệnh Parkinson;\r\n- Khám và theo dõi điều trị bệnh lý động kinh ở người lớn và trẻ em;\r\n- Khám và điều trị bệnh rối loạn tiền đình;\r\n- Khám và điều trị các bệnh mạch máu não.\r\n- Khám, chẩn đoán và điều trị các bệnh lý nhiễm trùng thần kinh: Viêm não màng não, Viêm tủy…\r\n- Khám, chẩn đoán và điều trị các bệnh lý thần kinh ngoại biên: Viêm đa dây thần kinh, Viêm đa rễ dây thần kinh (Hội chứng Guillain-Barre), các bệnh rễ và đám rối dây thần kinh, Thần kinh liên sườn, Liệt các dây thần kinh sọ,…\r\nKhám, chẩn đoán và điều trị bệnh lý thần kinh do Rối loạn chuyển hóa;\r\nKhám, chẩn đoán và điều trị bệnh lý nhiễm độc thần kinh như: Bệnh Wilson,…\r\n2.Phẫu thuật thần kinh:\r\n- Phẫu thuật u não, u tuyến yên, u trong ống sống – tủy sống\r\n- Chấn thương sọ não\r\n- Ghép sọ\r\n- Phẫu thuật dị dạng động tĩnh mạch não, dị dạng mạch máu não\r\n- U dây thần kinh ngoại biên\r\n- Phẫu thuật ghép nối dây thần kinh ngoại biên\r\n- Điều trị phình mạch não\r\n- Điều trị các bệnh cột sống thần kinh: Thoát vị đĩa đệm cột sống cổ, thoát vị đĩa đệm cột sống lưng, trượt đốt sống, đau thần kinh tọa,…', 0, 'khoa-noithankinh.png'),
(15, 'KHOA PHỤC HỒI CHỨC NĂNG', 'Với đội ngũ chuyên gia và kỹ thuật viên PHCN & VLTL có trình độ chuyên môn tay nghề cao, nhiều người bệnh ở giai đoạn nặng đã nhanh chóng phục hồi khả năng vận động, phòng di chứng và hạn chế tàn tật. Đặc biệt, VLTL có công dụng tuyệt vời trong việc rèn luyện và nâng cao sức khỏe ngay cả khi không mắc bệnh, dự phòng nâng cao sức khỏe.\r\nNhiều trẻ em đến thăm khám có nhiều triệu chứng như lệch đốt sống lưng, cổ… do tư thế bào thai chật, nếu chỉ cần can thiệp ngay ở giai đoạn sơ sinh bằng vật lý trị liệu trẻ lớn lên sẽ không bị khuyết tật. Học sinh dễ bị vẹo cột sống do đeo balo quá nặng, ngồi bàn không phù hợp, nếu phát hiện sớm và áp dụng vật lý trị liệu sẽ giúp trẻ không bị gù, vẹo sau khi trưởng thành… Bác sĩ Hương Quỳnh cho biết, vật lý trị liệu còn tham gia vào việc phòng ngừa xẹp phổi khi nằm quá lâu, cứng khớp sau mổ. Người bệnh không thể chữa khỏi được bị suy giảm chức năng thì vật lý trị liệu can thiệp giúp người bệnh lấy lại chức năng.', 'Các bệnh lý ở trẻ nhỏ đang được áp dụng Vật lý trị liệu tại BV Hạnh Phúc với nhiều ưu thế là: - Bàn chân khoèo, bàn chân bẹt, vẹo cổ, viêm phổi, viêm hô hấp trên, xẹp phổi, bại não, bại liệt, cong vẹo cột sống\r\n- Các bệnh lý Tim mạch: Suy tim, sau phẫu thuật tim….\r\n- Các bệnh lý Thần kinh: Đột quỵ, chấn thương sọ não, chấn thương tủy sống, liệt mặt, liệt thần kinh ngoại biên, hội chứng đường hầm cổ chân, tay; parkinson\r\n- Các bệnh lý Cơ xương khớp như:\r\n  + Hội chứng cổ, vai, tay\r\n  + Đau cổ, Đau lưng\r\n  + Đau thần kinh tọa,\r\n  + Thoái hóa khớp\r\n  + Hội chứng Golf elbow, Tennis Elbow\r\n  + Đau vùng bàn chân, gai gót chân\r\n  + Sau phẫu thuật dây chằng chéo trước, sau\r\n  + Sau rách sụn chêm\r\n  + Sau phẫu thuật thay khớp gối, hông, vai, khuỷu…\r\n  + Sau phẫu thuật cột sống, phẫu thuật thoát vị đĩa đệm cột sống\r\n  + Sau phẫu thuật gãy xương hàm mặt, xương đòn, vai , cánh tay cẳng bàn tay, ngón tay\r\n  + Sau phẫu thuật chi dưới như xương chậu, xương đùi, xương bánh chè, xương chày, xương mác, xương bàn chân, ngón chân\r\n  + Sau cắt cụt chi\r\n  + Sau bỏng\r\n  + Zona thần kinh\r\n- Các bệnh lý Sản khoa như: Vật lý trị liệu cho thai phụ, sản phụ trước sinh, sau sinh; tắc tia sữa sau sinh', 0, 'khoa-phuc-hoi-chuc-nang.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donthuoc`
--

CREATE TABLE `donthuoc` (
  `madonthuoc` int(11) UNSIGNED NOT NULL,
  `mahoso` int(11) UNSIGNED NOT NULL,
  `mabenhnhan` int(11) UNSIGNED NOT NULL,
  `ngaytaodonthuoc` date NOT NULL,
  `ghichu` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donthuoc`
--

INSERT INTO `donthuoc` (`madonthuoc`, `mahoso`, `mabenhnhan`, `ngaytaodonthuoc`, `ghichu`) VALUES
(1, 1, 1, '2023-10-15', 'Đơn thuốc điều trị cao huyết áp'),
(2, 2, 2, '2023-10-16', 'Đơn thuốc điều trị viêm họng'),
(3, 3, 3, '2023-10-17', 'Đơn thuốc điều trị đau dạ dày'),
(4, 4, 4, '2023-10-18', 'Đơn thuốc điều trị đau đầu'),
(5, 5, 5, '2023-10-19', 'Đơn thuốc điều trị viêm xoang'),
(6, 6, 7, '2023-10-20', 'Đơn thuốc điều trị dị ứng da'),
(7, 7, 8, '2023-10-21', 'Đơn thuốc điều trị tiểu đường'),
(8, 8, 9, '2023-10-22', 'Đơn thuốc điều trị viêm phổi'),
(9, 9, 10, '2023-10-23', 'Đơn thuốc điều trị cảm cúm'),
(10, 10, 11, '2023-10-24', 'Đơn thuốc điều trị mất ngủ'),
(11, 11, 13, '2023-10-25', 'Đơn thuốc điều trị hen suyễn'),
(12, 12, 14, '2023-10-26', 'Đơn thuốc điều trị viêm khớp'),
(13, 13, 15, '2023-10-27', 'Đơn thuốc điều trị rối loạn tiêu hóa'),
(14, 14, 16, '2023-10-28', 'Đơn thuốc điều trị thiếu máu'),
(15, 15, 17, '2023-10-29', 'Đơn thuốc điều trị rối loạn lipid máu'),
(16, 16, 20, '2023-10-30', 'Đơn thuốc tái khám cao huyết áp'),
(51, 1, 1, '2023-10-15', 'Đơn thuốc điều trị cao huyết áp'),
(52, 2, 2, '2023-10-16', 'Đơn thuốc điều trị viêm họng'),
(53, 3, 3, '2023-10-17', 'Đơn thuốc điều trị đau dạ dày'),
(54, 4, 4, '2023-10-18', 'Đơn thuốc điều trị đau đầu'),
(55, 5, 5, '2023-10-19', 'Đơn thuốc điều trị viêm xoang'),
(56, 6, 7, '2023-10-20', 'Đơn thuốc điều trị dị ứng da'),
(57, 7, 8, '2023-10-21', 'Đơn thuốc điều trị tiểu đường'),
(58, 8, 9, '2023-10-22', 'Đơn thuốc điều trị viêm phổi'),
(59, 9, 10, '2023-10-23', 'Đơn thuốc điều trị cảm cúm'),
(60, 10, 11, '2023-10-24', 'Đơn thuốc điều trị mất ngủ'),
(61, 11, 13, '2023-10-25', 'Đơn thuốc điều trị hen suyễn'),
(62, 12, 14, '2023-10-26', 'Đơn thuốc điều trị viêm khớp'),
(63, 13, 15, '2023-10-27', 'Đơn thuốc điều trị rối loạn tiêu hóa'),
(64, 14, 16, '2023-10-28', 'Đơn thuốc điều trị thiếu máu'),
(65, 15, 17, '2023-10-29', 'Đơn thuốc điều trị rối loạn lipid máu'),
(66, 16, 20, '2023-10-30', 'Đơn thuốc tái khám cao huyết áp'),
(101, 1, 1, '2023-10-15', 'Đơn thuốc điều trị cao huyết áp'),
(102, 2, 2, '2023-10-16', 'Đơn thuốc điều trị viêm họng'),
(103, 3, 3, '2023-10-17', 'Đơn thuốc điều trị đau dạ dày'),
(104, 4, 4, '2023-10-18', 'Đơn thuốc điều trị đau đầu'),
(105, 5, 5, '2023-10-19', 'Đơn thuốc điều trị viêm xoang'),
(106, 6, 7, '2023-10-20', 'Đơn thuốc điều trị dị ứng da'),
(107, 7, 8, '2023-10-21', 'Đơn thuốc điều trị tiểu đường'),
(108, 8, 9, '2023-10-22', 'Đơn thuốc điều trị viêm phổi'),
(109, 9, 10, '2023-10-23', 'Đơn thuốc điều trị cảm cúm'),
(110, 10, 11, '2023-10-24', 'Đơn thuốc điều trị mất ngủ'),
(111, 11, 13, '2023-10-25', 'Đơn thuốc điều trị hen suyễn'),
(112, 12, 14, '2023-10-26', 'Đơn thuốc điều trị viêm khớp'),
(113, 13, 15, '2023-10-27', 'Đơn thuốc điều trị rối loạn tiêu hóa'),
(114, 14, 16, '2023-10-28', 'Đơn thuốc điều trị thiếu máu'),
(115, 15, 17, '2023-10-29', 'Đơn thuốc điều trị rối loạn lipid máu'),
(116, 16, 20, '2023-10-30', 'Đơn thuốc tái khám cao huyết áp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hosobenhan`
--

CREATE TABLE `hosobenhan` (
  `mahoso` int(10) UNSIGNED NOT NULL,
  `mabenhnhan` int(11) UNSIGNED NOT NULL,
  `maloaihoso` int(11) NOT NULL,
  `ghichu` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngaycapnhat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mabacsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hosobenhan`
--

INSERT INTO `hosobenhan` (`mahoso`, `mabenhnhan`, `maloaihoso`, `ghichu`, `ngaytao`, `ngaycapnhat`, `mabacsi`) VALUES
(1, 1, 3, 'Khám tim tổng quát', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 1),
(2, 2, 3, 'Siêu âm tim', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 2),
(3, 3, 3, 'Nội soi dạ dày', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 3),
(4, 4, 3, 'Khám gan mật', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 4),
(5, 5, 3, 'Khám mắt định kỳ', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 6),
(6, 6, 3, 'Đo thị lực', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 7),
(7, 7, 3, 'Khám tai mũi họng tổng quát', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 8),
(8, 8, 3, 'Nội soi mũi xoang', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 9),
(9, 9, 3, 'Khám vết thương', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 10),
(10, 10, 3, 'Thay băng', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 11),
(11, 11, 3, 'Khám xương khớp', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 12),
(12, 12, 3, 'Điều trị gãy xương', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 13),
(13, 13, 3, 'Khám tiết niệu', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 14),
(14, 14, 3, 'Siêu âm thận', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 15),
(15, 15, 4, 'Khám thai định kỳ', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 16),
(16, 16, 4, 'Khám phụ khoa', '2024-04-16 17:00:00', '2024-04-16 17:00:00', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khunggioxetnghiem`
--

CREATE TABLE `khunggioxetnghiem` (
  `makhunggioxetnghiem` int(11) UNSIGNED NOT NULL,
  `giobatdau` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `gioketthuc` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khunggioxetnghiem`
--

INSERT INTO `khunggioxetnghiem` (`makhunggioxetnghiem`, `giobatdau`, `gioketthuc`) VALUES
(1, '07:00:00', '07:30:00'),
(2, '07:30:00', '08:00:00'),
(3, '08:00:00', '08:30:00'),
(4, '08:30:00', '09:00:00'),
(5, '09:00:00', '09:30:00'),
(6, '09:30:00', '10:00:00'),
(7, '10:00:00', '10:30:00'),
(8, '10:30:00', '11:00:00'),
(9, '11:00:00', '11:30:00'),
(10, '13:00:00', '13:30:00'),
(11, '13:30:00', '14:00:00'),
(12, '14:00:00', '14:30:00'),
(13, '14:30:00', '15:00:00'),
(14, '15:00:00', '15:30:00'),
(15, '15:30:00', '16:00:00'),
(16, '16:00:00', '16:30:00'),
(17, '16:30:00', '17:00:00'),
(18, '17:30:00', '18:00:00'),
(19, '18:00:00', '18:30:00'),
(20, '18:30:00', '19:00:00'),
(21, '19:00:00', '19:30:00'),
(22, '19:30:00', '20:00:00'),
(23, '06:00:00', '06:30:00'),
(24, '06:30:00', '07:00:00'),
(25, '12:00:00', '12:30:00'),
(26, '12:30:00', '13:00:00'),
(27, '20:00:00', '20:30:00'),
(28, '20:30:00', '21:00:00'),
(29, '21:00:00', '21:30:00'),
(30, '21:30:00', '22:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichlamviec`
--

CREATE TABLE `lichlamviec` (
  `malichlamviec` int(10) UNSIGNED NOT NULL,
  `mabacsi` int(11) UNSIGNED NOT NULL,
  `ngaylam` date NOT NULL,
  `macalamviec` int(11) UNSIGNED NOT NULL,
  `trangthai` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ghichu` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lichlamviec`
--

INSERT INTO `lichlamviec` (`malichlamviec`, `mabacsi`, `ngaylam`, `macalamviec`, `trangthai`, `ghichu`) VALUES
(1, 1, '2024-04-18', 1, 'Đang làm việc', NULL),
(2, 1, '2024-04-18', 1, 'Đang làm việc', NULL),
(3, 1, '2024-04-18', 1, 'Đang làm việc', NULL),
(4, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(5, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(6, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(7, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(8, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(9, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(10, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(11, 3, '2024-04-18', 1, 'Đang làm việc', NULL),
(12, 3, '2024-04-18', 1, 'Đang làm việc', NULL),
(13, 3, '2024-04-18', 1, 'Đang làm việc', NULL),
(14, 3, '2024-04-18', 1, 'Đang làm việc', NULL),
(15, 3, '2024-04-18', 2, 'Đang làm việc', NULL),
(16, 4, '2024-04-18', 2, 'Đang làm việc', NULL),
(17, 5, '2024-04-18', 3, 'Đang làm việc', NULL),
(18, 6, '2024-04-18', 3, 'Đang làm việc', NULL),
(19, 7, '2024-04-18', 3, 'Đang làm việc', NULL),
(20, 8, '2024-04-18', 3, 'Đang làm việc', NULL),
(21, 9, '2024-04-18', 1, 'Đang làm việc', NULL),
(22, 9, '2024-04-18', 1, 'Đang làm việc', NULL),
(23, 9, '2024-04-18', 1, 'Đang làm việc', NULL),
(24, 10, '2024-04-18', 2, 'Đang làm việc', NULL),
(25, 10, '2024-04-18', 2, 'Đang làm việc', NULL),
(26, 10, '2024-04-18', 2, 'Đang làm việc', NULL),
(27, 10, '2024-04-18', 2, 'Đang làm việc', NULL),
(28, 10, '2024-04-18', 2, 'Đang làm việc', NULL),
(29, 10, '2024-04-18', 2, 'Đang làm việc', NULL),
(35, 1, '2024-04-18', 1, 'Đang làm việc', NULL),
(36, 1, '2024-04-18', 1, 'Đang làm việc', NULL),
(37, 1, '2024-04-18', 1, 'Đang làm việc', NULL),
(38, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(39, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(40, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(41, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(42, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(43, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(44, 2, '2024-04-18', 1, 'Đang làm việc', NULL),
(45, 3, '2024-04-18', 1, 'Đang làm việc', NULL),
(46, 3, '2024-04-18', 1, 'Đang làm việc', NULL),
(47, 3, '2024-04-18', 1, 'Đang làm việc', NULL),
(48, 3, '2024-04-18', 1, 'Đang làm việc', NULL),
(49, 3, '2024-04-18', 2, 'Đang làm việc', NULL),
(50, 4, '2024-04-18', 3, 'Đang làm việc', NULL),
(51, 5, '2024-04-18', 3, 'Đang làm việc', NULL),
(52, 6, '2024-04-18', 3, 'Đang làm việc', NULL),
(53, 7, '2024-04-18', 2, 'Đang làm việc', NULL),
(54, 8, '2024-04-18', 2, 'Đang làm việc', NULL),
(55, 9, '2024-04-18', 1, 'Đang làm việc', NULL),
(56, 9, '2024-04-18', 1, 'Đang làm việc', NULL),
(57, 9, '2024-04-18', 1, 'Đang làm việc', NULL),
(58, 10, '2024-04-18', 2, 'Đang làm việc', NULL),
(59, 10, '2024-04-18', 2, 'Đang làm việc', NULL),
(60, 10, '2024-04-18', 2, 'Đang làm việc', NULL),
(61, 10, '2024-04-18', 2, 'Đang làm việc', NULL),
(62, 10, '2024-04-18', 2, 'Đang làm việc', NULL),
(63, 10, '2024-04-18', 2, 'Đang làm việc', NULL),
(69, 1, '2025-04-18', 1, 'Đang làm việc', NULL),
(70, 1, '2025-04-18', 2, 'Đang làm việc', NULL),
(71, 1, '2025-04-18', 3, 'Đang làm việc', NULL),
(72, 1, '2025-04-19', 1, 'Đang làm việc', NULL),
(73, 1, '2025-04-19', 2, 'Đang làm việc', NULL),
(74, 1, '2025-04-19', 3, 'Đang làm việc', NULL),
(75, 2, '2025-04-18', 1, 'Đang làm việc', NULL),
(76, 2, '2025-04-18', 2, 'Đang làm việc', NULL),
(77, 2, '2025-04-18', 3, 'Đang làm việc', NULL),
(78, 2, '2025-04-19', 1, 'Đang làm việc', NULL),
(79, 2, '2025-04-19', 2, 'Đang làm việc', NULL),
(80, 3, '2025-04-18', 1, 'Đang làm việc', NULL),
(81, 3, '2025-04-18', 2, 'Đang làm việc', NULL),
(82, 3, '2025-04-18', 3, 'Đang làm việc', NULL),
(83, 3, '2025-04-19', 1, 'Đang làm việc', NULL),
(84, 4, '2025-04-18', 1, 'Đang làm việc', NULL),
(85, 4, '2025-04-18', 2, 'Đang làm việc', NULL),
(86, 4, '2025-04-18', 3, 'Đang làm việc', NULL),
(87, 4, '2025-04-19', 1, 'Đang làm việc', NULL),
(88, 4, '2025-04-19', 2, 'Đang làm việc', NULL),
(89, 5, '2025-04-18', 1, 'Đang làm việc', NULL),
(90, 5, '2025-04-18', 2, 'Đang làm việc', NULL),
(91, 5, '2025-04-18', 3, 'Đang làm việc', NULL),
(92, 5, '2025-04-19', 1, 'Đang làm việc', NULL),
(93, 5, '2025-04-19', 2, 'Đang làm việc', NULL),
(94, 5, '2025-04-19', 3, 'Đang làm việc', NULL),
(95, 6, '2025-04-18', 1, 'Đang làm việc', NULL),
(96, 6, '2025-04-18', 2, 'Đang làm việc', NULL),
(97, 6, '2025-04-18', 3, 'Đang làm việc', NULL),
(98, 6, '2025-04-19', 1, 'Đang làm việc', NULL),
(99, 6, '2025-04-19', 2, 'Đang làm việc', NULL),
(100, 7, '2025-04-18', 1, 'Đang làm việc', NULL),
(101, 7, '2025-04-18', 2, 'Đang làm việc', NULL),
(102, 7, '2025-04-18', 3, 'Đang làm việc', NULL),
(103, 7, '2025-04-19', 1, 'Đang làm việc', NULL),
(104, 1, '2025-04-18', 1, 'Đang làm việc', NULL),
(105, 1, '2025-04-18', 2, 'Đang làm việc', NULL),
(106, 1, '2025-04-18', 3, 'Đang làm việc', NULL),
(107, 1, '2025-04-19', 1, 'Đang làm việc', NULL),
(108, 1, '2025-04-19', 2, 'Đang làm việc', NULL),
(109, 1, '2025-04-19', 3, 'Đang làm việc', NULL),
(110, 2, '2025-04-18', 1, 'Đang làm việc', NULL),
(111, 2, '2025-04-18', 2, 'Đang làm việc', NULL),
(112, 2, '2025-04-18', 3, 'Đang làm việc', NULL),
(113, 2, '2025-04-19', 1, 'Đang làm việc', NULL),
(114, 2, '2025-04-19', 2, 'Đang làm việc', NULL),
(115, 3, '2025-04-18', 1, 'Đang làm việc', NULL),
(116, 3, '2025-04-18', 2, 'Đang làm việc', NULL),
(117, 3, '2025-04-18', 3, 'Đang làm việc', NULL),
(118, 3, '2025-04-19', 1, 'Đang làm việc', NULL),
(119, 4, '2025-04-18', 1, 'Đang làm việc', NULL),
(120, 4, '2025-04-18', 2, 'Đang làm việc', NULL),
(121, 4, '2025-04-18', 3, 'Đang làm việc', NULL),
(122, 4, '2025-04-19', 1, 'Đang làm việc', NULL),
(123, 4, '2025-04-19', 2, 'Đang làm việc', NULL),
(124, 5, '2025-04-18', 1, 'Đang làm việc', NULL),
(125, 5, '2025-04-18', 2, 'Đang làm việc', NULL),
(126, 5, '2025-04-18', 3, 'Đang làm việc', NULL),
(127, 5, '2025-04-19', 1, 'Đang làm việc', NULL),
(128, 5, '2025-04-19', 2, 'Đang làm việc', NULL),
(129, 5, '2025-04-19', 3, 'Đang làm việc', NULL),
(130, 6, '2025-04-18', 1, 'Đang làm việc', NULL),
(131, 6, '2025-04-18', 2, 'Đang làm việc', NULL),
(132, 6, '2025-04-18', 3, 'Đang làm việc', NULL),
(133, 6, '2025-04-19', 1, 'Đang làm việc', NULL),
(134, 6, '2025-04-19', 2, 'Đang làm việc', NULL),
(135, 7, '2025-04-18', 1, 'Đang làm việc', NULL),
(136, 7, '2025-04-18', 2, 'Đang làm việc', NULL),
(137, 7, '2025-04-18', 3, 'Đang làm việc', NULL),
(138, 7, '2025-04-19', 1, 'Đang làm việc', NULL),
(139, 1, '2025-04-18', 1, 'Đang làm việc', NULL),
(140, 1, '2025-04-18', 2, 'Đang làm việc', NULL),
(141, 1, '2025-04-18', 3, 'Đang làm việc', NULL),
(142, 1, '2025-04-19', 1, 'Đang làm việc', NULL),
(143, 1, '2025-04-19', 2, 'Đang làm việc', NULL),
(144, 1, '2025-04-19', 3, 'Đang làm việc', NULL),
(145, 2, '2025-04-18', 1, 'Đang làm việc', NULL),
(146, 2, '2025-04-18', 2, 'Đang làm việc', NULL),
(147, 2, '2025-04-18', 3, 'Đang làm việc', NULL),
(148, 2, '2025-04-19', 1, 'Đang làm việc', NULL),
(149, 2, '2025-04-19', 2, 'Đang làm việc', NULL),
(150, 3, '2025-04-18', 1, 'Đang làm việc', NULL),
(151, 3, '2025-04-18', 2, 'Đang làm việc', NULL),
(152, 3, '2025-04-18', 3, 'Đang làm việc', NULL),
(153, 3, '2025-04-19', 1, 'Đang làm việc', NULL),
(154, 4, '2025-04-18', 1, 'Đang làm việc', NULL),
(155, 4, '2025-04-18', 2, 'Đang làm việc', NULL),
(156, 4, '2025-04-18', 3, 'Đang làm việc', NULL),
(157, 4, '2025-04-19', 1, 'Đang làm việc', NULL),
(158, 4, '2025-04-19', 2, 'Đang làm việc', NULL),
(159, 5, '2025-04-18', 1, 'Đang làm việc', NULL),
(160, 5, '2025-04-18', 2, 'Đang làm việc', NULL),
(161, 5, '2025-04-18', 3, 'Đang làm việc', NULL),
(162, 5, '2025-04-19', 1, 'Đang làm việc', NULL),
(163, 5, '2025-04-19', 2, 'Đang làm việc', NULL),
(164, 5, '2025-04-19', 3, 'Đang làm việc', NULL),
(165, 6, '2025-04-18', 1, 'Đang làm việc', NULL),
(166, 6, '2025-04-18', 2, 'Đang làm việc', NULL),
(167, 6, '2025-04-18', 3, 'Đang làm việc', NULL),
(168, 6, '2025-04-19', 1, 'Đang làm việc', NULL),
(169, 6, '2025-04-19', 2, 'Đang làm việc', NULL),
(170, 7, '2025-04-18', 1, 'Đang làm việc', NULL),
(171, 7, '2025-04-18', 2, 'Đang làm việc', NULL),
(172, 7, '2025-04-18', 3, 'Đang làm việc', NULL),
(173, 7, '2025-04-19', 1, 'Đang làm việc', NULL),
(174, 8, '2025-04-18', 1, 'Đang làm việc', NULL),
(175, 8, '2025-04-18', 2, 'Đang làm việc', NULL),
(176, 8, '2025-04-18', 3, 'Đang làm việc', NULL),
(177, 8, '2025-04-19', 1, 'Đang làm việc', NULL),
(178, 8, '2025-04-19', 2, 'Đang làm việc', NULL),
(179, 9, '2025-04-18', 1, 'Đang làm việc', NULL),
(180, 9, '2025-04-18', 2, 'Đang làm việc', NULL),
(181, 9, '2025-04-18', 3, 'Đang làm việc', NULL),
(182, 9, '2025-04-19', 1, 'Đang làm việc', NULL),
(183, 10, '2025-04-18', 1, 'Đang làm việc', NULL),
(184, 10, '2025-04-18', 2, 'Đang làm việc', NULL),
(185, 10, '2025-04-18', 3, 'Đang làm việc', NULL),
(186, 10, '2025-04-19', 1, 'Đang làm việc', NULL),
(187, 10, '2025-04-19', 2, 'Đang làm việc', NULL),
(206, 16, '2025-05-28', 1, 'Đang làm việc', NULL),
(207, 16, '2025-05-28', 2, 'Đang làm việc', NULL),
(208, 16, '2025-05-29', 1, 'Đang làm việc', NULL),
(209, 16, '2025-05-29', 2, 'Đang làm việc', NULL),
(210, 16, '2025-05-29', 3, 'Đang làm việc', NULL),
(211, 16, '2025-05-30', 1, 'Đang làm việc', NULL),
(212, 17, '2025-05-28', 1, 'Đang làm việc', NULL),
(213, 17, '2025-05-28', 2, 'Đang làm việc', NULL),
(214, 17, '2025-05-28', 3, 'Đang làm việc', NULL),
(215, 17, '2025-05-29', 1, 'Đang làm việc', NULL),
(216, 17, '2025-05-29', 2, 'Đang làm việc', NULL),
(217, 17, '2025-05-30', 1, 'Đang làm việc', NULL),
(218, 18, '2025-05-28', 1, 'Đang làm việc', NULL),
(219, 18, '2025-05-28', 2, 'Đang làm việc', NULL),
(220, 18, '2025-05-29', 1, 'Đang làm việc', NULL),
(221, 18, '2025-05-29', 2, 'Đang làm việc', NULL),
(222, 18, '2025-05-29', 3, 'Đang làm việc', NULL),
(223, 18, '2025-05-30', 1, 'Đang làm việc', NULL),
(224, 19, '2025-05-28', 1, 'Đang làm việc', NULL),
(225, 19, '2025-05-28', 2, 'Đang làm việc', NULL),
(226, 19, '2025-05-28', 3, 'Đang làm việc', NULL),
(227, 19, '2025-05-29', 1, 'Đang làm việc', NULL),
(228, 19, '2025-05-29', 2, 'Đang làm việc', NULL),
(229, 19, '2025-05-30', 1, 'Đang làm việc', NULL),
(230, 19, '2025-06-02', 1, 'Đang làm việc', NULL),
(231, 20, '2025-05-28', 1, 'Đang làm việc', NULL),
(232, 20, '2025-05-28', 2, 'Đang làm việc', NULL),
(233, 20, '2025-05-29', 1, 'Đang làm việc', NULL),
(234, 20, '2025-05-29', 2, 'Đang làm việc', NULL),
(235, 20, '2025-05-29', 3, 'Đang làm việc', NULL),
(236, 20, '2025-05-30', 1, 'Đang làm việc', NULL),
(237, 21, '2025-05-28', 1, 'Đang làm việc', NULL),
(238, 21, '2025-05-28', 2, 'Đang làm việc', NULL),
(239, 21, '2025-05-28', 3, 'Đang làm việc', NULL),
(240, 21, '2025-05-29', 1, 'Đang làm việc', NULL),
(241, 21, '2025-05-29', 2, 'Đang làm việc', NULL),
(242, 21, '2025-05-30', 1, 'Đang làm việc', NULL),
(243, 22, '2025-05-28', 1, 'Đang làm việc', NULL),
(244, 22, '2025-05-28', 2, 'Đang làm việc', NULL),
(245, 22, '2025-05-28', 3, 'Đang làm việc', NULL),
(246, 22, '2025-05-29', 1, 'Đang làm việc', NULL),
(247, 22, '2025-05-29', 2, 'Đang làm việc', NULL),
(248, 22, '2025-05-30', 1, 'Đang làm việc', NULL),
(249, 23, '2025-05-28', 1, 'Đang làm việc', NULL),
(250, 23, '2025-05-28', 2, 'Đang làm việc', NULL),
(251, 23, '2025-05-29', 1, 'Đang làm việc', NULL),
(252, 23, '2025-05-29', 2, 'Đang làm việc', NULL),
(253, 23, '2025-05-29', 3, 'Đang làm việc', NULL),
(254, 23, '2025-05-30', 1, 'Đang làm việc', NULL),
(255, 23, '2025-05-28', 1, 'Đang làm việc', NULL),
(256, 23, '2025-05-28', 2, 'Đang làm việc', NULL),
(257, 23, '2025-05-29', 1, 'Đang làm việc', NULL),
(258, 23, '2025-05-29', 2, 'Đang làm việc', NULL),
(259, 23, '2025-05-30', 1, 'Đang làm việc', NULL),
(260, 24, '2025-05-28', 1, 'Đang làm việc', NULL),
(261, 24, '2025-05-28', 2, 'Đang làm việc', NULL),
(262, 24, '2025-05-29', 1, 'Đang làm việc', NULL),
(263, 24, '2025-05-29', 2, 'Đang làm việc', NULL),
(264, 24, '2025-05-30', 1, 'Đang làm việc', NULL),
(265, 25, '2025-05-28', 1, 'Đang làm việc', NULL),
(266, 25, '2025-05-28', 2, 'Đang làm việc', NULL),
(267, 25, '2025-05-29', 1, 'Đang làm việc', NULL),
(268, 25, '2025-05-30', 1, 'Đang làm việc', NULL),
(269, 25, '2025-06-02', 1, 'Đang làm việc', NULL),
(270, 26, '2025-05-28', 1, 'Đang làm việc', NULL),
(271, 26, '2025-05-28', 2, 'Đang làm việc', NULL),
(272, 26, '2025-05-29', 1, 'Đang làm việc', NULL),
(273, 26, '2025-05-29', 2, 'Đang làm việc', NULL),
(274, 26, '2025-05-30', 1, 'Đang làm việc', NULL),
(275, 27, '2025-05-28', 1, 'Đang làm việc', NULL),
(276, 27, '2025-05-28', 2, 'Đang làm việc', NULL),
(277, 27, '2025-05-29', 1, 'Đang làm việc', NULL),
(278, 27, '2025-05-29', 2, 'Đang làm việc', NULL),
(279, 27, '2025-05-30', 1, 'Đang làm việc', NULL),
(280, 28, '2025-05-28', 1, 'Đang làm việc', NULL),
(281, 28, '2025-05-28', 2, 'Đang làm việc', NULL),
(282, 28, '2025-05-28', 3, 'Đang làm việc', NULL),
(283, 28, '2025-05-29', 1, 'Đang làm việc', NULL),
(284, 28, '2025-05-29', 2, 'Đang làm việc', NULL),
(285, 29, '2025-05-28', 1, 'Đang làm việc', NULL),
(286, 29, '2025-05-28', 2, 'Đang làm việc', NULL),
(287, 29, '2025-05-29', 1, 'Đang làm việc', NULL),
(288, 29, '2025-05-29', 2, 'Đang làm việc', NULL),
(289, 29, '2025-05-30', 1, 'Đang làm việc', NULL),
(290, 30, '2025-05-28', 1, 'Đang làm việc', NULL),
(291, 30, '2025-05-28', 2, 'Đang làm việc', NULL),
(292, 30, '2025-05-28', 3, 'Đang làm việc', NULL),
(293, 30, '2025-05-29', 1, 'Đang làm việc', NULL),
(294, 30, '2025-05-29', 2, 'Đang làm việc', NULL),
(295, 31, '2025-05-28', 1, 'Đang làm việc', NULL),
(296, 31, '2025-05-28', 2, 'Đang làm việc', NULL),
(297, 31, '2025-05-29', 1, 'Đang làm việc', NULL),
(298, 31, '2025-05-29', 2, 'Đang làm việc', NULL),
(299, 31, '2025-05-30', 1, 'Đang làm việc', NULL),
(300, 32, '2025-05-28', 1, 'Đang làm việc', NULL),
(301, 32, '2025-05-28', 2, 'Đang làm việc', NULL),
(302, 32, '2025-05-29', 1, 'Đang làm việc', NULL),
(303, 32, '2025-05-29', 2, 'Đang làm việc', NULL),
(304, 32, '2025-05-30', 1, 'Đang làm việc', NULL),
(305, 33, '2025-05-28', 1, 'Đang làm việc', NULL),
(306, 33, '2025-05-28', 2, 'Đang làm việc', NULL),
(307, 33, '2025-05-28', 3, 'Đang làm việc', NULL),
(308, 33, '2025-05-29', 1, 'Đang làm việc', NULL),
(309, 33, '2025-05-29', 2, 'Đang làm việc', NULL),
(310, 34, '2025-05-28', 1, 'Đang làm việc', NULL),
(311, 34, '2025-05-28', 2, 'Đang làm việc', NULL),
(312, 34, '2025-05-29', 1, 'Đang làm việc', NULL),
(313, 34, '2025-05-29', 2, 'Đang làm việc', NULL),
(314, 34, '2025-05-30', 1, 'Đang làm việc', NULL),
(315, 35, '2025-05-28', 1, 'Đang làm việc', NULL),
(316, 35, '2025-05-28', 2, 'Đang làm việc', NULL),
(317, 35, '2025-05-28', 3, 'Đang làm việc', NULL),
(318, 35, '2025-05-29', 1, 'Đang làm việc', NULL),
(319, 35, '2025-05-29', 2, 'Đang làm việc', NULL),
(320, 36, '2025-05-28', 1, 'Đang làm việc', NULL),
(321, 36, '2025-05-28', 2, 'Đang làm việc', NULL),
(322, 36, '2025-05-29', 1, 'Đang làm việc', NULL),
(323, 36, '2025-05-29', 2, 'Đang làm việc', NULL),
(324, 36, '2025-05-30', 1, 'Đang làm việc', NULL),
(325, 36, '2025-06-02', 1, 'Đang làm việc', NULL),
(326, 37, '2025-05-28', 1, 'Đang làm việc', NULL),
(327, 37, '2025-05-28', 2, 'Đang làm việc', NULL),
(328, 37, '2025-05-29', 1, 'Đang làm việc', NULL),
(329, 37, '2025-05-29', 2, 'Đang làm việc', NULL),
(330, 37, '2025-05-30', 1, 'Đang làm việc', NULL),
(331, 40, '2025-05-28', 1, 'Đang làm việc', NULL),
(332, 40, '2025-05-28', 2, 'Đang làm việc', NULL),
(333, 40, '2025-05-29', 1, 'Đang làm việc', NULL),
(334, 40, '2025-05-29', 2, 'Đang làm việc', NULL),
(335, 40, '2025-05-30', 1, 'Đang làm việc', NULL),
(336, 41, '2025-05-28', 1, 'Đang làm việc', NULL),
(337, 41, '2025-05-28', 2, 'Đang làm việc', NULL),
(338, 41, '2025-05-28', 3, 'Đang làm việc', NULL),
(339, 41, '2025-05-29', 1, 'Đang làm việc', NULL),
(340, 41, '2025-05-29', 2, 'Đang làm việc', NULL),
(341, 42, '2025-05-28', 1, 'Đang làm việc', NULL),
(342, 42, '2025-05-28', 2, 'Đang làm việc', NULL),
(343, 42, '2025-05-29', 1, 'Đang làm việc', NULL),
(344, 42, '2025-05-29', 2, 'Đang làm việc', NULL),
(345, 42, '2025-05-30', 1, 'Đang làm việc', NULL),
(346, 43, '2025-05-28', 1, 'Đang làm việc', NULL),
(347, 43, '2025-05-28', 2, 'Đang làm việc', NULL),
(348, 43, '2025-05-28', 3, 'Đang làm việc', NULL),
(349, 43, '2025-05-29', 1, 'Đang làm việc', NULL),
(350, 43, '2025-05-29', 2, 'Đang làm việc', NULL),
(351, 44, '2025-05-28', 1, 'Đang làm việc', NULL),
(352, 44, '2025-05-28', 2, 'Đang làm việc', NULL),
(353, 44, '2025-05-29', 1, 'Đang làm việc', NULL),
(354, 44, '2025-05-29', 2, 'Đang làm việc', NULL),
(355, 44, '2025-05-30', 1, 'Đang làm việc', NULL),
(356, 45, '2025-05-28', 1, 'Đang làm việc', NULL),
(357, 45, '2025-05-28', 2, 'Đang làm việc', NULL),
(358, 45, '2025-05-28', 3, 'Đang làm việc', NULL),
(359, 45, '2025-05-29', 1, 'Đang làm việc', NULL),
(360, 45, '2025-05-29', 2, 'Đang làm việc', NULL),
(361, 46, '2025-05-28', 1, 'Đang làm việc', NULL),
(362, 46, '2025-05-28', 2, 'Đang làm việc', NULL),
(363, 46, '2025-05-29', 1, 'Đang làm việc', NULL),
(364, 46, '2025-05-29', 2, 'Đang làm việc', NULL),
(365, 46, '2025-05-30', 1, 'Đang làm việc', NULL),
(366, 32, '2025-05-28', 1, 'Đang làm việc', NULL),
(367, 32, '2025-05-28', 2, 'Đang làm việc', NULL),
(368, 32, '2025-05-29', 1, 'Đang làm việc', NULL),
(369, 32, '2025-05-29', 2, 'Đang làm việc', NULL),
(370, 32, '2025-05-30', 1, 'Đang làm việc', NULL),
(371, 33, '2025-05-28', 1, 'Đang làm việc', NULL),
(372, 33, '2025-05-28', 2, 'Đang làm việc', NULL),
(373, 33, '2025-05-28', 3, 'Đang làm việc', NULL),
(374, 33, '2025-05-29', 1, 'Đang làm việc', NULL),
(375, 33, '2025-05-29', 2, 'Đang làm việc', NULL),
(376, 34, '2025-05-28', 1, 'Đang làm việc', NULL),
(377, 34, '2025-05-28', 2, 'Đang làm việc', NULL),
(378, 34, '2025-05-29', 1, 'Đang làm việc', NULL),
(379, 34, '2025-05-29', 2, 'Đang làm việc', NULL),
(380, 34, '2025-05-30', 1, 'Đang làm việc', NULL),
(381, 35, '2025-05-28', 1, 'Đang làm việc', NULL),
(382, 35, '2025-05-28', 2, 'Đang làm việc', NULL),
(383, 35, '2025-05-28', 3, 'Đang làm việc', NULL),
(384, 35, '2025-05-29', 1, 'Đang làm việc', NULL),
(385, 35, '2025-05-29', 2, 'Đang làm việc', NULL),
(386, 36, '2025-05-28', 1, 'Đang làm việc', NULL),
(387, 36, '2025-05-28', 2, 'Đang làm việc', NULL),
(388, 36, '2025-05-29', 1, 'Đang làm việc', NULL),
(389, 36, '2025-05-29', 2, 'Đang làm việc', NULL),
(390, 36, '2025-05-30', 1, 'Đang làm việc', NULL),
(391, 36, '2025-06-02', 1, 'Đang làm việc', NULL),
(392, 37, '2025-05-28', 1, 'Đang làm việc', NULL),
(393, 37, '2025-05-28', 2, 'Đang làm việc', NULL),
(394, 37, '2025-05-29', 1, 'Đang làm việc', NULL),
(395, 37, '2025-05-29', 2, 'Đang làm việc', NULL),
(396, 37, '2025-05-30', 1, 'Đang làm việc', NULL),
(397, 38, '2025-05-28', 1, 'Đang làm việc', NULL),
(398, 38, '2025-05-28', 2, 'Đang làm việc', NULL),
(399, 38, '2025-05-29', 1, 'Đang làm việc', NULL),
(400, 38, '2025-05-29', 2, 'Đang làm việc', NULL),
(401, 38, '2025-05-30', 1, 'Đang làm việc', NULL),
(402, 39, '2025-05-28', 1, 'Đang làm việc', NULL),
(403, 39, '2025-05-28', 2, 'Đang làm việc', NULL),
(404, 39, '2025-05-29', 1, 'Đang làm việc', NULL),
(405, 39, '2025-05-29', 2, 'Đang làm việc', NULL),
(406, 39, '2025-05-30', 1, 'Đang làm việc', NULL),
(407, 52, '2025-05-28', 1, 'Đang làm việc', NULL),
(408, 52, '2025-05-28', 2, 'Đang làm việc', NULL),
(409, 52, '2025-05-29', 1, 'Đang làm việc', NULL),
(410, 52, '2025-05-29', 2, 'Đang làm việc', NULL),
(411, 52, '2025-05-30', 1, 'Đang làm việc', NULL),
(412, 53, '2025-05-28', 1, 'Đang làm việc', NULL),
(413, 53, '2025-05-28', 2, 'Đang làm việc', NULL),
(414, 53, '2025-05-29', 1, 'Đang làm việc', NULL),
(415, 53, '2025-05-29', 2, 'Đang làm việc', NULL),
(416, 53, '2025-05-30', 1, 'Đang làm việc', NULL),
(417, 54, '2025-05-28', 1, 'Đang làm việc', NULL),
(418, 54, '2025-05-28', 2, 'Đang làm việc', NULL),
(419, 54, '2025-05-29', 1, 'Đang làm việc', NULL),
(420, 54, '2025-05-29', 2, 'Đang làm việc', NULL),
(421, 54, '2025-05-30', 1, 'Đang làm việc', NULL),
(422, 55, '2025-05-28', 1, 'Đang làm việc', NULL),
(423, 55, '2025-05-28', 2, 'Đang làm việc', NULL),
(424, 55, '2025-05-29', 1, 'Đang làm việc', NULL),
(425, 55, '2025-05-29', 2, 'Đang làm việc', NULL),
(426, 55, '2025-05-30', 1, 'Đang làm việc', NULL),
(427, 55, '2025-06-02', 1, 'Đang làm việc', NULL),
(428, 56, '2025-05-28', 1, 'Đang làm việc', NULL),
(429, 56, '2025-05-28', 2, 'Đang làm việc', NULL),
(430, 56, '2025-05-29', 1, 'Đang làm việc', NULL),
(431, 56, '2025-05-29', 2, 'Đang làm việc', NULL),
(432, 56, '2025-05-30', 1, 'Đang làm việc', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsucapnhathsba`
--

CREATE TABLE `lichsucapnhathsba` (
  `macapnhat` int(10) UNSIGNED NOT NULL,
  `mahoso` int(11) NOT NULL,
  `mabacsi` int(11) NOT NULL,
  `loaicapnhat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thoigiancapnhat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichxetnghiem`
--

CREATE TABLE `lichxetnghiem` (
  `malichxetnghiem` int(10) UNSIGNED NOT NULL,
  `mabenhnhan` int(11) UNSIGNED NOT NULL,
  `mabacsi` int(11) UNSIGNED NOT NULL,
  `maloaixetnghiem` int(11) UNSIGNED NOT NULL,
  `ngayhen` date NOT NULL,
  `makhunggio` int(11) UNSIGNED NOT NULL,
  `trangthai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mahoso` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lichxetnghiem`
--

INSERT INTO `lichxetnghiem` (`malichxetnghiem`, `mabenhnhan`, `mabacsi`, `maloaixetnghiem`, `ngayhen`, `makhunggio`, `trangthai`, `mahoso`) VALUES
(1, 1, 1, 1, '2024-04-22', 3, 'Đã đặt lịch', 1),
(2, 1, 3, 32, '2024-04-22', 4, 'Đã đặt lịch', 1),
(3, 1, 3, 38, '2024-04-22', 5, 'Đã đặt lịch', 1),
(4, 2, 3, 32, '2024-04-23', 3, 'Đã đặt lịch', 2),
(5, 2, 3, 38, '2024-04-23', 4, 'Đã đặt lịch', 2),
(7, 3, 3, 7, '2024-04-24', 6, 'Đã đặt lịch', 3),
(9, 4, 3, 7, '2024-04-25', 4, 'Đã đặt lịch', 4),
(10, 5, 6, 29, '2024-04-26', 5, 'Đã đặt lịch', 5),
(11, 6, 6, 29, '2024-04-26', 6, 'Đã đặt lịch', 6),
(12, 7, 8, 14, '2024-04-27', 3, 'Đã đặt lịch', 7),
(13, 8, 8, 14, '2024-04-27', 4, 'Đã đặt lịch', 8),
(14, 9, 10, 30, '2024-04-28', 5, 'Đã đặt lịch', 9),
(15, 1, 1, 1, '2024-04-29', 1, 'Chờ xác nhận', 1),
(16, 2, 1, 1, '2024-04-29', 2, 'Chờ xác nhận', 2),
(17, 3, 3, 31, '2024-04-30', 3, 'Chờ xác nhận', 3),
(18, 4, 16, 35, '2024-04-30', 4, 'Chờ xác nhận', 4),
(19, 5, 16, 37, '2024-05-02', 5, 'Chờ xác nhận', 5),
(20, 6, 6, 29, '2024-05-02', 6, 'Chờ xác nhận', 6),
(21, 7, 8, 14, '2024-05-03', 7, 'Chờ xác nhận', 7),
(22, 8, 17, 33, '2024-05-03', 8, 'Chờ xác nhận', 8),
(23, 9, 17, 30, '2024-05-04', 9, 'Chờ xác nhận', 9),
(24, 1, 1, 9, '2024-05-06', 3, 'Đã hủy', 1),
(25, 2, 1, 10, '2024-05-06', 4, 'Đã hủy', 2),
(26, 1, 1, 1, '2024-04-20', 25, 'Đã hoàn thành', 1),
(27, 1, 1, 38, '2024-04-20', 26, 'Đã hoàn thành', 1),
(30, 5, 6, 29, '2024-04-18', 5, 'Đã hoàn thành', 5),
(31, 6, 6, 29, '2024-04-18', 6, 'Đã hoàn thành', 6),
(32, 7, 8, 14, '2024-04-17', 3, 'Đã hoàn thành', 7),
(33, 8, 8, 14, '2024-04-17', 4, 'Đã hoàn thành', 8),
(34, 9, 10, 30, '2024-04-17', 5, 'Đã hoàn thành', 9),
(35, 1, 1, 1, '2024-04-17', 1, 'Đã hoàn thành', 1),
(36, 2, 1, 1, '2024-04-17', 2, 'Đã hoàn thành', 2),
(37, 3, 3, 31, '2024-04-17', 3, 'Đã hoàn thành', 3),
(38, 4, 16, 35, '2024-04-17', 4, 'Đã hoàn thành', 4),
(39, 5, 16, 37, '2024-04-17', 5, 'Đã hoàn thành', 5),
(40, 6, 6, 29, '2024-04-17', 6, 'Đã hoàn thành', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaihoso`
--

CREATE TABLE `loaihoso` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaihoso`
--

INSERT INTO `loaihoso` (`maloai`, `tenloai`) VALUES
(1, 'BỆNH ÁN IUI'),
(2, 'BỆNH ÁN IVF'),
(3, 'BỆNH ÁN NGOẠI KHOA'),
(4, 'BỆNH ÁN SẢN PHỤ KHOA'),
(5, 'HỒ SƠ QUẢN LÝ THAI KỲ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaixetnghiem`
--

CREATE TABLE `loaixetnghiem` (
  `maloaixetnghiem` int(10) UNSIGNED NOT NULL,
  `tenloaixetnghiem` varchar(255) NOT NULL,
  `mota` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `machuyenkhoa` int(11) NOT NULL,
  `thoigiandukien` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `trangthai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaixetnghiem`
--

INSERT INTO `loaixetnghiem` (`maloaixetnghiem`, `tenloaixetnghiem`, `mota`, `machuyenkhoa`, `thoigiandukien`, `trangthai`) VALUES
(1, 'Công thức máu toàn phần (CBC)', 'Xét nghiệm đếm số lượng hồng cầu, bạch cầu, tiểu cầu và các chỉ số liên quan', 1, '10', 'Hoạt động'),
(2, 'Đông máu cơ bản', 'Xét nghiệm thời gian prothrombin (PT), thời gian thromboplastin từng phần hoạt hóa (APTT)', 1, '15', 'Hoạt động'),
(3, 'Nhóm máu ABO và Rh', 'Xác định nhóm máu hệ ABO và yếu tố Rh', 1, '10', 'Hoạt động'),
(4, 'Tốc độ lắng máu', 'Đo tốc độ lắng của hồng cầu trong huyết tương', 1, '5', 'Hoạt động'),
(5, 'Điện di Hemoglobin', 'Phân tích các loại hemoglobin bất thường', 1, '20', 'Hoạt động'),
(6, 'Glucose máu', 'Đo nồng độ đường trong máu', 2, '5', 'Hoạt động'),
(7, 'Chức năng gan (LFT)', 'Xét nghiệm ALT, AST, GGT, ALP, Bilirubin toàn phần và trực tiếp', 2, '15', 'Hoạt động'),
(8, 'Chức năng thận', 'Xét nghiệm Ure, Creatinine, Acid Uric', 2, '10', 'Hoạt động'),
(9, 'Lipid máu', 'Xét nghiệm Cholesterol toàn phần, HDL-C, LDL-C, Triglyceride', 2, '15', 'Hoạt động'),
(10, 'HbA1c', 'Đo nồng độ hemoglobin đường hóa để đánh giá kiểm soát đường huyết', 2, '10', 'Hoạt động'),
(11, 'Cấy máu', 'Phát hiện vi khuẩn trong máu', 3, '10', 'Hoạt động'),
(12, 'Cấy đờm', 'Phát hiện vi khuẩn trong đờm', 3, '10', 'Hoạt động'),
(13, 'Cấy nước tiểu', 'Phát hiện vi khuẩn trong nước tiểu', 3, '10', 'Hoạt động'),
(14, 'Soi trực tiếp và nhuộm Gram', 'Quan sát vi khuẩn dưới kính hiển vi', 3, '15', 'Hoạt động'),
(15, 'Kháng sinh đồ', 'Xác định độ nhạy của vi khuẩn với kháng sinh', 3, '5', 'Hoạt động'),
(16, 'HIV Ab/Ag', 'Phát hiện kháng thể và kháng nguyên HIV', 4, '15', 'Hoạt động'),
(17, 'HBsAg', 'Phát hiện kháng nguyên bề mặt virus viêm gan B', 4, '15', 'Hoạt động'),
(18, 'Anti-HCV', 'Phát hiện kháng thể virus viêm gan C', 4, '15', 'Hoạt động'),
(19, 'CRP định lượng', 'Đo nồng độ protein C phản ứng để đánh giá tình trạng viêm', 4, '10', 'Hoạt động'),
(20, 'RF (Yếu tố dạng thấp)', 'Phát hiện kháng thể liên quan đến bệnh thấp khớp', 4, '10', 'Hoạt động'),
(21, 'TSH', 'Đo nồng độ hormone kích thích tuyến giáp', 5, '10', 'Hoạt động'),
(22, 'FT3, FT4', 'Đo nồng độ hormone tuyến giáp tự do', 5, '15', 'Hoạt động'),
(23, 'Insulin máu', 'Đo nồng độ insulin trong máu', 5, '10', 'Hoạt động'),
(24, 'Cortisol', 'Đo nồng độ hormone cortisol', 5, '10', 'Hoạt động'),
(25, 'Testosterone', 'Đo nồng độ hormone testosterone', 5, '10', 'Hoạt động'),
(26, 'Tổng phân tích nước tiểu', 'Phân tích các thành phần trong nước tiểu', 6, '10', 'Hoạt động'),
(27, 'Protein niệu 24h', 'Đo lượng protein trong nước tiểu 24 giờ', 6, '5', 'Hoạt động'),
(28, 'Microalbumin niệu', 'Phát hiện lượng nhỏ albumin trong nước tiểu', 6, '10', 'Hoạt động'),
(29, 'X-quang ngực thẳng', 'Chụp X-quang vùng ngực', 7, '10', 'Hoạt động'),
(30, 'X-quang xương khớp', 'Chụp X-quang các khớp xương', 7, '10', 'Hoạt động'),
(31, 'Siêu âm ổ bụng', 'Siêu âm các cơ quan trong ổ bụng', 7, '20', 'Hoạt động'),
(32, 'Siêu âm tim', 'Siêu âm đánh giá cấu trúc và chức năng tim', 7, '30', 'Hoạt động'),
(33, 'CT Scanner não', 'Chụp cắt lớp vi tính não', 7, '20', 'Hoạt động'),
(34, 'CT Scanner ngực', 'Chụp cắt lớp vi tính ngực', 7, '20', 'Hoạt động'),
(35, 'CT Scanner bụng', 'Chụp cắt lớp vi tính ổ bụng', 7, '20', 'Hoạt động'),
(36, 'MRI não', 'Chụp cộng hưởng từ não', 7, '45', 'Hoạt động'),
(37, 'MRI cột sống', 'Chụp cộng hưởng từ cột sống', 7, '45', 'Hoạt động'),
(38, 'Điện tâm đồ (ECG)', 'Ghi lại hoạt động điện của tim', 13, '10', 'Hoạt động'),
(39, 'Holter điện tâm đồ', 'Theo dõi điện tâm đồ liên tục trong 24 giờ', 13, '5', 'Hoạt động'),
(81, 'Công thức máu toàn phần (CBC)', 'Xét nghiệm đếm số lượng hồng cầu, bạch cầu, tiểu cầu và các chỉ số liên quan', 1, '10', 'Hoạt động'),
(82, 'Đông máu cơ bản', 'Xét nghiệm thời gian prothrombin (PT), thời gian thromboplastin từng phần hoạt hóa (APTT)', 1, '15', 'Hoạt động'),
(83, 'Nhóm máu ABO và Rh', 'Xác định nhóm máu hệ ABO và yếu tố Rh', 1, '10', 'Hoạt động'),
(84, 'Tốc độ lắng máu', 'Đo tốc độ lắng của hồng cầu trong huyết tương', 1, '5', 'Hoạt động'),
(85, 'Điện di Hemoglobin', 'Phân tích các loại hemoglobin bất thường', 1, '20', 'Hoạt động'),
(86, 'Glucose máu', 'Đo nồng độ đường trong máu', 2, '5', 'Hoạt động'),
(87, 'Chức năng gan (LFT)', 'Xét nghiệm ALT, AST, GGT, ALP, Bilirubin toàn phần và trực tiếp', 2, '15', 'Hoạt động'),
(88, 'Chức năng thận', 'Xét nghiệm Ure, Creatinine, Acid Uric', 2, '10', 'Hoạt động'),
(89, 'Lipid máu', 'Xét nghiệm Cholesterol toàn phần, HDL-C, LDL-C, Triglyceride', 2, '15', 'Hoạt động'),
(90, 'HbA1c', 'Đo nồng độ hemoglobin đường hóa để đánh giá kiểm soát đường huyết', 2, '10', 'Hoạt động'),
(91, 'Cấy máu', 'Phát hiện vi khuẩn trong máu', 3, '10', 'Hoạt động'),
(92, 'Cấy đờm', 'Phát hiện vi khuẩn trong đờm', 3, '10', 'Hoạt động'),
(93, 'Cấy nước tiểu', 'Phát hiện vi khuẩn trong nước tiểu', 3, '10', 'Hoạt động'),
(94, 'Soi trực tiếp và nhuộm Gram', 'Quan sát vi khuẩn dưới kính hiển vi', 3, '15', 'Hoạt động'),
(95, 'Kháng sinh đồ', 'Xác định độ nhạy của vi khuẩn với kháng sinh', 3, '5', 'Hoạt động'),
(96, 'HIV Ab/Ag', 'Phát hiện kháng thể và kháng nguyên HIV', 4, '15', 'Hoạt động'),
(97, 'HBsAg', 'Phát hiện kháng nguyên bề mặt virus viêm gan B', 4, '15', 'Hoạt động'),
(98, 'Anti-HCV', 'Phát hiện kháng thể virus viêm gan C', 4, '15', 'Hoạt động'),
(99, 'CRP định lượng', 'Đo nồng độ protein C phản ứng để đánh giá tình trạng viêm', 4, '10', 'Hoạt động'),
(100, 'RF (Yếu tố dạng thấp)', 'Phát hiện kháng thể liên quan đến bệnh thấp khớp', 4, '10', 'Hoạt động'),
(101, 'TSH', 'Đo nồng độ hormone kích thích tuyến giáp', 5, '10', 'Hoạt động'),
(102, 'FT3, FT4', 'Đo nồng độ hormone tuyến giáp tự do', 5, '15', 'Hoạt động'),
(103, 'Insulin máu', 'Đo nồng độ insulin trong máu', 5, '10', 'Hoạt động'),
(104, 'Cortisol', 'Đo nồng độ hormone cortisol', 5, '10', 'Hoạt động'),
(105, 'Testosterone', 'Đo nồng độ hormone testosterone', 5, '10', 'Hoạt động'),
(106, 'Tổng phân tích nước tiểu', 'Phân tích các thành phần trong nước tiểu', 6, '10', 'Hoạt động'),
(107, 'Protein niệu 24h', 'Đo lượng protein trong nước tiểu 24 giờ', 6, '5', 'Hoạt động'),
(108, 'Microalbumin niệu', 'Phát hiện lượng nhỏ albumin trong nước tiểu', 6, '10', 'Hoạt động'),
(109, 'X-quang ngực thẳng', 'Chụp X-quang vùng ngực', 7, '10', 'Hoạt động'),
(110, 'X-quang xương khớp', 'Chụp X-quang các khớp xương', 7, '10', 'Hoạt động'),
(111, 'Siêu âm ổ bụng', 'Siêu âm các cơ quan trong ổ bụng', 7, '20', 'Hoạt động'),
(112, 'Siêu âm tim', 'Siêu âm đánh giá cấu trúc và chức năng tim', 7, '30', 'Hoạt động'),
(113, 'CT Scanner não', 'Chụp cắt lớp vi tính não', 7, '20', 'Hoạt động'),
(114, 'CT Scanner ngực', 'Chụp cắt lớp vi tính ngực', 7, '20', 'Hoạt động'),
(115, 'CT Scanner bụng', 'Chụp cắt lớp vi tính ổ bụng', 7, '20', 'Hoạt động'),
(116, 'MRI não', 'Chụp cộng hưởng từ não', 7, '45', 'Hoạt động'),
(117, 'MRI cột sống', 'Chụp cộng hưởng từ cột sống', 7, '45', 'Hoạt động'),
(118, 'Điện tâm đồ (ECG)', 'Ghi lại hoạt động điện của tim', 13, '10', 'Hoạt động'),
(119, 'Holter điện tâm đồ', 'Theo dõi điện tâm đồ liên tục trong 24 giờ', 13, '5', 'Hoạt động'),
(120, 'Nghiệm pháp gắng sức', 'Đánh giá chức năng tim khi gắng sức', 13, '60', 'Hoạt động'),
(121, 'Điện não đồ (EEG)', 'Ghi lại hoạt động điện của não', 14, '60', 'Hoạt động'),
(122, 'Điện cơ đồ (EMG)', 'Đánh giá chức năng của cơ và dây thần kinh', 14, '60', 'Hoạt động'),
(123, 'Đo chức năng hô hấp', 'Đánh giá chức năng phổi', 10, '20', 'Hoạt động'),
(124, 'Khí máu động mạch', 'Đo nồng độ oxy, CO2 và độ pH trong máu động mạch', 10, '10', 'Hoạt động'),
(125, 'Nội soi phế quản', 'Quan sát trực tiếp đường thở', 10, '30', 'Hoạt động'),
(126, 'Test kích thích phế quản', 'Đánh giá phản ứng của đường thở với các chất kích thích', 10, '45', 'Hoạt động'),
(127, 'Siêu âm thai', 'Siêu âm đánh giá thai nhi và tử cung', 12, '20', 'Hoạt động'),
(128, 'Xét nghiệm Pap', 'Phát hiện tế bào bất thường ở cổ tử cung', 12, '5', 'Hoạt động'),
(129, 'Beta-hCG', 'Xét nghiệm xác định thai kỳ', 12, '10', 'Hoạt động'),
(130, 'Soi tươi dịch âm đạo', 'Quan sát vi khuẩn, nấm, trùng roi trong dịch âm đạo', 12, '10', 'Hoạt động'),
(131, 'HPV DNA', 'Xét nghiệm phát hiện virus gây u nhú ở người', 12, '15', 'Hoạt động'),
(132, 'Đo chức năng hô hấp', 'Đánh giá chức năng phổi', 10, '20', 'Hoạt động'),
(133, 'Khí máu động mạch', 'Đo nồng độ oxy, CO2 và độ pH trong máu động mạch', 10, '10', 'Hoạt động'),
(134, 'Nội soi phế quản', 'Quan sát trực tiếp đường thở', 10, '30', 'Hoạt động'),
(135, 'Test kích thích phế quản', 'Đánh giá phản ứng của đường thở với các chất kích thích', 10, '45', 'Hoạt động'),
(136, 'Đánh giá tầm vận động khớp', 'Đo và ghi nhận góc độ di chuyển của các khớp', 15, '15', 'Hoạt động'),
(137, 'Đánh giá sức mạnh cơ', 'Đo và ghi nhận lực cơ ở các nhóm cơ khác nhau', 15, '15', 'Hoạt động'),
(138, 'Đánh giá chức năng dáng đi', 'Quan sát và phân tích dáng đi', 15, '20', 'Hoạt động'),
(139, 'Điện cơ bề mặt (sEMG)', 'Ghi lại hoạt động điện của cơ bắp trên bề mặt da', 15, '25', 'Hoạt động'),
(140, 'Điện tâm đồ (ECG)', 'Ghi lại hoạt động điện của tim', 8, '10', 'Hoạt động'),
(141, 'Holter điện tâm đồ', 'Theo dõi điện tâm đồ liên tục trong 24 giờ', 8, '5', 'Hoạt động'),
(142, 'Nghiệm pháp gắng sức', 'Đánh giá chức năng tim khi gắng sức', 8, '60', 'Hoạt động'),
(143, 'Siêu âm tim Doppler màu', 'Đánh giá cấu trúc và chức năng tim, dòng chảy máu', 8, '30', 'Hoạt động'),
(144, 'Điện tâm đồ gắng sức dược lý', 'Đánh giá chức năng tim khi gắng sức bằng thuốc', 8, '75', 'Hoạt động'),
(145, 'Điện não đồ (EEG)', 'Ghi lại hoạt động điện của não', 9, '60', 'Hoạt động'),
(146, 'Điện cơ đồ (EMG)', 'Đánh giá chức năng của cơ và dây thần kinh', 9, '60', 'Hoạt động'),
(147, 'Lưu huyết não (TCD)', 'Đánh giá lưu lượng máu não qua các động mạch', 9, '30', 'Hoạt động'),
(148, 'Đo điện thế gợi (VEP, BAEP, SSEP)', 'Đánh giá chức năng đường dẫn truyền thần kinh thị giác, thính giác, cảm giác', 9, '45', 'Hoạt động'),
(149, 'Chọc dò tủy sống', 'Lấy dịch não tủy để xét nghiệm', 9, '20', 'Hoạt động'),
(150, 'Nội soi dạ dày', 'Quan sát trực tiếp niêm mạc dạ dày và tá tràng', 11, '20', 'Hoạt động'),
(151, 'Nội soi đại tràng', 'Quan sát trực tiếp niêm mạc đại tràng', 11, '30', 'Hoạt động'),
(152, 'Siêu âm gan mật', 'Siêu âm đánh giá cấu trúc gan và đường mật', 11, '15', 'Hoạt động'),
(153, 'Test HP (Urease)', 'Xét nghiệm nhanh phát hiện vi khuẩn Helicobacter pylori qua nội soi', 11, '5', 'Hoạt động'),
(154, 'Sinh thiết dạ dày - tá tràng', 'Lấy mẫu mô bệnh phẩm từ dạ dày hoặc tá tràng qua nội soi', 11, '10', 'Hoạt động'),
(155, 'Nội soi thực quản - dạ dày - tá tràng (EGD)', 'Quan sát thực quản, dạ dày và tá tràng', 11, '25', 'Hoạt động'),
(156, 'Nội soi đại tràng sigma', 'Quan sát đoạn cuối đại tràng', 11, '20', 'Hoạt động'),
(157, 'Siêu âm đường mật tụy (EUS)', 'Siêu âm kết hợp nội soi để khảo sát đường mật và tụy', 11, '45', 'Hoạt động');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieukhambenh`
--

CREATE TABLE `phieukhambenh` (
  `maphieukb` int(11) UNSIGNED NOT NULL,
  `ngaykham` date NOT NULL,
  `giokham` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mabacsi` int(11) UNSIGNED NOT NULL,
  `mabenhnhan` int(11) UNSIGNED NOT NULL,
  `tongtien` int(11) NOT NULL,
  `trangthai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieukhambenh`
--

INSERT INTO `phieukhambenh` (`maphieukb`, `ngaykham`, `giokham`, `mabacsi`, `mabenhnhan`, `tongtien`, `trangthai`) VALUES
(1, '2025-04-17', '20:30:00', 1, 1, 150000, 'chưa khám'),
(2, '2025-04-18', '08:00:00', 2, 2, 220000, 'đã khám'),
(3, '2025-04-18', '09:15:00', 3, 3, 300000, 'chưa khám'),
(4, '2025-04-18', '10:00:00', 4, 4, 300000, 'đã khám'),
(5, '2025-04-18', '14:45:00', 5, 5, 250000, 'đã hủy'),
(6, '2025-04-17', '21:00:00', 1, 1, 0, 'chưa khám'),
(7, '2025-04-17', '21:15:00', 2, 2, 180000, 'đã khám'),
(8, '2025-04-17', '21:30:00', 3, 3, 0, 'đã hủy'),
(9, '2025-04-17', '21:45:00', 1, 4, 250000, 'đã khám'),
(10, '2025-04-17', '22:00:00', 2, 5, 0, 'chưa khám'),
(11, '2025-04-18', '07:00:00', 3, 6, 120000, 'đã khám'),
(12, '2025-04-18', '07:15:00', 1, 7, 0, 'đã hủy'),
(13, '2025-04-18', '07:30:00', 2, 8, 310000, 'đã khám'),
(14, '2025-04-18', '07:45:00', 3, 9, 0, 'chưa khám'),
(15, '2025-04-18', '08:15:00', 1, 10, 90000, 'đã khám'),
(16, '2025-04-18', '08:30:00', 2, 11, 0, 'đã hủy'),
(17, '2025-04-18', '08:45:00', 3, 12, 280000, 'đã khám'),
(18, '2025-04-18', '09:00:00', 1, 13, 0, 'chưa khám'),
(19, '2025-04-18', '09:30:00', 2, 14, 150000, 'đã khám'),
(20, '2025-04-18', '09:45:00', 3, 15, 0, 'đã hủy'),
(21, '2025-04-18', '10:15:00', 1, 16, 220000, 'đã khám'),
(22, '2025-04-18', '10:30:00', 2, 17, 0, 'chưa khám'),
(23, '2025-04-18', '10:45:00', 3, 18, 190000, 'đã khám'),
(24, '2025-04-18', '11:00:00', 1, 19, 0, 'đã hủy'),
(25, '2025-04-18', '11:30:00', 2, 20, 270000, 'đã khám'),
(26, '2025-04-18', '11:45:00', 3, 21, 0, 'chưa khám'),
(27, '2025-04-18', '13:00:00', 1, 22, 110000, 'đã khám'),
(28, '2025-04-18', '13:15:00', 2, 23, 0, 'đã hủy'),
(29, '2025-04-18', '13:30:00', 3, 24, 330000, 'đã khám'),
(30, '2025-04-18', '13:45:00', 1, 25, 0, 'chưa khám'),
(31, '2025-04-18', '14:15:00', 2, 26, 160000, 'đã khám'),
(32, '2025-04-18', '14:30:00', 3, 27, 0, 'đã hủy'),
(33, '2025-04-18', '15:00:00', 1, 28, 240000, 'đã khám'),
(34, '2025-04-18', '15:15:00', 2, 29, 0, 'chưa khám'),
(35, '2025-04-18', '15:30:00', 3, 30, 100000, 'đã khám'),
(36, '2025-04-18', '16:00:00', 1, 31, 0, 'đã hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `tentk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `otp` int(11) DEFAULT NULL,
  `vaitro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`tentk`, `matkhau`, `otp`, `vaitro`) VALUES
('abc@gmail.com', '$2y$10$u6g6uF3jQsUKCqReOayvSuUfm52FPLgChXqRUflzWkp', NULL, 1),
('ba@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 1),
('chanthuongchinhhinh.letrongphat@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('chanthuongchinhhinh.vovanman@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('chanthuongchinhhinh.vuhoanglien@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('coxuongkhop.danghonghoa@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('dalieu.letranmytu@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('dalieu.nguyenphuonganh@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('dalieu.tranthuha@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('dalieu.vuthaiha@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('hai@gmail.com', '$2y$10$AXkTjpL0fmFBcDdIc0TY..O3fLgK2Y2jq.USNd5cgIEmf0MQ7JVW.', NULL, 1),
('khoangoai.dangbahiep@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('khoangoai.lexuantai@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('khoangoai.tranthanhcong@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('kienngo@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 1),
('mat.lethiphuongthao@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('mat.nguyenthithuynga@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('nhi.nguyenphuongkhanh@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('nhi.nguyenthihoaian@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('nhi.nguyenthilelieu@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('nhi.nguyenthingoc@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('nhi.nguyenxuantai@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('phuchoichucnang.caokhaanh@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('phuchoichucnang.dohongson@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('phuchoichucnang.lequangquocanh@gmail.com', '$2y$10$HyGvZA.185Y9YIfzrJYE0e9Qbu4W5ulZsZfIvDu..5n7q4RHkmHsC', NULL, 0),
('phusan.caochitrung@gmail.com', '123456', NULL, 0),
('phusan.nguyenthianhthu@gmail.com', '123456', NULL, 0),
('phusan.nguyentuanminh@gmail.com', '123456', NULL, 0),
('phusan.phamthiquynh@gmail.com', '123456', NULL, 0),
('ranghammat.doantienthanh@gmail.com', '123456', NULL, 0),
('ranghammat.nguyenngocphan@gmail.com', '123456', NULL, 0),
('ranghammat.nguyenthanhtuan@gmail.com', '123456', NULL, 0),
('ranghammat.nguyenthithoaian@gmail.com', '123456', NULL, 0),
('ranghammat.nguyentuyetmai@gmail.com', '123456', NULL, 0),
('taimuihong.lethithaihoa@gmail.com', '123456', NULL, 0),
('taimuihong.nguyentrungkhanh@gmail.com', '123456', NULL, 0),
('taimuihong.tranthimynga@gmail.com', '123456', NULL, 0),
('thankinh.hathiminhnguyet@gmail.com', '123456', NULL, 0),
('thankinh.nguyenvandoanh@gmail.com', '123456', NULL, 0),
('thankinh.nguyenvanthong@gmail.com', '123456', NULL, 0),
('thankinh.tranthimaithy@gmail.com', '123456', NULL, 0),
('thankinh.vuvanhoe@gmail.com', '123456', NULL, 0),
('thantietnieu.daoducphong@gmail.com', '123456', NULL, 0),
('thantietnieu.nguyenvannghi@gmail.com', '123456', NULL, 0),
('thantietnieu.phamthihonghoa@gmail.com', '123456', NULL, 0),
('timmach.nguyenphucthien@gmail.com', '123456', NULL, 0),
('timmach.phamxuanhau@gmail.com', '123456', NULL, 0),
('ungbuou.nguyenquocdung@gmail.com', '123456', NULL, 0),
('ungbuou.nguyenvannghi@gmail.com', '123456', NULL, 0),
('ungbuou.phamvanvung@gmail.com', '123456', NULL, 0),
('yhoccotruyen.dongocbaoduy@gmail.com', '123456', NULL, 0),
('yhoccotruyen.kieudinhkhoan@gmail.com', '123456', NULL, 0),
('yhoccotruyen.nguyenvanviet@gmail.com', '123456', NULL, 0),
('yhoccotruyen.tranthaiha@gmail.com', '123456', NULL, 0),
('yhoccotruyen.vothitrucphuong@gmail.com', '123456', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tailieudinhkem`
--

CREATE TABLE `tailieudinhkem` (
  `matailieu` int(10) UNSIGNED NOT NULL,
  `mahoso` int(11) NOT NULL,
  `tenfile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `duongdan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `loaitailieu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ngayupload` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `manguoiupload` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `mathongbao` int(10) UNSIGNED NOT NULL,
  `manguoinhan` int(11) NOT NULL,
  `loaithongbao` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `trangthai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thoigian` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc`
--

CREATE TABLE `thuoc` (
  `mathuoc` int(11) UNSIGNED NOT NULL,
  `tenthuoc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hoatchat` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dangbaoche` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `donvi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mota` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `gia` int(11) NOT NULL,
  `trangthai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ghichu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thuoc`
--

INSERT INTO `thuoc` (`mathuoc`, `tenthuoc`, `hoatchat`, `dangbaoche`, `donvi`, `mota`, `gia`, `trangthai`, `ghichu`) VALUES
(1, 'Loperamide 1mg', 'Loperamide', 'Viên nang', 'Vỉ', 'Điều trị tiêu chảy cấp', 17866, 'Còn hàng', 'Dùng cho người lớn'),
(2, 'Paracetamol 2mg', 'Paracetamol', 'Viên nén', 'Hộp', 'Giảm đau, hạ sốt', 23975, 'Còn hàng', 'Dùng cho mọi lứa tuổi'),
(3, 'Cefuroxim 3mg', 'Cefuroxim', 'Viên nén bao phim', 'Vỉ', 'Điều trị nhiễm trùng hô hấp, tai, họng', 41429, 'Còn hàng', 'Dùng cho người lớn'),
(4, 'Paracetamol 4mg', 'Paracetamol', 'Viên nén', 'Hộp', 'Giảm đau, hạ sốt', 24976, 'Còn hàng', 'Dùng cho mọi lứa tuổi'),
(5, 'Amoxicillin 5mg', 'Amoxicillin', 'Viên nang', 'Vỉ', 'Kháng sinh phổ rộng', 26698, 'Còn hàng', 'Dùng cho người lớn'),
(6, 'Vitamin B6 297mg', 'Vitamin B6', 'Dung dịch uống', 'Lọ', 'Thuốc chứa vitamin b6 dùng để điều trị các bệnh phổ biến', 37908, 'Hết hàng', 'Dùng theo chỉ định bác sĩ'),
(7, 'Amoxicillin 9mg', 'Amoxicillin', 'Dung dịch uống', 'Gói', 'Thuốc chứa amoxicillin dùng để điều trị các bệnh phổ biến', 14890, 'Hết hàng', 'Dùng theo chỉ định bác sĩ'),
(8, 'Cetirizine 488mg', 'Cetirizine', 'Ống tiêm', 'Hộp', 'Thuốc chứa cetirizine dùng để điều trị các bệnh phổ biến', 17455, 'Hết hàng', 'Dùng cho trẻ em'),
(9, 'Vitamin C 23mg', 'Vitamin C', 'Viên nén', 'Lọ', 'Thuốc chứa vitamin c dùng để điều trị các bệnh phổ biến', 98135, 'Hết hàng', 'Dùng cho mọi lứa tuổi'),
(10, 'Dexamethasone 297mg', 'Dexamethasone', 'Viên nén', 'Lọ', 'Thuốc chứa dexamethasone dùng để điều trị các bệnh phổ biến', 42690, 'Hết hàng', 'Dùng theo chỉ định bác sĩ'),
(11, 'Cefuroxim 343mg', 'Cefuroxim', 'Gói bột', 'Gói', 'Thuốc chứa cefuroxim dùng để điều trị các bệnh phổ biến', 47924, 'Hết hàng', 'Dùng cho trẻ em'),
(12, 'Vitamin B6 117mg', 'Vitamin B6', 'Sirô', 'Gói', 'Thuốc chứa vitamin b6 dùng để điều trị các bệnh phổ biến', 97904, 'Còn hàng', 'Dùng cho mọi lứa tuổi'),
(13, 'Amoxicillin 352mg', 'Amoxicillin', 'Viên nang', 'Vỉ', 'Thuốc chứa amoxicillin dùng để điều trị các bệnh phổ biến', 91205, 'Hết hàng', 'Dùng cho trẻ em'),
(14, 'Clarithromycin 409mg', 'Clarithromycin', 'Viên sủi', 'Vỉ', 'Thuốc chứa clarithromycin dùng để điều trị các bệnh phổ biến', 45446, 'Hết hàng', 'Dùng cho trẻ em'),
(15, 'Vitamin B6 153mg', 'Vitamin B6', 'Viên nang', 'Vỉ', 'Thuốc chứa vitamin b6 dùng để điều trị các bệnh phổ biến', 74288, 'Hết hàng', 'Dùng theo chỉ định bác sĩ'),
(16, 'Paracetamol', 'Paracetamol 500mg', 'Viên nén', 'Viên', 'Thuốc giảm đau, hạ sốt thông thường', 15000, 'Còn hàng', 'Không kê đơn'),
(17, 'Amoxicillin', 'Amoxicillin 500mg', 'Viên nang', 'Viên', 'Kháng sinh nhóm Beta-lactam', 25000, 'Còn hàng', 'Cần kê đơn'),
(18, 'Omeprazole', 'Omeprazole 20mg', 'Viên nang', 'Viên', 'Thuốc ức chế bơm proton điều trị loét dạ dày', 35000, 'Còn hàng', 'Cần kê đơn'),
(19, 'Losartan', 'Losartan Potassium 50mg', 'Viên nén', 'Viên', 'Thuốc điều trị tăng huyết áp', 42000, 'Còn hàng', 'Cần kê đơn'),
(20, 'Metformin', 'Metformin Hydrochloride 500mg', 'Viên nén', 'Viên', 'Thuốc điều trị đái tháo đường type 2', 28000, 'Còn hàng', 'Cần kê đơn'),
(21, 'Atorvastatin', 'Atorvastatin Calcium 10mg', 'Viên nén bao phim', 'Viên', 'Thuốc hạ lipid máu', 45000, 'Còn hàng', 'Cần kê đơn'),
(22, 'Aspirin', 'Acetylsalicylic Acid 81mg', 'Viên nén bao phim', 'Viên', 'Thuốc chống đông máu liều thấp', 18000, 'Còn hàng', 'Không kê đơn'),
(23, 'Cetirizine', 'Cetirizine Hydrochloride 10mg', 'Viên nén', 'Viên', 'Thuốc kháng histamine điều trị dị ứng', 22000, 'Còn hàng', 'Không kê đơn'),
(24, 'Diazepam', 'Diazepam 5mg', 'Viên nén', 'Viên', 'Thuốc an thần, chống co giật', 30000, 'Còn hàng', 'Cần kê đơn'),
(25, 'Ibuprofen', 'Ibuprofen 400mg', 'Viên nén bao phim', 'Viên', 'Thuốc giảm đau, kháng viêm không steroid', 20000, 'Còn hàng', 'Không kê đơn'),
(26, 'Lisinopril', 'Lisinopril 10mg', 'Viên nén', 'Viên', 'Thuốc ức chế men chuyển điều trị tăng huyết áp', 38000, 'Còn hàng', 'Cần kê đơn'),
(27, 'Simvastatin', 'Simvastatin 20mg', 'Viên nén bao phim', 'Viên', 'Thuốc hạ lipid máu', 40000, 'Còn hàng', 'Cần kê đơn'),
(28, 'Amlodipine', 'Amlodipine Besylate 5mg', 'Viên nén', 'Viên', 'Thuốc chẹn kênh canxi điều trị tăng huyết áp', 32000, 'Còn hàng', 'Cần kê đơn'),
(29, 'Metoprolol', 'Metoprolol Tartrate 50mg', 'Viên nén', 'Viên', 'Thuốc chẹn beta điều trị tăng huyết áp', 36000, 'Còn hàng', 'Cần kê đơn'),
(30, 'Albuterol', 'Albuterol Sulfate 2mg', 'Viên nén', 'Viên', 'Thuốc giãn phế quản điều trị hen suyễn', 45000, 'Còn hàng', 'Cần kê đơn'),
(31, 'Fluoxetine', 'Fluoxetine Hydrochloride 20mg', 'Viên nang', 'Viên', 'Thuốc chống trầm cảm', 50000, 'Còn hàng', 'Cần kê đơn'),
(32, 'Ciprofloxacin', 'Ciprofloxacin 500mg', 'Viên nén bao phim', 'Viên', 'Kháng sinh nhóm Quinolone', 38000, 'Còn hàng', 'Cần kê đơn'),
(33, 'Prednisone', 'Prednisone 5mg', 'Viên nén', 'Viên', 'Thuốc corticosteroid điều trị viêm', 28000, 'Còn hàng', 'Cần kê đơn'),
(34, 'Gabapentin', 'Gabapentin 300mg', 'Viên nang', 'Viên', 'Thuốc chống động kinh và đau thần kinh', 55000, 'Còn hàng', 'Cần kê đơn'),
(35, 'Tramadol', 'Tramadol Hydrochloride 50mg', 'Viên nang', 'Viên', 'Thuốc giảm đau opioid', 42000, 'Còn hàng', 'Cần kê đơn'),
(36, 'Cephalexin', 'Cephalexin 500mg', 'Viên nang', 'Viên', 'Kháng sinh nhóm Cephalosporin', 30000, 'Còn hàng', 'Cần kê đơn'),
(37, 'Levothyroxine', 'Levothyroxine Sodium 100mcg', 'Viên nén', 'Viên', 'Hormone tuyến giáp tổng hợp', 48000, 'Còn hàng', 'Cần kê đơn'),
(38, 'Furosemide', 'Furosemide 40mg', 'Viên nén', 'Viên', 'Thuốc lợi tiểu quai', 25000, 'Còn hàng', 'Cần kê đơn'),
(39, 'Hydrochlorothiazide', 'Hydrochlorothiazide 25mg', 'Viên nén', 'Viên', 'Thuốc lợi tiểu thiazide', 22000, 'Còn hàng', 'Cần kê đơn'),
(40, 'Sertraline', 'Sertraline Hydrochloride 50mg', 'Viên nén bao phim', 'Viên', 'Thuốc chống trầm cảm nhóm SSRI', 52000, 'Còn hàng', 'Cần kê đơn'),
(41, 'Azithromycin', 'Azithromycin 500mg', 'Viên nén bao phim', 'Viên', 'Kháng sinh nhóm Macrolide', 45000, 'Còn hàng', 'Cần kê đơn'),
(42, 'Montelukast', 'Montelukast Sodium 10mg', 'Viên nén bao phim', 'Viên', 'Thuốc đối kháng thụ thể leukotriene điều trị hen suyễn', 60000, 'Còn hàng', 'Cần kê đơn'),
(43, 'Pantoprazole', 'Pantoprazole Sodium 40mg', 'Viên nén bao phim', 'Viên', 'Thuốc ức chế bơm proton điều trị trào ngược dạ dày', 38000, 'Còn hàng', 'Cần kê đơn'),
(44, 'Ranitidine', 'Ranitidine Hydrochloride 150mg', 'Viên nén bao phim', 'Viên', 'Thuốc đối kháng thụ thể H2 điều trị loét dạ dày', 30000, 'Hết hàng', 'Cần kê đơn'),
(45, 'Warfarin', 'Warfarin Sodium 5mg', 'Viên nén', 'Viên', 'Thuốc chống đông máu', 35000, 'Còn hàng', 'Cần kê đơn'),
(46, 'Clopidogrel', 'Clopidogrel 75mg', 'Viên nén bao phim', 'Viên', 'Thuốc chống kết tập tiểu cầu', 48000, 'Còn hàng', 'Cần kê đơn'),
(47, 'Loratadine', 'Loratadine 10mg', 'Viên nén', 'Viên', 'Thuốc kháng histamine điều trị dị ứng', 25000, 'Còn hàng', 'Không kê đơn'),
(48, 'Venlafaxine', 'Venlafaxine 75mg', 'Viên nang giải phóng kéo dài', 'Viên', 'Thuốc chống trầm cảm nhóm SNRI', 65000, 'Còn hàng', 'Cần kê đơn'),
(49, 'Escitalopram', 'Escitalopram Oxalate 10mg', 'Viên nén bao phim', 'Viên', 'Thuốc chống trầm cảm nhóm SSRI', 55000, 'Còn hàng', 'Cần kê đơn'),
(50, 'Rosuvastatin', 'Rosuvastatin Calcium 10mg', 'Viên nén bao phim', 'Viên', 'Thuốc hạ lipid máu', 52000, 'Còn hàng', 'Cần kê đơn'),
(51, 'Doxycycline', 'Doxycycline 100mg', 'Viên nang', 'Viên', 'Kháng sinh nhóm Tetracycline', 28000, 'Còn hàng', 'Cần kê đơn'),
(52, 'Meloxicam', 'Meloxicam 7.5mg', 'Viên nén', 'Viên', 'Thuốc kháng viêm không steroid', 32000, 'Còn hàng', 'Cần kê đơn'),
(53, 'Naproxen', 'Naproxen 500mg', 'Viên nén', 'Viên', 'Thuốc kháng viêm không steroid', 30000, 'Còn hàng', 'Cần kê đơn'),
(54, 'Clonazepam', 'Clonazepam 0.5mg', 'Viên nén', 'Viên', 'Thuốc chống co giật, an thần', 40000, 'Còn hàng', 'Cần kê đơn'),
(55, 'Alprazolam', 'Alprazolam 0.25mg', 'Viên nén', 'Viên', 'Thuốc chống lo âu', 38000, 'Còn hàng', 'Cần kê đơn'),
(56, 'Metronidazole', 'Metronidazole 250mg', 'Viên nén', 'Viên', 'Thuốc kháng khuẩn, kháng ký sinh trùng', 22000, 'Còn hàng', 'Cần kê đơn'),
(57, 'Fexofenadine', 'Fexofenadine Hydrochloride 180mg', 'Viên nén bao phim', 'Viên', 'Thuốc kháng histamine điều trị dị ứng', 35000, 'Còn hàng', 'Không kê đơn'),
(58, 'Glimepiride', 'Glimepiride 2mg', 'Viên nén', 'Viên', 'Thuốc hạ đường huyết nhóm Sulfonylurea', 40000, 'Còn hàng', 'Cần kê đơn'),
(59, 'Valsartan', 'Valsartan 80mg', 'Viên nén bao phim', 'Viên', 'Thuốc đối kháng thụ thể angiotensin II', 45000, 'Còn hàng', 'Cần kê đơn'),
(60, 'Carvedilol', 'Carvedilol 12.5mg', 'Viên nén', 'Viên', 'Thuốc chẹn beta điều trị tăng huyết áp và suy tim', 42000, 'Còn hàng', 'Cần kê đơn'),
(61, 'Paroxetine', 'Paroxetine 20mg', 'Viên nén bao phim', 'Viên', 'Thuốc chống trầm cảm nhóm SSRI', 58000, 'Còn hàng', 'Cần kê đơn'),
(62, 'Clarithromycin', 'Clarithromycin 500mg', 'Viên nén bao phim', 'Viên', 'Kháng sinh nhóm Macrolide', 48000, 'Còn hàng', 'Cần kê đơn'),
(63, 'Acyclovir', 'Acyclovir 400mg', 'Viên nén', 'Viên', 'Thuốc kháng virus', 35000, 'Còn hàng', 'Cần kê đơn'),
(64, 'Spironolactone', 'Spironolactone 25mg', 'Viên nén', 'Viên', 'Thuốc lợi tiểu giữ kali', 32000, 'Còn hàng', 'Cần kê đơn'),
(65, 'Tamsulosin', 'Tamsulosin Hydrochloride 0.4mg', 'Viên nang', 'Viên', 'Thuốc điều trị phì đại tuyến tiền liệt', 45000, 'Còn hàng', 'Cần kê đơn'),
(66, 'Bisoprolol', 'Bisoprolol Fumarate 5mg', 'Viên nén', 'Viên', 'Thuốc chẹn beta điều trị tăng huyết áp', 38000, 'Còn hàng', 'Cần kê đơn'),
(67, 'Telmisartan', 'Telmisartan 40mg', 'Viên nén', 'Viên', 'Thuốc đối kháng thụ thể angiotensin II', 50000, 'Còn hàng', 'Cần kê đơn'),
(68, 'Mebendazole', 'Mebendazole 100mg', 'Viên nén', 'Viên', 'Thuốc trị giun sán', 18000, 'Còn hàng', 'Không kê đơn'),
(69, 'Domperidone', 'Domperidone 10mg', 'Viên nén', 'Viên', 'Thuốc chống nôn và kích thích nhu động dạ dày', 25000, 'Còn hàng', 'Cần kê đơn'),
(70, 'Levofloxacin', 'Levofloxacin 500mg', 'Viên nén bao phim', 'Viên', 'Kháng sinh nhóm Quinolone', 42000, 'Còn hàng', 'Cần kê đơn'),
(71, 'Gliclazide', 'Gliclazide 80mg', 'Viên nén', 'Viên', 'Thuốc hạ đường huyết nhóm Sulfonylurea', 35000, 'Còn hàng', 'Cần kê đơn'),
(72, 'Mirtazapine', 'Mirtazapine 15mg', 'Viên nén', 'Viên', 'Thuốc chống trầm cảm', 55000, 'Còn hàng', 'Cần kê đơn'),
(73, 'Perindopril', 'Perindopril 4mg', 'Viên nén', 'Viên', 'Thuốc ức chế men chuyển điều trị tăng huyết áp', 48000, 'Còn hàng', 'Cần kê đơn'),
(74, 'Famotidine', 'Famotidine 20mg', 'Viên nén', 'Viên', 'Thuốc đối kháng thụ thể H2 điều trị loét dạ dày', 28000, 'Còn hàng', 'Không kê đơn'),
(75, 'Amitriptyline', 'Amitriptyline 25mg', 'Viên nén', 'Viên', 'Thuốc chống trầm cảm ba vòng', 30000, 'Còn hàng', 'Cần kê đơn'),
(76, 'Paracetamol Siro', 'Paracetamol 120mg/5ml', 'Siro', 'Chai', 'Thuốc giảm đau, hạ sốt dạng siro cho trẻ em', 35000, 'Còn hàng', 'Không kê đơn'),
(77, 'Amoxicillin Siro', 'Amoxicillin 250mg/5ml', 'Bột pha hỗn dịch', 'Chai', 'Kháng sinh dạng siro cho trẻ em', 45000, 'Còn hàng', 'Cần kê đơn'),
(78, 'Salbutamol', 'Salbutamol 2mg', 'Viên nén', 'Viên', 'Thuốc giãn phế quản điều trị hen suyễn', 25000, 'Còn hàng', 'Cần kê đơn'),
(79, 'Methylprednisolone', 'Methylprednisolone 4mg', 'Viên nén', 'Viên', 'Thuốc corticosteroid điều trị viêm', 38000, 'Còn hàng', 'Cần kê đơn'),
(80, 'Cefixime', 'Cefixime 200mg', 'Viên nang', 'Viên', 'Kháng sinh nhóm Cephalosporin thế hệ 3', 42000, 'Còn hàng', 'Cần kê đơn'),
(81, 'Cefuroxime', 'Cefuroxime 500mg', 'Viên nén bao phim', 'Viên', 'Kháng sinh nhóm Cephalosporin thế hệ 2', 45000, 'Còn hàng', 'Cần kê đơn'),
(82, 'Paracetamol', 'Paracetamol 500mg', 'Viên nén', 'Viên', 'Thuốc giảm đau, hạ sốt thông thường', 15000, 'Còn hàng', 'Không kê đơn'),
(83, 'Amoxicillin', 'Amoxicillin 500mg', 'Viên nang', 'Viên', 'Kháng sinh nhóm Beta-lactam', 25000, 'Còn hàng', 'Cần kê đơn'),
(84, 'Omeprazole', 'Omeprazole 20mg', 'Viên nang', 'Viên', 'Thuốc ức chế bơm proton điều trị loét dạ dày', 35000, 'Còn hàng', 'Cần kê đơn'),
(85, 'Losartan', 'Losartan Potassium 50mg', 'Viên nén', 'Viên', 'Thuốc điều trị tăng huyết áp', 42000, 'Còn hàng', 'Cần kê đơn'),
(86, 'Metformin', 'Metformin Hydrochloride 500mg', 'Viên nén', 'Viên', 'Thuốc điều trị đái tháo đường type 2', 28000, 'Còn hàng', 'Cần kê đơn'),
(87, 'Atorvastatin', 'Atorvastatin Calcium 10mg', 'Viên nén bao phim', 'Viên', 'Thuốc hạ lipid máu', 45000, 'Còn hàng', 'Cần kê đơn'),
(88, 'Aspirin', 'Acetylsalicylic Acid 81mg', 'Viên nén bao phim', 'Viên', 'Thuốc chống đông máu liều thấp', 18000, 'Còn hàng', 'Không kê đơn'),
(89, 'Cetirizine', 'Cetirizine Hydrochloride 10mg', 'Viên nén', 'Viên', 'Thuốc kháng histamine điều trị dị ứng', 22000, 'Còn hàng', 'Không kê đơn'),
(90, 'Diazepam', 'Diazepam 5mg', 'Viên nén', 'Viên', 'Thuốc an thần, chống co giật', 30000, 'Còn hàng', 'Cần kê đơn'),
(91, 'Ibuprofen', 'Ibuprofen 400mg', 'Viên nén bao phim', 'Viên', 'Thuốc giảm đau, kháng viêm không steroid', 20000, 'Còn hàng', 'Không kê đơn'),
(92, 'Lisinopril', 'Lisinopril 10mg', 'Viên nén', 'Viên', 'Thuốc ức chế men chuyển điều trị tăng huyết áp', 38000, 'Còn hàng', 'Cần kê đơn'),
(93, 'Simvastatin', 'Simvastatin 20mg', 'Viên nén bao phim', 'Viên', 'Thuốc hạ lipid máu', 40000, 'Còn hàng', 'Cần kê đơn'),
(94, 'Amlodipine', 'Amlodipine Besylate 5mg', 'Viên nén', 'Viên', 'Thuốc chẹn kênh canxi điều trị tăng huyết áp', 32000, 'Còn hàng', 'Cần kê đơn'),
(95, 'Metoprolol', 'Metoprolol Tartrate 50mg', 'Viên nén', 'Viên', 'Thuốc chẹn beta điều trị tăng huyết áp', 36000, 'Còn hàng', 'Cần kê đơn'),
(96, 'Albuterol', 'Albuterol Sulfate 2mg', 'Viên nén', 'Viên', 'Thuốc giãn phế quản điều trị hen suyễn', 45000, 'Còn hàng', 'Cần kê đơn'),
(97, 'Fluoxetine', 'Fluoxetine Hydrochloride 20mg', 'Viên nang', 'Viên', 'Thuốc chống trầm cảm', 50000, 'Còn hàng', 'Cần kê đơn'),
(98, 'Ciprofloxacin', 'Ciprofloxacin 500mg', 'Viên nén bao phim', 'Viên', 'Kháng sinh nhóm Quinolone', 38000, 'Còn hàng', 'Cần kê đơn'),
(99, 'Prednisone', 'Prednisone 5mg', 'Viên nén', 'Viên', 'Thuốc corticosteroid điều trị viêm', 28000, 'Còn hàng', 'Cần kê đơn'),
(100, 'Gabapentin', 'Gabapentin 300mg', 'Viên nang', 'Viên', 'Thuốc chống động kinh và đau thần kinh', 55000, 'Còn hàng', 'Cần kê đơn'),
(101, 'Tramadol', 'Tramadol Hydrochloride 50mg', 'Viên nang', 'Viên', 'Thuốc giảm đau opioid', 42000, 'Còn hàng', 'Cần kê đơn'),
(102, 'Cephalexin', 'Cephalexin 500mg', 'Viên nang', 'Viên', 'Kháng sinh nhóm Cephalosporin', 30000, 'Còn hàng', 'Cần kê đơn'),
(103, 'Levothyroxine', 'Levothyroxine Sodium 100mcg', 'Viên nén', 'Viên', 'Hormone tuyến giáp tổng hợp', 48000, 'Còn hàng', 'Cần kê đơn'),
(104, 'Furosemide', 'Furosemide 40mg', 'Viên nén', 'Viên', 'Thuốc lợi tiểu quai', 25000, 'Còn hàng', 'Cần kê đơn'),
(105, 'Hydrochlorothiazide', 'Hydrochlorothiazide 25mg', 'Viên nén', 'Viên', 'Thuốc lợi tiểu thiazide', 22000, 'Còn hàng', 'Cần kê đơn'),
(106, 'Sertraline', 'Sertraline Hydrochloride 50mg', 'Viên nén bao phim', 'Viên', 'Thuốc chống trầm cảm nhóm SSRI', 52000, 'Còn hàng', 'Cần kê đơn'),
(107, 'Azithromycin', 'Azithromycin 500mg', 'Viên nén bao phim', 'Viên', 'Kháng sinh nhóm Macrolide', 45000, 'Còn hàng', 'Cần kê đơn'),
(108, 'Montelukast', 'Montelukast Sodium 10mg', 'Viên nén bao phim', 'Viên', 'Thuốc đối kháng thụ thể leukotriene điều trị hen suyễn', 60000, 'Còn hàng', 'Cần kê đơn'),
(109, 'Pantoprazole', 'Pantoprazole Sodium 40mg', 'Viên nén bao phim', 'Viên', 'Thuốc ức chế bơm proton điều trị trào ngược dạ dày', 38000, 'Còn hàng', 'Cần kê đơn'),
(110, 'Ranitidine', 'Ranitidine Hydrochloride 150mg', 'Viên nén bao phim', 'Viên', 'Thuốc đối kháng thụ thể H2 điều trị loét dạ dày', 30000, 'Hết hàng', 'Cần kê đơn'),
(111, 'Warfarin', 'Warfarin Sodium 5mg', 'Viên nén', 'Viên', 'Thuốc chống đông máu', 35000, 'Còn hàng', 'Cần kê đơn'),
(112, 'Clopidogrel', 'Clopidogrel 75mg', 'Viên nén bao phim', 'Viên', 'Thuốc chống kết tập tiểu cầu', 48000, 'Còn hàng', 'Cần kê đơn'),
(113, 'Loratadine', 'Loratadine 10mg', 'Viên nén', 'Viên', 'Thuốc kháng histamine điều trị dị ứng', 25000, 'Còn hàng', 'Không kê đơn'),
(114, 'Venlafaxine', 'Venlafaxine 75mg', 'Viên nang giải phóng kéo dài', 'Viên', 'Thuốc chống trầm cảm nhóm SNRI', 65000, 'Còn hàng', 'Cần kê đơn'),
(115, 'Escitalopram', 'Escitalopram Oxalate 10mg', 'Viên nén bao phim', 'Viên', 'Thuốc chống trầm cảm nhóm SSRI', 55000, 'Còn hàng', 'Cần kê đơn'),
(116, 'Rosuvastatin', 'Rosuvastatin Calcium 10mg', 'Viên nén bao phim', 'Viên', 'Thuốc hạ lipid máu', 52000, 'Còn hàng', 'Cần kê đơn'),
(117, 'Doxycycline', 'Doxycycline 100mg', 'Viên nang', 'Viên', 'Kháng sinh nhóm Tetracycline', 28000, 'Còn hàng', 'Cần kê đơn'),
(118, 'Meloxicam', 'Meloxicam 7.5mg', 'Viên nén', 'Viên', 'Thuốc kháng viêm không steroid', 32000, 'Còn hàng', 'Cần kê đơn'),
(119, 'Naproxen', 'Naproxen 500mg', 'Viên nén', 'Viên', 'Thuốc kháng viêm không steroid', 30000, 'Còn hàng', 'Cần kê đơn'),
(120, 'Clonazepam', 'Clonazepam 0.5mg', 'Viên nén', 'Viên', 'Thuốc chống co giật, an thần', 40000, 'Còn hàng', 'Cần kê đơn'),
(121, 'Alprazolam', 'Alprazolam 0.25mg', 'Viên nén', 'Viên', 'Thuốc chống lo âu', 38000, 'Còn hàng', 'Cần kê đơn'),
(122, 'Metronidazole', 'Metronidazole 250mg', 'Viên nén', 'Viên', 'Thuốc kháng khuẩn, kháng ký sinh trùng', 22000, 'Còn hàng', 'Cần kê đơn'),
(123, 'Fexofenadine', 'Fexofenadine Hydrochloride 180mg', 'Viên nén bao phim', 'Viên', 'Thuốc kháng histamine điều trị dị ứng', 35000, 'Còn hàng', 'Không kê đơn'),
(124, 'Glimepiride', 'Glimepiride 2mg', 'Viên nén', 'Viên', 'Thuốc hạ đường huyết nhóm Sulfonylurea', 40000, 'Còn hàng', 'Cần kê đơn'),
(125, 'Valsartan', 'Valsartan 80mg', 'Viên nén bao phim', 'Viên', 'Thuốc đối kháng thụ thể angiotensin II', 45000, 'Còn hàng', 'Cần kê đơn'),
(126, 'Carvedilol', 'Carvedilol 12.5mg', 'Viên nén', 'Viên', 'Thuốc chẹn beta điều trị tăng huyết áp và suy tim', 42000, 'Còn hàng', 'Cần kê đơn'),
(127, 'Paroxetine', 'Paroxetine 20mg', 'Viên nén bao phim', 'Viên', 'Thuốc chống trầm cảm nhóm SSRI', 58000, 'Còn hàng', 'Cần kê đơn'),
(128, 'Clarithromycin', 'Clarithromycin 500mg', 'Viên nén bao phim', 'Viên', 'Kháng sinh nhóm Macrolide', 48000, 'Còn hàng', 'Cần kê đơn'),
(129, 'Acyclovir', 'Acyclovir 400mg', 'Viên nén', 'Viên', 'Thuốc kháng virus', 35000, 'Còn hàng', 'Cần kê đơn'),
(130, 'Spironolactone', 'Spironolactone 25mg', 'Viên nén', 'Viên', 'Thuốc lợi tiểu giữ kali', 32000, 'Còn hàng', 'Cần kê đơn'),
(131, 'Tamsulosin', 'Tamsulosin Hydrochloride 0.4mg', 'Viên nang', 'Viên', 'Thuốc điều trị phì đại tuyến tiền liệt', 45000, 'Còn hàng', 'Cần kê đơn'),
(132, 'Bisoprolol', 'Bisoprolol Fumarate 5mg', 'Viên nén', 'Viên', 'Thuốc chẹn beta điều trị tăng huyết áp', 38000, 'Còn hàng', 'Cần kê đơn'),
(133, 'Telmisartan', 'Telmisartan 40mg', 'Viên nén', 'Viên', 'Thuốc đối kháng thụ thể angiotensin II', 50000, 'Còn hàng', 'Cần kê đơn'),
(134, 'Mebendazole', 'Mebendazole 100mg', 'Viên nén', 'Viên', 'Thuốc trị giun sán', 18000, 'Còn hàng', 'Không kê đơn'),
(135, 'Domperidone', 'Domperidone 10mg', 'Viên nén', 'Viên', 'Thuốc chống nôn và kích thích nhu động dạ dày', 25000, 'Còn hàng', 'Cần kê đơn'),
(136, 'Levofloxacin', 'Levofloxacin 500mg', 'Viên nén bao phim', 'Viên', 'Kháng sinh nhóm Quinolone', 42000, 'Còn hàng', 'Cần kê đơn'),
(137, 'Gliclazide', 'Gliclazide 80mg', 'Viên nén', 'Viên', 'Thuốc hạ đường huyết nhóm Sulfonylurea', 35000, 'Còn hàng', 'Cần kê đơn'),
(138, 'Mirtazapine', 'Mirtazapine 15mg', 'Viên nén', 'Viên', 'Thuốc chống trầm cảm', 55000, 'Còn hàng', 'Cần kê đơn'),
(139, 'Perindopril', 'Perindopril 4mg', 'Viên nén', 'Viên', 'Thuốc ức chế men chuyển điều trị tăng huyết áp', 48000, 'Còn hàng', 'Cần kê đơn'),
(140, 'Famotidine', 'Famotidine 20mg', 'Viên nén', 'Viên', 'Thuốc đối kháng thụ thể H2 điều trị loét dạ dày', 28000, 'Còn hàng', 'Không kê đơn'),
(141, 'Amitriptyline', 'Amitriptyline 25mg', 'Viên nén', 'Viên', 'Thuốc chống trầm cảm ba vòng', 30000, 'Còn hàng', 'Cần kê đơn'),
(142, 'Paracetamol Siro', 'Paracetamol 120mg/5ml', 'Siro', 'Chai', 'Thuốc giảm đau, hạ sốt dạng siro cho trẻ em', 35000, 'Còn hàng', 'Không kê đơn'),
(143, 'Amoxicillin Siro', 'Amoxicillin 250mg/5ml', 'Bột pha hỗn dịch', 'Chai', 'Kháng sinh dạng siro cho trẻ em', 45000, 'Còn hàng', 'Cần kê đơn'),
(144, 'Salbutamol', 'Salbutamol 2mg', 'Viên nén', 'Viên', 'Thuốc giãn phế quản điều trị hen suyễn', 25000, 'Còn hàng', 'Cần kê đơn'),
(145, 'Methylprednisolone', 'Methylprednisolone 4mg', 'Viên nén', 'Viên', 'Thuốc corticosteroid điều trị viêm', 38000, 'Còn hàng', 'Cần kê đơn'),
(146, 'Cefixime', 'Cefixime 200mg', 'Viên nang', 'Viên', 'Kháng sinh nhóm Cephalosporin thế hệ 3', 42000, 'Còn hàng', 'Cần kê đơn'),
(147, 'Cefuroxime', 'Cefuroxime 500mg', 'Viên nén bao phim', 'Viên', 'Kháng sinh nhóm Cephalosporin thế hệ 2', 45000, 'Còn hàng', 'Cần kê đơn'),
(148, 'Dexamethasone', 'Dexamethasone 0.5mg', 'Viên nén', 'Viên', 'Thuốc corticosteroid điều trị viêm và dị ứng', 30000, 'Còn hàng', 'Cần kê đơn'),
(149, 'Folic Acid', 'Folic Acid 5mg', 'Viên nén', 'Viên', 'Vitamin B9 bổ sung cho phụ nữ mang thai', 15000, 'Còn hàng', 'Không kê đơn'),
(150, 'Calcium Carbonate', 'Calcium Carbonate 500mg', 'Viên nén', 'Viên', 'Bổ sung canxi cho cơ thể', 25000, 'Còn hàng', 'Không kê đơn'),
(151, 'Ferrous Sulfate', 'Ferrous Sulfate 200mg', 'Viên nén', 'Viên', 'Bổ sung sắt điều trị thiếu máu', 22000, 'Còn hàng', 'Không kê đơn'),
(152, 'Vitamin B Complex', 'Vitamin B1, B2, B6, B12', 'Viên nén bao phim', 'Viên', 'Bổ sung vitamin nhóm B', 28000, 'Còn hàng', 'Không kê đơn'),
(153, 'Vitamin C', 'Ascorbic Acid 500mg', 'Viên nén', 'Viên', 'Bổ sung vitamin C tăng cường miễn dịch', 18000, 'Còn hàng', 'Không kê đơn'),
(154, 'Cefaclor', 'Cefaclor 500mg', 'Viên nang', 'Viên', 'Kháng sinh nhóm Cephalosporin thế hệ 2', 40000, 'Còn hàng', 'Cần kê đơn'),
(155, 'Roxithromycin', 'Roxithromycin 150mg', 'Viên nén bao phim', 'Viên', 'Kháng sinh nhóm Macrolide', 35000, 'Còn hàng', 'Cần kê đơn'),
(156, 'Betahistine', 'Betahistine 16mg', 'Viên nén', 'Viên', 'Thuốc điều trị chóng mặt và rối loạn tiền đình', 42000, 'Còn hàng', 'Cần kê đơn'),
(157, 'Ginkgo Biloba', 'Ginkgo Biloba Extract 40mg', 'Viên nang', 'Viên', 'Thuốc cải thiện tuần hoàn não', 35000, 'Còn hàng', 'Không kê đơn'),
(158, 'Piracetam', 'Piracetam 800mg', 'Viên nén', 'Viên', 'Thuốc tăng cường trí nhớ và nhận thức', 45000, 'Còn hàng', 'Cần kê đơn'),
(159, 'Mebeverine', 'Mebeverine 135mg', 'Viên nén bao phim', 'Viên', 'Thuốc điều trị hội chứng ruột kích thích', 38000, 'Còn hàng', 'Cần kê đơn'),
(160, 'Loperamide', 'Loperamide 2mg', 'Viên nang', 'Viên', 'Thuốc điều trị tiêu chảy', 20000, 'Còn hàng', 'Không kê đơn'),
(161, 'Bisacodyl', 'Bisacodyl 5mg', 'Viên nén bao phim', 'Viên', 'Thuốc nhuận tràng', 18000, 'Còn hàng', 'Không kê đơn'),
(162, 'Lactulose', 'Lactulose 10g/15ml', 'Siro', 'Chai', 'Thuốc nhuận tràng thẩm thấu', 45000, 'Còn hàng', 'Không kê đơn'),
(163, 'Diosmin', 'Diosmin 500mg', 'Viên nén bao phim', 'Viên', 'Thuốc điều trị suy tĩnh mạch', 50000, 'Còn hàng', 'Cần kê đơn'),
(164, 'Trimetazidine', 'Trimetazidine 35mg', 'Viên nén giải phóng kéo dài', 'Viên', 'Thuốc điều trị đau thắt ngực', 48000, 'Còn hàng', 'Cần kê đơn'),
(165, 'Nitroglycerin', 'Nitroglycerin 0.5mg', 'Viên ngậm dưới lưỡi', 'Viên', 'Thuốc điều trị cơn đau thắt ngực', 55000, 'Còn hàng', 'Cần kê đơn'),
(166, 'Isosorbide Dinitrate', 'Isosorbide Dinitrate 5mg', 'Viên nén', 'Viên', 'Thuốc điều trị đau thắt ngực', 42000, 'Còn hàng', 'Cần kê đơn'),
(167, 'Digoxin', 'Digoxin 0.25mg', 'Viên nén', 'Viên', 'Thuốc điều trị suy tim', 30000, 'Còn hàng', 'Cần kê đơn'),
(168, 'Allopurinol', 'Allopurinol 100mg', 'Viên nén', 'Viên', 'Thuốc điều trị gout', 28000, 'Còn hàng', 'Cần kê đơn'),
(169, 'Colchicine', 'Colchicine 1mg', 'Viên nén', 'Viên', 'Thuốc điều trị cơn gout cấp', 32000, 'Còn hàng', 'Cần kê đơn'),
(170, 'Alendronate', 'Alendronate Sodium 70mg', 'Viên nén', 'Viên', 'Thuốc điều trị loãng xương', 60000, 'Còn hàng', 'Cần kê đơn'),
(171, 'Calcitriol', 'Calcitriol 0.25mcg', 'Viên nang mềm', 'Viên', 'Vitamin D3 hoạt tính điều trị loãng xương', 45000, 'Còn hàng', 'Cần kê đơn'),
(172, 'Insulin NPH', 'Insulin NPH 100IU/ml', 'Dung dịch tiêm', 'Lọ', 'Insulin tác dụng trung gian điều trị đái tháo đường', 180000, 'Còn hàng', 'Cần kê đơn'),
(173, 'Insulin Regular', 'Insulin Regular 100IU/ml', 'Dung dịch tiêm', 'Lọ', 'Insulin tác dụng nhanh điều trị đái tháo đường', 170000, 'Còn hàng', 'Cần kê đơn'),
(174, 'Sitagliptin', 'Sitagliptin 100mg', 'Viên nén bao phim', 'Viên', 'Thuốc ức chế DPP-4 điều trị đái tháo đường type 2', 65000, 'Còn hàng', 'Cần kê đơn'),
(175, 'Levothyroxine', 'Levothyroxine Sodium 50mcg', 'Viên nén', 'Viên', 'Hormone tuyến giáp tổng hợp', 40000, 'Còn hàng', 'Cần kê đơn'),
(176, 'Propylthiouracil', 'Propylthiouracil 50mg', 'Viên nén', 'Viên', 'Thuốc kháng giáp trạng', 38000, 'Còn hàng', 'Cần kê đơn'),
(177, 'Salbutamol Khí dung', 'Salbutamol 100mcg/liều', 'Bình xịt định liều', 'Bình', 'Thuốc giãn phế quản dạng hít', 120000, 'Còn hàng', 'Cần kê đơn'),
(178, 'Budesonide', 'Budesonide 200mcg/liều', 'Bình xịt định liều', 'Bình', 'Corticosteroid dạng hít điều trị hen suyễn', 150000, 'Còn hàng', 'Cần kê đơn'),
(179, 'Fluticasone', 'Fluticasone Propionate 125mcg/liều', 'Bình xịt định liều', 'Bình', 'Corticosteroid dạng hít điều trị hen suyễn', 160000, 'Còn hàng', 'Cần kê đơn'),
(180, 'Theophylline', 'Theophylline 200mg', 'Viên nén giải phóng kéo dài', 'Viên', 'Thuốc giãn phế quản điều trị hen suyễn', 35000, 'Còn hàng', 'Cần kê đơn'),
(181, 'Montelukast Siro', 'Montelukast Sodium 4mg/5ml', 'Siro', 'Chai', 'Thuốc đối kháng thụ thể leukotriene điều trị hen suyễn cho trẻ em', 70000, 'Còn hàng', 'Cần kê đơn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinnhan`
--

CREATE TABLE `tinnhan` (
  `matinnhan` int(10) UNSIGNED NOT NULL,
  `maphieukb` int(11) NOT NULL,
  `manguoigui` int(11) NOT NULL,
  `manguoinhan` int(11) NOT NULL,
  `noidung` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `filedinhkem` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thoigiangui` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trangthai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bacsi`
--
ALTER TABLE `bacsi`
  ADD PRIMARY KEY (`mabacsi`),
  ADD KEY `fk_bacsi_chuyenkhoa` (`machuyenkhoa`),
  ADD KEY `fk_bacsi_taikhoan` (`tentk`);

--
-- Chỉ mục cho bảng `benhnhan`
--
ALTER TABLE `benhnhan`
  ADD PRIMARY KEY (`mabenhnhan`),
  ADD KEY `tentk` (`tentk`);

--
-- Chỉ mục cho bảng `calamviec`
--
ALTER TABLE `calamviec`
  ADD PRIMARY KEY (`macalamviec`);

--
-- Chỉ mục cho bảng `chitietdonthuoc`
--
ALTER TABLE `chitietdonthuoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chitietdonthuoc_thuoc` (`mathuoc`),
  ADD KEY `fk_chitietdonthuoc_donthuoc` (`madonthuoc`);

--
-- Chỉ mục cho bảng `chitiethoso`
--
ALTER TABLE `chitiethoso`
  ADD PRIMARY KEY (`machitiethoso`),
  ADD KEY `fk_chitiethoso_hoso` (`mahoso`),
  ADD KEY `fk_chitiethoso_donthuoc` (`madonthuoc`);

--
-- Chỉ mục cho bảng `chuyenkhoa`
--
ALTER TABLE `chuyenkhoa`
  ADD PRIMARY KEY (`machuyenkhoa`);

--
-- Chỉ mục cho bảng `donthuoc`
--
ALTER TABLE `donthuoc`
  ADD PRIMARY KEY (`madonthuoc`),
  ADD KEY `fk_donthuoc_mabenhnhan` (`mabenhnhan`),
  ADD KEY `fk_donthuoc_hoso` (`mahoso`);

--
-- Chỉ mục cho bảng `hosobenhan`
--
ALTER TABLE `hosobenhan`
  ADD PRIMARY KEY (`mahoso`),
  ADD KEY `fk_benhan_benhnhan` (`mabenhnhan`),
  ADD KEY `fk_benhan_loaihoso` (`maloaihoso`);

--
-- Chỉ mục cho bảng `khunggioxetnghiem`
--
ALTER TABLE `khunggioxetnghiem`
  ADD PRIMARY KEY (`makhunggioxetnghiem`);

--
-- Chỉ mục cho bảng `lichlamviec`
--
ALTER TABLE `lichlamviec`
  ADD PRIMARY KEY (`malichlamviec`),
  ADD KEY `fk_lichlamviec_bacsi` (`mabacsi`),
  ADD KEY `fk_lichlamviec_calam` (`macalamviec`);

--
-- Chỉ mục cho bảng `lichsucapnhathsba`
--
ALTER TABLE `lichsucapnhathsba`
  ADD PRIMARY KEY (`macapnhat`);

--
-- Chỉ mục cho bảng `lichxetnghiem`
--
ALTER TABLE `lichxetnghiem`
  ADD PRIMARY KEY (`malichxetnghiem`),
  ADD KEY `fk_lichxetnghiem_benhnhan` (`mabenhnhan`),
  ADD KEY `fk_lichxetnghiem_khunggio` (`makhunggio`),
  ADD KEY `fk_lichxetnghiem_bacsi` (`mabacsi`),
  ADD KEY `fk_licxetnghiem_loaixetnghiem` (`maloaixetnghiem`),
  ADD KEY `fk_lichxetnghiem_hosobenhan` (`mahoso`);

--
-- Chỉ mục cho bảng `loaihoso`
--
ALTER TABLE `loaihoso`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `loaixetnghiem`
--
ALTER TABLE `loaixetnghiem`
  ADD PRIMARY KEY (`maloaixetnghiem`);

--
-- Chỉ mục cho bảng `phieukhambenh`
--
ALTER TABLE `phieukhambenh`
  ADD PRIMARY KEY (`maphieukb`),
  ADD KEY `fk_phieukhambenh_benhnhan` (`mabenhnhan`),
  ADD KEY `fk_phieukhambenh_bacsi` (`mabacsi`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`tentk`);

--
-- Chỉ mục cho bảng `tailieudinhkem`
--
ALTER TABLE `tailieudinhkem`
  ADD PRIMARY KEY (`matailieu`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`mathongbao`);

--
-- Chỉ mục cho bảng `thuoc`
--
ALTER TABLE `thuoc`
  ADD PRIMARY KEY (`mathuoc`);

--
-- Chỉ mục cho bảng `tinnhan`
--
ALTER TABLE `tinnhan`
  ADD PRIMARY KEY (`matinnhan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bacsi`
--
ALTER TABLE `bacsi`
  MODIFY `mabacsi` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `benhnhan`
--
ALTER TABLE `benhnhan`
  MODIFY `mabenhnhan` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `calamviec`
--
ALTER TABLE `calamviec`
  MODIFY `macalamviec` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `chitietdonthuoc`
--
ALTER TABLE `chitietdonthuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `chitiethoso`
--
ALTER TABLE `chitiethoso`
  MODIFY `machitiethoso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `chuyenkhoa`
--
ALTER TABLE `chuyenkhoa`
  MODIFY `machuyenkhoa` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `donthuoc`
--
ALTER TABLE `donthuoc`
  MODIFY `madonthuoc` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `hosobenhan`
--
ALTER TABLE `hosobenhan`
  MODIFY `mahoso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `khunggioxetnghiem`
--
ALTER TABLE `khunggioxetnghiem`
  MODIFY `makhunggioxetnghiem` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `lichlamviec`
--
ALTER TABLE `lichlamviec`
  MODIFY `malichlamviec` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT cho bảng `lichsucapnhathsba`
--
ALTER TABLE `lichsucapnhathsba`
  MODIFY `macapnhat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lichxetnghiem`
--
ALTER TABLE `lichxetnghiem`
  MODIFY `malichxetnghiem` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `loaihoso`
--
ALTER TABLE `loaihoso`
  MODIFY `maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loaixetnghiem`
--
ALTER TABLE `loaixetnghiem`
  MODIFY `maloaixetnghiem` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT cho bảng `phieukhambenh`
--
ALTER TABLE `phieukhambenh`
  MODIFY `maphieukb` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `tailieudinhkem`
--
ALTER TABLE `tailieudinhkem`
  MODIFY `matailieu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `mathongbao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thuoc`
--
ALTER TABLE `thuoc`
  MODIFY `mathuoc` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT cho bảng `tinnhan`
--
ALTER TABLE `tinnhan`
  MODIFY `matinnhan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bacsi`
--
ALTER TABLE `bacsi`
  ADD CONSTRAINT `fk_bacsi_chuyenkhoa` FOREIGN KEY (`machuyenkhoa`) REFERENCES `chuyenkhoa` (`machuyenkhoa`),
  ADD CONSTRAINT `fk_bacsi_taikhoan` FOREIGN KEY (`tentk`) REFERENCES `taikhoan` (`tentk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietdonthuoc`
--
ALTER TABLE `chitietdonthuoc`
  ADD CONSTRAINT `fk_chitietdonthuoc_donthuoc` FOREIGN KEY (`madonthuoc`) REFERENCES `donthuoc` (`madonthuoc`),
  ADD CONSTRAINT `fk_chitietdonthuoc_thuoc` FOREIGN KEY (`mathuoc`) REFERENCES `thuoc` (`mathuoc`);

--
-- Các ràng buộc cho bảng `chitiethoso`
--
ALTER TABLE `chitiethoso`
  ADD CONSTRAINT `fk_chitiethoso_donthuoc` FOREIGN KEY (`madonthuoc`) REFERENCES `donthuoc` (`madonthuoc`),
  ADD CONSTRAINT `fk_chitiethoso_hoso` FOREIGN KEY (`mahoso`) REFERENCES `hosobenhan` (`mahoso`);

--
-- Các ràng buộc cho bảng `donthuoc`
--
ALTER TABLE `donthuoc`
  ADD CONSTRAINT `fk_donthuoc_hoso` FOREIGN KEY (`mahoso`) REFERENCES `hosobenhan` (`mahoso`),
  ADD CONSTRAINT `fk_donthuoc_mabenhnhan` FOREIGN KEY (`mabenhnhan`) REFERENCES `benhnhan` (`mabenhnhan`);

--
-- Các ràng buộc cho bảng `hosobenhan`
--
ALTER TABLE `hosobenhan`
  ADD CONSTRAINT `fk_benhan_benhnhan` FOREIGN KEY (`mabenhnhan`) REFERENCES `benhnhan` (`mabenhnhan`),
  ADD CONSTRAINT `fk_benhan_loaihoso` FOREIGN KEY (`maloaihoso`) REFERENCES `loaihoso` (`maloai`);

--
-- Các ràng buộc cho bảng `lichlamviec`
--
ALTER TABLE `lichlamviec`
  ADD CONSTRAINT `fk_lichlamviec_bacsi` FOREIGN KEY (`mabacsi`) REFERENCES `bacsi` (`mabacsi`),
  ADD CONSTRAINT `fk_lichlamviec_calam` FOREIGN KEY (`macalamviec`) REFERENCES `calamviec` (`macalamviec`);

--
-- Các ràng buộc cho bảng `lichxetnghiem`
--
ALTER TABLE `lichxetnghiem`
  ADD CONSTRAINT `fk_lichxetnghiem_bacsi` FOREIGN KEY (`mabacsi`) REFERENCES `bacsi` (`mabacsi`),
  ADD CONSTRAINT `fk_lichxetnghiem_benhnhan` FOREIGN KEY (`mabenhnhan`) REFERENCES `benhnhan` (`mabenhnhan`),
  ADD CONSTRAINT `fk_lichxetnghiem_hosobenhan` FOREIGN KEY (`mahoso`) REFERENCES `hosobenhan` (`mahoso`),
  ADD CONSTRAINT `fk_lichxetnghiem_khunggio` FOREIGN KEY (`makhunggio`) REFERENCES `khunggioxetnghiem` (`makhunggioxetnghiem`),
  ADD CONSTRAINT `fk_licxetnghiem_loaixetnghiem` FOREIGN KEY (`maloaixetnghiem`) REFERENCES `loaixetnghiem` (`maloaixetnghiem`);

--
-- Các ràng buộc cho bảng `phieukhambenh`
--
ALTER TABLE `phieukhambenh`
  ADD CONSTRAINT `fk_phieukhambenh_bacsi` FOREIGN KEY (`mabacsi`) REFERENCES `bacsi` (`mabacsi`),
  ADD CONSTRAINT `fk_phieukhambenh_benhnhan` FOREIGN KEY (`mabenhnhan`) REFERENCES `benhnhan` (`mabenhnhan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
