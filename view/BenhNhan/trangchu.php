<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .booking-button{
            display: inline-block;
            margin-top: 10px;
            padding: 12px 24px;
            font-size: 20px;
            font-weight: bold;
            background-color: rgb(105, 65, 145);
            color: white;
            text-shadow: 0 0 6px rgba(255, 255, 255, 0.4); /* chữ trắng bóng nhạt */
            border: none;
            border-radius: 10px;
            text-decoration: none;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            transition: all 0.3s ease;
        }

        .booking-button:hover {
            background-color: rgb(85, 45, 125);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            transform: scale(1.05);
            text-shadow: 0 0 12px rgba(255, 255, 255, 0.7);
        }
        .corner-icon {
            position: absolute;
            bottom: -125px;
            right: -850px;
            width: 200px;
            height: auto;
            transform: translate(50%, 50%); 
            z-index: 10;
        }
        .introduce{
            padding-top: 100px;
            max-width: 800px;             
            margin: 0 auto;              
            text-align: center;           
            font-size: 29px;
            color: #3e4083;             
            line-height: 1.6;
            font-family: 'Segoe UI', sans-serif;
        }
        .khoa{
            padding-top: 100px;
            color: #3e4083;  
            font-family: 'Georgia', serif;
            text-align: center;
            font-size: 20px;
        }
        .departments-container {
            display: flex;
            gap: 20px;
            justify-content: center;
            flex-wrap: wrap;
            padding: 20px;
        }

        .department-card {
            display: inline-block;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 30px 20px;
            text-align: center;
            width: 250px;
            text-decoration: none;
            transition: transform 0.3s ease;
            cursor: pointer;
        }

        .department-card:hover {
            transform: translateY(-6px);
        }

        .icon-circle {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            background-color: #f3e8ff; /* tím nhạt */
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px auto;
            transition: background-color 0.3s ease;
        }
        .icon-circle1{
            width: 150px;
            height: 150px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px auto;
           
        }
        .department-card:hover .icon-circle {
            background-color: #9b59b6; 
        }

        .department-card:hover .icon {
            filter: brightness(0) invert(1);
        }
        .icon{
            width: 100px;
        }
        .icon1{
            width: 150px;
        }
        .title {
            font-size: 16px;
            color: #222;
            font-weight: 600;
            line-height: 1.5;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .title1 {
            font-size: 14px;
            color: #222;
            font-weight: 400;
            line-height: 1.5;
            font-family:sans-serif;
            font-style: italic;
        }
        .btn {
            padding: 10px 20px;
            background-color:  #9b59b6;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        .btn:hover {
            background-color: #800080; /* Màu tím khi hover */
        }
    </style>
</head>
<body>
<div class="main">
        <div class="banner" style="position: relative; text-align: center; color: white;overflow: visible;">
            <img style="width:100%; border-bottom-left-radius: 350px; border-bottom-right-radius: 350px;" src="../../image/banner.jpg">
            <div style="position: absolute; top: 45%; left: 20%; transform: translate(-50%, -50%);
                        font-size: 64px; font-weight: 500; color: rgb(105, 65, 145);
                        font-family: 'Georgia', serif; line-height: 1.3; text-align:left">
                CHĂM SÓC <br>SỨC KHỎE <br>GIA ĐÌNH<br>CỦA BẠN 
                <br>
                <a href="booking" class="booking-button">Đặt lịch khám online</a>
                <img class="corner-icon" src="../../image/logo-banner.png" alt="icon">
            </div>
        </div>
        <div class="introduce">
            <p>Bệnh viện Hạnh Phúc tự hào mang đến dịch vụ chăm sóc sức khỏe chất lượng cao cho mọi gia đình, 
                với đội ngũ bác sĩ tận tâm và trang thiết bị hiện đại. Giờ đây, bạn có thể dễ dàng kết 
                nối với bác sĩ qua dịch vụ khám bệnh trực tuyến – tiện lợi, nhanh chóng và an toàn ngay tại nhà.
            </p>
        </div>
        <div class="khoa">
            <h1>Chuyên Khoa</h1>
            <div class="departments-container">
                <a href="../HOSPITAL/view/BenhNhan/chitietchuyenkhoa.php?id=1" class="department-card">
                    <div class="icon-circle">
                        <img src="../../image/khoa-noi-co-xuong-khop.png" alt="Cơ xương khớp" class="icon">
                    </div>
                    <p class="title">KHOA CƠ XƯƠNG KHỚP</p>
                </a>
                <a href="../HOSPITAL/view/BenhNhan/chitietchuyenkhoa.php?id=2" class="department-card">
                    <div class="icon-circle">
                        <img src="../../image/khoa-noitimmach.png" alt="Tim mạch" class="icon">
                    </div>
                    <p class="title">KHOA TIM MẠCH</p>
                </a>

                <a href="../HOSPITAL/view/BenhNhan/chitietchuyenkhoa.php?id=6" class="department-card">
                    <div class="icon-circle">
                        <img src="../../image/logo-tieu-hoa-gan-mat-f.png" alt="Tiêu hóa gan mật tụy" class="icon">
                    </div>
                    <p class="title">KHOA TIÊU HÓA - GAN MẬT - TỤY</p>
                </a>

                <a href="../HOSPITAL/view/BenhNhan/chitietchuyenkhoa.php?id=4" class="department-card">
                    <div class="icon-circle">
                        <img src="../../image/icon-khoa-long-nguc-mach-mau.png" alt="Ngoại lồng ngực" class="icon">
                    </div>
                    <p class="title">KHOA NGOẠI LỒNG NGỰC – MẠCH MÁU</p>
                </a>
            </div>
            <div style="padding-top: 30px;">
                <a href="../BenhNhan/chuyenkhoa.php" class="btn btn-primary">Xem thêm</a>
            </div>
        </div>
        <div class="khoa">
            <h1>Bác Sĩ</h1>
            <div class="departments-container">
                <a href="chitiet_khoa.php?id=1" class="department-card">
                    <div class="icon-circle1">
                        <img src="../../image/dang-hong-hoa-avt.png" alt="danghonghoa" class="icon1">
                    </div>
                    <p class="title1">KHOA CƠ XƯƠNG KHỚP</p>
                    <p class="title">PGS.TS.BSCC ĐẶNG HỒNG HOA</p>
                </a>
                <a href="chitiet_khoa.php?id=2" class="department-card">
                    <div class="icon-circle">
                        <img src="../../image/khoa-noitimmach.png" alt="Tim mạch" class="icon">
                    </div>
                    <p class="title">KHOA TIM MẠCH</p>
                </a>

                <a href="chitiet_khoa.php?id=3" class="department-card">
                    <div class="icon-circle">
                        <img src="../../image/logo-tieu-hoa-gan-mat-f.png" alt="Tiêu hóa gan mật tụy" class="icon">
                    </div>
                    <p class="title">KHOA TIÊU HÓA - GAN MẬT - TỤY</p>
                </a>

                <a href="chitiet_khoa.php?id=4" class="department-card">
                    <div class="icon-circle">
                        <img src="../../image/icon-khoa-long-nguc-mach-mau.png" alt="Ngoại lồng ngực" class="icon">
                    </div>
                    <p class="title">KHOA NGOẠI LỒNG NGỰC – MẠCH MÁU</p>
                </a>
            </div>
            <div style="padding-top: 30px;">
                <a href="View/BenhNhan/bacsi.php" class="btn btn-primary">Xem thêm</a>
            </div>
        </div>
    </div>
</body>
</html>