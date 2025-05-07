<?php
    include_once('Controllers/clichxetnghiem.php');
    include_once('Controllers/cbacsi.php');
    include_once('Controllers/cchuyenkhoa.php');
    $cchuyenkhoa = new cChuyenKhoa();
    $chuyenkhoa_list=$cchuyenkhoa->getAllChuyenKhoa();
    $cbacsi = new cBacSi();
    $clichxetnghiem = new cLichXetNghiem();
    $bacsi= $cbacsi->getBacSiByTenTK($_SESSION['user']['tentk']);
    $lichxetnghiem_list= $clichxetnghiem->get_lichxetnghiem_mabacsi($bacsi['mabacsi']);

    if(isset($_POST["btntimkiem"])){
        $tukhoa=$_POST["tukhoa"];
        $trangthai=$_POST["trangthai"];
        $machuyenkhoa=$_POST["chuyenkhoa"];
        $lichxetnghiem_list=$clichxetnghiem->get_lichxetnghiem_tukhoa($tukhoa, $machuyenkhoa, $trangthai,$bacsi['mabacsi']);
    }
?>
<div class="container">
    <div class="content-header">
        <h1>Quản lý xét nghiệm</h1>
        <a href="#" class="btn-primary"><i class="fas fa-plus"></i> Thêm xét nghiệm</a>
    </div>
    
    <div class="card">
        <div class="card-header">
            <h2>Tìm kiếm xét nghiệm</h2>
        </div>
        <div class="card-body">
            <form class="search-form" method="POST">
                <div class="search-grid">
                    <div class="search-input">
                        <i class="fas fa-search"></i>
                        <input type="text" name="tukhoa" placeholder="Tìm theo mã, tên bệnh nhân...">
                    </div>
                    
                    <div class="form-group">
                        <select name="chuyenkhoa">
                            <option value="">Chuyên khoa</option>
                            <?php foreach($chuyenkhoa_list as $i){?>
                                <option value="<?php echo $i['machuyenkhoa'];?>"><?php echo $i['tenchuyenkhoa'];?></option>
                            <?php } ?>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <select name="trangthai">
                            <option value="">Trạng thái</option>
                            <option value="Đã đặt lịch">Đã đặt lịch</option>
                            <option value="Chờ xác nhận">Chờ xác nhận</option>
                            <option value="Đã hoàn thành">Đã hoàn thành</option>
                            <option value="Đã hủy">Đã hủy</option>
                        </select>
                    </div>
                    
                    <button type="submit" class="btn-primary" name="btntimkiem">Tìm kiếm</button>
                </div>
            </form>
        </div>
    </div>
    
    <div class="card">
        <div class="card-body no-padding">
            <table class="data-table">
                <thead>
                    <tr>
                        <th>Mã XN</th>
                        <th>Bệnh nhân</th>
                        <th>Loại xét nghiệm</th>
                        <th>Chuyên khoa</th>
                        <th>Ngày hẹn</th>
                        <th>Khung Giờ</th>
                        <th>Trạng thái</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        if($lichxetnghiem_list){
                            foreach ($lichxetnghiem_list as $i) {
                                $statusClass = '';
                                switch ($i['trangthailichxetnghiem']) {
                                    case 'Đã hoàn thành':
                                        $style = 'status-completed';
                                        break;
                                    case 'Chờ xác nhận':
                                        $style = 'status-processing';
                                        break;
                                    case 'Đã đặt lịch':
                                        $style = 'status-pending';
                                        break;
                                    case 'Đã hủy':
                                        $style = 'status-canceled';
                                        break;
                                }
                                    echo '<tr>';
                                    echo '<td>' . $i['malichxetnghiem'] . '</td>';
                                    echo '<td>' . $i['hotenbenhnhan'] . '</td>';
                                    echo '<td>' . $i['tenloaixetnghiem'] . '</td>';
                                    echo '<td>' . $i['tenchuyenkhoa'] . '</td>';
                                    echo '<td>' . $i['ngayhen'] . '</td>';
                                    echo '<td>' . $i['giobatdau'].'-'.$i['gioketthuc'] . '</td>';
                                    echo '<td><span class="status-badge ' .  $style . '">' . $i['trangthailichxetnghiem'] . '</span></td>';
                                    echo '<td class="actions">';
                                    echo '<a href="?action=ketquaxetnghiem&id=' . $i['malichxetnghiem'] . '" class="btn-small">Chi tiết</a>';
                                    echo '</td>';
                                    echo '</tr>';
                                }
                        }else{
                            echo '<tr><td colspan="8" style="text-align:center; color:gray;">Không tìm thấy</td></tr>';

                        }   
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?php require("Views/bacsi/layout/footer.php"); ?>
