<?php
    include_once('Controllers/cbenhnhan.php');
    $cbenhnhan = new cBenhNhan();
    $benhnhan_list= $cbenhnhan->get_list_benhnhan();
?>
<body>
    <div class="container">
        <div class="content-header">
            <h1>Quản lý bệnh nhân</h1>
            <a href="#" class="btn-primary"><i class="fas fa-plus"></i> Thêm bệnh nhân</a>
        </div>
        
        <div class="card">
            <div class="card-header">
                <h2>Tìm kiếm bệnh nhân</h2>
            </div>
            <div class="card-body">
                <form class="search-form">
                    <div class="search-input">
                        <i class="fas fa-search"></i>
                        <input type="text" placeholder="Tìm theo tên, mã bệnh nhân...">
                    </div>
                    <br>
                    <button type="submit" class="btn-primary">Tìm kiếm</button>
                </form>
            </div>
        </div>
        
        <div class="card">
            <div class="card-body no-padding">
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>Mã BN</th>
                            <th>Họ tên</th>
                            <th>Ngày sinh</th>
                            <th>Giới tính</th>
                            <th>Số điện thoại</th>
                            <th>Email</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        
                        foreach ($benhnhan_list as $i) {
                            echo '<tr>';
                            echo '<td>' . $i['mabenhnhan'] . '</td>';
                            echo '<td>' . $i['hotenbenhnhan'] . '</td>';
                            echo '<td>' . $i['ngaysinh'] . '</td>';
                            echo '<td>' . $i['gioitinh'] . '</td>';
                            echo '<td>' . $i['sdtbenhnhan'] . '</td>';
                            echo '<td>' . $i['email'] . '</td>';
                            echo '<td class="actions">';
                            echo '<a href="?action=chitietbenhnhan&id=' . $i['mabenhnhan'] . '" class="btn-small">Chi tiết</a>';
                            echo '</td>';
                            echo '</tr>';
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?php require("Views/bacsi/layout/footer.php"); ?>
