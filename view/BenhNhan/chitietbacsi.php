<?php
include_once(__DIR__ . "/../../controller/cbacsi.php");

if (!isset($_GET['id'])) {
    echo "Không tìm thấy bác sĩ.";
    exit;
}

$mabacsi = $_GET['id'];
$c = new cBacSi();
$bacsi = $c->getBacSiById($mabacsi); 

if (!$bacsi || $bacsi->num_rows === 0) {
    echo "Không tìm thấy thông tin bác sĩ.";
    exit;
}

$row = $bacsi->fetch_assoc();
?>

<style>
.container {
    max-width: 1000px;
    margin: auto;
    background: #fff;
    border-radius: 12px;
    padding: 30px;
    box-shadow: 0 4px 20px rgba(0,0,0,0.08);
}
.doctor-header {
    display: flex;
    gap: 30px;
    align-items: flex-start;
    margin-bottom: 20px;
}
.doctor-header img {
    width: 220px;
    border-radius: 12px;
    border: 1px solid #ccc;
    object-fit: cover;
}
.doctor-info {
    flex: 1;
}
.doctor-info h2 {
    margin-top: 0;
    color: #3c1561;
    font-size: 26px;
}
.doctor-info p {
    margin: 8px 0;
    color: #444;
    line-height: 1.6;
}
.btn-book {
    display: inline-block;
    margin-top: 20px;
    margin-left: 40%;
    padding: 10px 20px;
    background: rgb(60, 21, 97);
    color: #fff;
    text-decoration: none;
    border-radius: 8px;
    font-weight: bold;
}
@media (max-width: 768px) {
    .doctor-header {
        flex-direction: column;
        align-items: center;
        text-align: center;
    }
    .doctor-info {
        text-align: center;
    }
}
.section {
    margin-top: 30px;
    padding-top: 20px;
    border-top: 1px solid #eee;
}
.section h3 {
    color: rgb(60, 21, 97);
    font-size: 20px;
    margin-bottom: 10px;
}
.schedule-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    font-size: 14px;
}
.schedule-table th,
.schedule-table td {
    padding: 8px 12px;
    border: 1px solid #ddd;
    text-align: center;
}
.schedule-table th {
    background-color: rgb(60, 21, 97);
    color: #fff;
    font-weight: bold;
}
.schedule-table td {
    background-color: #f9f9f9;
    font-size: 13px;
    color: #333;
}
.schedule-table tr:hover {
    background-color: #f1f1f1;
}
.schedule-table tr:nth-child(even) td {
    background-color: #f7f7f7;
}
.schedule-table tr:nth-child(odd) td {
    background-color: #fff;
}
</style>

<div class="container">
    <div class="doctor-header">
        <img src="../../image/<?php echo htmlspecialchars($row['imgbs']); ?>" alt="Ảnh bác sĩ">
        <div class="doctor-info">
            <h2><?php echo htmlspecialchars($row['capbac']) . ' ' . htmlspecialchars($row['hoten']); ?></h2>
            <p><strong>Chuyên khoa:</strong> <?php echo htmlspecialchars($row['tenchuyenkhoa']); ?></p>
            <p><strong>Thông tin mô tả:</strong></p>
            <p><?php echo nl2br(htmlspecialchars($row['gioithieubs'])); ?></p>
        </div>
    </div>

    <div id="lichlamviec">
        <!-- Nội dung lịch sẽ được load bằng AJAX -->
        <p>Đang tải lịch làm việc...</p>
    </div>

    <a class="btn-book" href="datlich.php?id=<?php echo $row['mabacsi']; ?>">Đặt lịch khám ngay</a>
</div>

<script>
document.addEventListener("DOMContentLoaded", function () {
    const bacsiId = "<?php echo $mabacsi; ?>";

    fetch(`ajaxlichbacsi.php?id=${bacsiId}`)
        .then(response => response.text())
        .then(data => {
            document.getElementById("lichlamviec").innerHTML = data;
        })
        .catch(error => {
            document.getElementById("lichlamviec").innerHTML = "<p style='color:red;'>Không thể tải lịch làm việc.</p>";
        });
});
</script>
