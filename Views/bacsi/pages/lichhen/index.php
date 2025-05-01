<div class="container">
<div class="content-header">
    <h1>Quản lý lịch hẹn</h1>
</div>

<div class="tabs">
    <div class="tab-header">
        <a href="#" class="tab-link active" data-tab="list-view">Danh sách</a>
    </div>
    
    <div class="tab-content">
        <div id="list-view" class="tab-pane active">
            <div class="card">
                <div class="card-header">
                    <h2>Tìm kiếm lịch hẹn</h2>
                </div>
                <div class="card-body">
                    <form class="search-form">
                        <div class="search-grid">
                            <div class="search-input">
                                <i class="fas fa-search"></i>
                                <input type="text" placeholder="Tìm theo tên bệnh nhân, mã phiếu...">
                            </div>
                            
                            <div class="form-group">
                                <select name="status">
                                    <option value="">Trạng thái</option>
                                    <option value="pending">Chưa khám</option>
                                    <option value="completed">Đã khám</option>
                                    <option value="cancelled">Đã hủy</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <input type="date" name="date" placeholder="Ngày khám">
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
                                <th>Mã phiếu</th>
                                <th>Ngày khám</th>
                                <th>Ca làm việc</th>
                                <th>Bác sĩ</th>
                                <th>Bệnh nhân</th>
                                <th>Tổng tiền</th>
                                <th>Trạng thái</th>
                                <th>Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            // Normally this would come from a database
                            $appointments = [
                                ['id' => '1', 'date' => '2025-04-17', 'shift' => '20', 'doctor' => '1', 'doctor_name' => 'Trần Văn C', 'patient' => '1', 'patient_name' => 'Nguyễn Văn A', 'total' => '150000', 'status' => 'Chưa khám'],
                                ['id' => '10', 'date' => '2025-04-17', 'shift' => '22', 'doctor' => '2', 'doctor_name' => 'Lê Thị D', 'patient' => '5', 'patient_name' => 'Hoàng Văn E', 'total' => '0', 'status' => 'Chưa khám'],
                                ['id' => '11', 'date' => '2025-04-18', 'shift' => '7', 'doctor' => '3', 'doctor_name' => 'Phạm Văn F', 'patient' => '6', 'patient_name' => 'Trần Thị B', 'total' => '120000', 'status' => 'Đã khám'],
                                ['id' => '12', 'date' => '2025-04-18', 'shift' => '7', 'doctor' => '1', 'doctor_name' => 'Trần Văn C', 'patient' => '7', 'patient_name' => 'Lê Văn G', 'total' => '0', 'status' => 'Đã hủy'],
                                ['id' => '13', 'date' => '2025-04-18', 'shift' => '7', 'doctor' => '2', 'doctor_name' => 'Lê Thị D', 'patient' => '8', 'patient_name' => 'Phạm Thị H', 'total' => '310000', 'status' => 'Đã khám'],
                            ];
                            
                            foreach ($appointments as $appointment) {
                                $statusClass = '';
                                switch ($appointment['status']) {
                                    case 'Chưa khám':
                                        $statusClass = 'status-pending';
                                        break;
                                    case 'Đã khám':
                                        $statusClass = 'status-completed';
                                        break;
                                    case 'Đã hủy':
                                        $statusClass = 'status-canceled';
                                        break;
                                }
                                
                                echo '<tr>';
                                echo '<td>' . $appointment['id'] . '</td>';
                                echo '<td>' . date('d/m/Y', strtotime($appointment['date'])) . '</td>';
                                echo '<td>' . $appointment['shift'] . '</td>';
                                echo '<td>' . $appointment['doctor_name'] . '</td>';
                                echo '<td>' . $appointment['patient_name'] . '</td>';
                                echo '<td>' . number_format($appointment['total'], 0, ',', '.') . ' VND</td>';
                                echo '<td><span class="status-badge ' . $statusClass . '">' . $appointment['status'] . '</span></td>';
                                echo '<td>';
                                echo '<a class="btn-primary btn-small" style="margin-right: 10px" href="?action=chitietlichhen"><i class="fas fa-clipboard-list"></i> Xem chi tiết</a>';
                                if($appointment['status']=='Chưa khám'){
                                    echo '<a class="btn-primary btn-small" href="?action=tinnhan&id=mabenhnhan"><i class="fas fa-comment-medical"></i> nhắn tin</a>';
                                }
                                echo'</td>';
                                echo '</tr>';
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>