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
            <form class="search-form">
                <div class="search-grid">
                    <div class="search-input">
                        <i class="fas fa-search"></i>
                        <input type="text" placeholder="Tìm theo mã, tên bệnh nhân...">
                    </div>
                    
                    <div class="form-group">
                        <select name="department">
                            <option value="">Chuyên khoa</option>
                            <option value="hematology">Huyết học</option>
                            <option value="biochemistry">Sinh hóa</option>
                            <option value="microbiology">Vi sinh</option>
                            <option value="imaging">Chẩn đoán hình ảnh</option>
                            <option value="pathology">Giải phẫu bệnh</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <select name="status">
                            <option value="">Trạng thái</option>
                            <option value="pending">Chờ xử lý</option>
                            <option value="in-progress">Đang xử lý</option>
                            <option value="completed">Hoàn thành</option>
                            <option value="cancelled">Đã hủy</option>
                        </select>
                    </div>
                    
                    <button type="submit" class="btn-primary">Tìm kiếm</button>
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
                        <th>Ngày yêu cầu</th>
                        <th>Trạng thái</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Normally this would come from a database
                    $tests = [
                        ['id' => 'XN2001', 'patient' => 'Nguyễn Văn A', 'type' => 'Xét nghiệm máu', 'department' => 'Huyết học', 'date' => '20/04/2025', 'status' => 'Hoàn thành'],
                        ['id' => 'XN2002', 'patient' => 'Trần Thị B', 'type' => 'X-quang', 'department' => 'Chẩn đoán hình ảnh', 'date' => '21/04/2025', 'status' => 'Đang xử lý'],
                        ['id' => 'XN2003', 'patient' => 'Lê Văn C', 'type' => 'Siêu âm', 'department' => 'Nội khoa', 'date' => '22/04/2025', 'status' => 'Chờ xử lý'],
                        ['id' => 'XN2004', 'patient' => 'Phạm Thị D', 'type' => 'Xét nghiệm máu', 'department' => 'Huyết học', 'date' => '23/04/2025', 'status' => 'Hoàn thành'],
                        ['id' => 'XN2005', 'patient' => 'Hoàng Văn E', 'type' => 'X-quang', 'department' => 'Chẩn đoán hình ảnh', 'date' => '24/04/2025', 'status' => 'Đang xử lý']
                    ];
                    
                    foreach ($tests as $test) {
                        $statusClass = '';
                        switch ($test['status']) {
                            case 'Hoàn thành':
                                $statusClass = 'status-completed';
                                break;
                            case 'Đang xử lý':
                                $statusClass = 'status-processing';
                                break;
                            case 'Chờ xử lý':
                                $statusClass = 'status-pending';
                                break;
                        }
                        
                        echo '<tr>';
                        echo '<td>' . $test['id'] . '</td>';
                        echo '<td>' . $test['patient'] . '</td>';
                        echo '<td>' . $test['type'] . '</td>';
                        echo '<td>' . $test['department'] . '</td>';
                        echo '<td>' . $test['date'] . '</td>';
                        echo '<td><span class="status-badge ' . $statusClass . '">' . $test['status'] . '</span></td>';
                        echo '<td class="actions">';
                        echo '<a href="test_detail.php?id=' . $test['id'] . '" class="btn-small">Chi tiết</a>';
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
