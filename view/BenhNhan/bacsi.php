<?php
// Dùng __DIR__ để include chính xác
include_once(__DIR__ . "/../../controller/cbacsi.php");

// Gọi controller để lấy dữ liệu
$c = new cBacSi();
$ds = $c->getAllBacSi();
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách bác sĩ</title>
    <style>
       .search-container {
            display: flex;
            justify-content: center;
            margin: 30px auto;
        }

        .search-form {
            background-color: #f2f2f2;
            padding: 12px 20px;
            border-radius: 30px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .textsearch {
            border: none;
            outline: none;
            padding: 10px 15px;
            border-radius: 20px;
            width: 300px;
            font-size: 14px;
            background-color: #fff;
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.08);
            transition: all 0.3s ease;
        }

        .textsearch:focus {
            box-shadow: 0 0 0 2px rgba(60, 21, 97, 0.3);
        }

        .btnsearch {
            background-color: rgb(60, 21, 97);
            border: none;
            color: #fff;
            padding: 10px 20px;
            border-radius: 20px;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btnsearch:hover {
            background-color: #4a1c7c;
        }
        body {
            font-family: Arial, sans-serif;
            background: white;
        }
        h1 {
            text-align: center;
            color: #3c1561;
            margin-top: 30px;
        }

        .doctor-card {
            display: flex;
            gap: 25px;
            background: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
            margin: 30px auto;
            max-width: 1100px;
            align-items: flex-start;
        }

        .doctor-img img {
            width: 180px;
            border-radius: 10px;
            border: 1px solid #ddd;
            object-fit: cover;
        }

        .doctor-info {
            flex: 1;
        }

        .doctor-name {
            font-size: 22px;
            font-weight: bold;
            color: #222;
            margin-bottom: 10px;
            text-transform: uppercase;
        }

        .doctor-position,
        .doctor-hospital {
            font-style: italic;
            color: #666;
            margin-bottom: 6px;
        }

        .doctor-desc {
            margin: 10px 0 20px;
            color: #444;
            line-height: 1.6;
        }
        .doctor-buttons{
            padding-left: 400px;
        }
        .doctor-buttons a {
            text-decoration: none;
            padding: 10px 18px;
            margin-right: 10px;
            border-radius: 6px;
            font-weight: 600;
            font-size: 14px;
        }

        .btn-primary {
            background-color: #1a237e;
            color: #fff;
        }

        .btn-secondary {
            background-color: #0288d1;
            color: #fff;
        }

        @media (max-width: 768px) {
            .doctor-card {
                flex-direction: column;
                align-items: center;
                text-align: center;
            }
            .doctor-img img {
                margin-bottom: 15px;
            }
            .doctor-buttons a {
                display: inline-block;
                margin: 10px 5px 0;
            }
        }
    </style>
</head>
<body>
<h1>Danh sách bác sĩ</h1>
<div class="search-container">
    <form action="search.php" method="GET" class="search-form">
        <input class="textsearch" type="text" name="keyword" placeholder="Nhập tên bác sĩ..." required>
        <button class="btnsearch" type="submit">Tìm kiếm</button>
    </form>
</div>


<?php 
    if (is_int($ds) && $ds == -1) {
        echo "<p style='text-align:center; color:red;'>Lỗi kết nối dữ liệu.</p>";
    } elseif (is_int($ds) && $ds == 0) {
        echo "<p style='text-align:center;'>Không có bác sĩ nào.</p>";
    } else {
        while ($row = $ds->fetch_assoc()) {
?>
    <div class="doctor-card">
        <div class="doctor-img">
            <img src="../../image/<?php echo htmlspecialchars($row['imgbs']); ?>" alt="Ảnh bác sĩ">
        </div>
        <div class="doctor-info">
            <h2 class="doctor-name">
                <?php echo htmlspecialchars($row['capbac']) . ' ' . htmlspecialchars($row['hoten']); ?>
            </h2>
            <p class="doctor-position"><?php echo htmlspecialchars($row['tenchuyenkhoa']); ?></p>
            <p class="doctor-desc">
                <?php
                    $desc = strip_tags($row['motabs']);
                    echo strlen($desc) > 300 ? substr($desc, 0, 300) . '...' : $desc;
                ?>
            </p>
            <div class="doctor-buttons" >
                <a href="datlich.php?id=<?php echo $row['mabacsi']; ?>" class="btn-primary">ĐẶT LỊCH KHÁM ONLINE</a>
                <a href="index.php?action=chitietbacsi&id=<?php echo $row['mabacsi']; ?> " class="btn-secondary">XEM CHI TIẾT</a>
            </div>
        </div>
    </div>
<?php
        }
    }
?>
</body>
</html>
