<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
            z-index: 1000; /* Giữ header nằm trên các phần khác */
            background-color: white; /* Nên có để không bị trong suốt */
            box-shadow: 0 2px 4px rgba(0,0,0,0.1); /* Đổ bóng nhẹ */
        }
        .header_logo{
            margin-left: 80px;
        }
        .menu{
            margin-right: 30px;
        }
        .menu ul{
            list-style-type: none;
            display: flex;
            justify-content: space-between;
        }
        .menu li{
            margin-right: 20px;
            font-size: large;
            color: rgb(60, 21, 97);
        }
        
        .textsearch{
            border-radius: 15px; 
            width:220px;
            height:25px; 
            border-color:rgb(60, 21, 97);
        }
        .textsearch::placeholder {
            color:rgb(60, 21, 97);
            opacity: 1; 
        }

        .btnsearch{
            width: 80px;
            height: 30px;
            border-radius: 10px; 
            color: rgb(60, 21, 97);
            font-size:14px;
        }
        .search{
            margin-right: 80px;
        }
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
            text-shadow: 0 0 12px rgba(255, 255, 255, 0.7); /* bóng mạnh hơn khi hover */
        }
        .corner-icon {
            position: absolute;
            bottom: -125px;
            right: -850px;
            width: 200px;
            height: auto;
            transform: translate(50%, 50%); /* Dịch ảnh ra ngoài 50% chiều rộng và chiều cao */
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
        .specialty-section {
            padding: 40px 80px;
        }

        .section-title {
            font-size: 36px;
            font-weight: 500;
            color: #3c1561;
            margin-bottom: 40px;
            text-align: left;
            font-family:Georgia, 'Times New Roman', Times, serif;
        }

        .specialty-cards {
            display: flex;
            gap: 24px;
            flex-wrap: wrap;
        }

        .card-link {
            text-decoration: none;
            color: inherit;
        }

        .card {
            background-color: #f3f6fb;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0,0,0,0.08);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            width: 280px;
        }

        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .card-title {
            padding: 16px;
            font-size: 22px;
            font-weight: 500;
            text-align: center;
            color: #3c1561;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0,0,0,0.15);
        }

        @media (max-width: 768px) {
            .specialty-cards {
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 90%;
            }

            .section-title {
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="header_logo">
            <a href="index.php"><img style="width:250px; height: 55px; padding: left 200px;" src="image/logo.png"></a>
        </div>
        <div class="menu">
            <ul>
                <li><a href="" style="text-decoration: none;">Về chúng tôi</a></li>
                <li><a href="" style="text-decoration: none;">Chuyên khoa</a></li>
                <li><a href="" style="text-decoration: none;">Bác sĩ</a></li>
                <li><a href="" style="text-decoration: none;">Gói khám</a></li>
                <li><a href="" style="text-decoration: none;">Liên hệ</a></li>
                <li><a href="" style="text-decoration: none; font-weight:bold;">Đặt lịch khám online</a></li>
            </ul>
        </div>
        <div class="search">
        <form action="search.php" method="GET">
                        <input class="textsearch" type="text" name="keyword" placeholder="Nhập tên bác sĩ hoặc chuyên khoa..." required>
                        <button class="btnsearch" type="submit">Tìm kiếm</button>
                    </form>
        </div>
    </div>
    <div class="main">
        <div class="banner" style="position: relative; text-align: center; color: white;overflow: visible;">
            <img style="width:100%; border-bottom-left-radius: 350px; border-bottom-right-radius: 350px;" src="image/banner.jpg">
            <div style="position: absolute; top: 45%; left: 20%; transform: translate(-50%, -50%);
                        font-size: 64px; font-weight: 500; color: rgb(105, 65, 145);
                        font-family: 'Georgia', serif; line-height: 1.3; text-align:left">
                CHĂM SÓC <br>SỨC KHỎE <br>GIA ĐÌNH<br>CỦA BẠN 
                <br>
                <a href="booking" class="booking-button">Đặt lịch khám online</a>
                <img class="corner-icon" src="image/logo-banner.png" alt="icon">
            </div>
        </div>
        <div class="introduce">
            <p>Bệnh viện Hạnh Phúc tự hào mang đến dịch vụ chăm sóc sức khỏe chất lượng cao cho mọi gia đình, 
                với đội ngũ bác sĩ tận tâm và trang thiết bị hiện đại. Giờ đây, bạn có thể dễ dàng kết 
                nối với bác sĩ qua dịch vụ khám bệnh trực tuyến – tiện lợi, nhanh chóng và an toàn ngay tại nhà.
            </p>
        </div>
        <div class="khoa">
            <h1>Chuyên khoa</h1>
            <div class="specialty-cards">
                <a href="" class="card-link">
                    <div class="card">
                        <img src="image/khoa-noi-co-xuong-khop.png" alt="" style="width:80%;height:80%">
                        <div class="card-title">Cơ xương khớp</div>
                    </div>
                </a>

                <a href="" class="card-link">
                    <div class="card">
                        <img src="image2.jpg" alt="">
                        <div class="card-title">Trung tâm khiểm soát cân nặng và điều trị béo phì</div>
                    </div>
                </a>

                <a href="" class="card-link">
                    <div class="card">
                        <img src="image3.jpg" alt="">
                        <div class="card-title">Khám sức khỏe tổng quát dành cho nữ</div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</body>
</html>