<?php
$id = isset($_GET['id']) ? $_GET['id'] : 0;

if ($id == 0) {
    echo "<p style='text-align:center;'>ID chuyên khoa không hợp lệ.</p>";
    exit;
}

include_once(__DIR__ . "/../../controller/cchitietchuyenkhoa.php");

$c = new cChuyenKhoa();
$ds = $c->getChiTietChuyenKhoaByID($id);
$chuyenKhoa = $ds->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chi tiết chuyên khoa - <?php echo htmlspecialchars($chuyenKhoa['tenchuyenkhoa']); ?></title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background-color: #f8f6fc;
            color: #333;
        }
       
        header, footer {
            background-color: #6a1b9a;
            color: white;
            padding: 15px 0;
            text-align: center;
        }

        .container {
            max-width: 1000px;
            margin: 30px auto;
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(106, 27, 154, 0.1);
        }

        h1 {
            text-align: center;
            color: #6a1b9a;
            margin-bottom: 30px;
        }

        .chuyen-khoa-detail {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
        }

        .khoa-img {
            flex: 1;
            text-align: center;

        }

        .khoa-img-wrapper {
            position: relative;
            width: 100%;
            max-width: 400px;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(106, 27, 154, 0.3);
        }

        .khoa-img-wrapper::after {
            content: "";
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background-color: rgba(106, 27, 154, 0.3); /* tím overlay */
            pointer-events: none;
        }

        .khoa-img-wrapper img {
            display: block;
            width: 100%;
            height: auto;
            border-radius: 10px;
            transition: 0.4s ease;
        }

        .khoa-img-wrapper:hover img {
            transform: scale(1.03);
        }

        .khoa-img img:hover {
            transform: scale(1.03);
            box-shadow: 0 6px 20px rgba(106, 27, 154, 0.5);
        }
        .khoa-info {
            flex: 2;
        }

        .khoa-info h3 {
            color: #4a148c;
            margin-bottom: 15px;
        }

        .khoa-info p {
            line-height: 1.7;
            font-size: 16px;
        }

        @media (max-width: 768px) {
            .chuyen-khoa-detail {
                flex-direction: column;
                align-items: center;
            }

            .khoa-info, .khoa-img {
                width: 100%;
            }
        }
        .back-button-wrapper {
            text-align: center;
            margin-top: 30px;
        }

        .back-button {
            background-color: #6a1b9a;
            color: white;
            padding: 12px 25px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.3s ease;
            display: inline-block;
        }

        .back-button:hover {
            background-color: #4a148c;
            transform: scale(1.05);
        }

    </style>
</head>
<body>

    
    <div class="container">
        <h1><?php echo htmlspecialchars($chuyenKhoa['tenchuyenkhoa']); ?></h1>

        <div class="chuyen-khoa-detail">
            <div class="khoa-img">
                <img style="width:200px;" src="../../image/<?php echo htmlspecialchars($chuyenKhoa['img']); ?>" alt="Ảnh chuyên khoa">
            </div>
            <div class="khoa-info">
                <h3>Thông tin chuyên khoa</h3>
                <p><strong>Mô tả:</strong><br> <?php echo nl2br(htmlspecialchars($chuyenKhoa['mota'])); ?></p>
                <h3>Dịch vụ của chuyên khoa</h3>
                <p><?php echo nl2br(htmlspecialchars($chuyenKhoa['dichvu'])); ?></p>
            </div>
        </div>
        <div class="back-button-wrapper">
            <a href="index.php?action=chuyenkhoa" class="back-button">← Quay lại trang chuyên khoa</a>
        </div>
    </div>

</body>
</html>
