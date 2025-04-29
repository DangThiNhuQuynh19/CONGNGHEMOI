<?php
$mabenhnhan = $_GET['id'] ?? '';
include_once('Controllers/cbenhnhan.php');
$cbenhnhan = new cBenhNhan();
$bn= $cbenhnhan->getbenhnhanbyid($mabenhnhan);
// Get active tab from URL or default to medical-records
$active_tab = $_GET['tab'] ?? 'medical-records';
?>    
<div class="container">
    <div class="content-header">
        <div class="back-button">
            <a href="?action=benhnhan" class="btn-icon"><i class="fas fa-arrow-left"></i></a>
            <h1>Hồ sơ bệnh nhân: <?php echo $bn['mabenhnhan']; ?></h1>
        </div>
    </div>
    
    <div class="patient-detail">
        <div class="patient-sidebar">
            <div class="card">
                <div class="card-body">
                    <div class="patient-avatar">
                        <i class="fas fa-user"></i>
                    </div>
                    <h2 class="patient-name"><?php echo $bn['hotenbenhnhan']; ?></h2>
                    <p class="patient-id">Mã BN: <?php echo $bn['mabenhnhan']; ?></p>
                    
                    <div class="patient-info">
                        <div class="info-row">
                            <span class="info-label">Ngày sinh:</span>
                            <span class="info-value"><?php echo $bn['ngaysinh']; ?></span>
                        </div>
                        <div class="info-row">
                            <span class="info-label">Giới tính:</span>
                            <span class="info-value"><?php echo $bn['gioitinh']; ?></span>
                        </div>
                        <div class="info-row">
                            <span class="info-label">Điện thoại:</span>
                            <span class="info-value"><?php echo $bn['sdtbenhnhan']; ?></span>
                        </div>
                        <div class="info-row">
                            <span class="info-label">Địa chỉ:</span>
                            <span class="info-value"><?php echo $bn['sonha'].",". $bn['xa/phuong'].",".$bn['quan/huyen'].",".$bn['tinh/thanhpho']; ?></span>
                        </div>
                        <div class="info-row">
                            <span class="info-label">Nhóm máu:</span>
                            <span class="info-value"><?php echo $bn['nhommau']; ?></span>
                        </div>
                        <div class="info-row">
                            <span class="info-label">Tiền sử bệnh tật:</span>
                            <span class="info-value"><?php echo $bn['tiensubenhtatcuabenhnhan']; ?></span>
                        </div>
                    </div>
                    
                    <div class="patient-actions">
                        <a href="#" class="btn-primary btn-full"><i class="fas fa-calendar-plus"></i> Đặt lịch hẹn</a>
                        <a href="?action=xetnghiem" class="btn-outline btn-full"><i class="fas fa-flask"></i> Thêm xét nghiệm</a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="patient-content">
            <div class="tabs">
                <div class="tab-header">
                    <a href="?action=chitietbenhnhan&id=<?php echo $mabenhnhan; ?>&tab=medical-records" class="tab-link <?php echo $active_tab === 'medical-records' ? 'active' : ''; ?>">Hồ sơ bệnh án</a>
                    <a href="?action=chitietbenhnhan&id=<?php echo $mabenhnhan; ?>&tab=tests" class="tab-link <?php echo $active_tab === 'tests' ? 'active' : ''; ?>">Xét nghiệm</a>
                    <a href="?action=chitietbenhnhan&id=<?php echo $mabenhnhan; ?>&tab=prescriptions" class="tab-link <?php echo $active_tab === 'prescriptions' ? 'active' : ''; ?>">Đơn thuốc</a>
                    <a href="?action=chitietbenhnhan&id=<?php echo $mabenhnhan ?>&tab=appointments" class="tab-link <?php echo $active_tab === 'appointments' ? 'active' : ''; ?>">Lịch hẹn</a>
                </div>
                
                <div class="tab-content">
                    <?php if ($active_tab === 'medical-records'): ?>
                        <div class="card">
                            <div class="card-header">
                                <h2>Hồ sơ bệnh án</h2>
                                <p>Lịch sử bệnh án của bệnh nhân</p>
                            </div>
                            <div class="card-body">
                                <div class="medical-records">
                                    <?php
                                    // Normally this would come from a database
                                    $records = [
                                        ['type' => 'Khám tổng quát', 'date' => '23/04/2025', 'doctor' => 'Trần Văn C', 'diagnosis' => 'Viêm họng cấp', 'notes' => 'Nghỉ ngơi, uống nhiều nước, dùng thuốc theo đơn'],
                                        ['type' => 'Tái khám', 'date' => '22/04/2025', 'doctor' => 'Trần Văn C', 'diagnosis' => 'Viêm xoang', 'notes' => 'Tiếp tục điều trị, hẹn tái khám sau 1 tuần'],
                                        ['type' => 'Khám chuyên khoa', 'date' => '21/04/2025', 'doctor' => 'Lê Thị D', 'diagnosis' => 'Đau lưng mãn tính', 'notes' => 'Chỉ định vật lý trị liệu, kê đơn thuốc giảm đau']
                                    ];
                                    
                                    foreach ($records as $record) {
                                        echo '<div class="record-item">';
                                        echo '<div class="record-header">';
                                        echo '<h3>' . $record['type'] . '</h3>';
                                        echo '<span class="record-date">' . $record['date'] . '</span>';
                                        echo '</div>';
                                        echo '<div class="record-details">';
                                        echo '<p><strong>Bác sĩ:</strong> ' . $record['doctor'] . '</p>';
                                        echo '<p><strong>Chẩn đoán:</strong> ' . $record['diagnosis'] . '</p>';
                                        echo '<p><strong>Ghi chú:</strong> ' . $record['notes'] . '</p>';
                                        echo '</div>';
                                        echo '<div class="record-actions">';
                                        echo '<a href="#" class="btn-small">Xem chi tiết</a>';
                                        echo '</div>';
                                        echo '</div>';
                                    }
                                    ?>
                                </div>
                            </div>
                        </div>
                    <?php elseif ($active_tab === 'tests'): ?>
                        <div class="card">
                            <div class="card-header">
                                <h2>Xét nghiệm</h2>
                                <p>Kết quả xét nghiệm của bệnh nhân</p>
                            </div>
                            <div class="card-body">
                                <div class="test-records">
                                    <?php
                                    // Normally this would come from a database
                                    $tests = [
                                        ['type' => 'Xét nghiệm máu', 'date' => '18/04/2025', 'department' => 'Huyết học', 'status' => 'Hoàn thành'],
                                        ['type' => 'X-quang ngực', 'date' => '15/04/2025', 'department' => 'Chẩn đoán hình ảnh', 'status' => 'Đang xử lý'],
                                        ['type' => 'Siêu âm ổ bụng', 'date' => '12/04/2025', 'department' => 'Chẩn đoán hình ảnh', 'status' => 'Hoàn thành']
                                    ];
                                    
                                    foreach ($tests as $test) {
                                        $statusClass = $test['status'] === 'Hoàn thành' ? 'status-completed' : 'status-processing';
                                        
                                        echo '<div class="test-item">';
                                        echo '<div class="test-header">';
                                        echo '<h3>' . $test['type'] . '</h3>';
                                        echo '<span class="test-date">' . $test['date'] . '</span>';
                                        echo '</div>';
                                        echo '<div class="test-details">';
                                        echo '<p><strong>Chuyên khoa:</strong> ' . $test['department'] . '</p>';
                                        echo '<p><strong>Trạng thái:</strong> <span class="status-badge ' . $statusClass . '">' . $test['status'] . '</span></p>';
                                        echo '</div>';
                                        echo '<div class="test-actions">';
                                        if ($test['status'] === 'Hoàn thành') {
                                            echo '<a href="#" class="btn-small">Xem kết quả</a>';
                                        } else {
                                            echo '<a href="#" class="btn-small disabled">Chờ kết quả</a>';
                                        }
                                        echo '</div>';
                                        echo '</div>';
                                    }
                                    ?>
                                </div>
                            </div>
                        </div>
                    <?php elseif ($active_tab === 'prescriptions'): ?>
                        <div class="card">
                            <div class="card-header">
                                <h2>Đơn thuốc</h2>
                                <p>Lịch sử đơn thuốc của bệnh nhân</p>
                            </div>
                            <div class="card-body">
                                <div class="prescription-records">
                                    <?php
                                    // Normally this would come from a database
                                    $prescriptions = [
                                        [
                                            'id' => 'DT001',
                                            'date' => '23/04/2025',
                                            'doctor' => 'Trần Văn C',
                                            'diagnosis' => 'Viêm họng cấp',
                                            'medications' => [
                                                ['name' => 'Paracetamol 500mg', 'dosage' => '3 lần/ngày'],
                                                ['name' => 'Amoxicillin 500mg', 'dosage' => '2 lần/ngày']
                                            ]
                                        ],
                                        [
                                            'id' => 'DT002',
                                            'date' => '15/04/2025',
                                            'doctor' => 'Lê Thị D',
                                            'diagnosis' => 'Đau lưng mãn tính',
                                            'medications' => [
                                                ['name' => 'Diclofenac 50mg', 'dosage' => '2 lần/ngày'],
                                                ['name' => 'Methocarbamol 500mg', 'dosage' => '3 lần/ngày']
                                            ]
                                        ]
                                    ];
                                    
                                    foreach ($prescriptions as $prescription) {
                                        echo '<div class="prescription-item">';
                                        echo '<div class="prescription-header">';
                                        echo '<h3>Đơn thuốc #' . $prescription['id'] . '</h3>';
                                        echo '<span class="prescription-date">' . $prescription['date'] . '</span>';
                                        echo '</div>';
                                        echo '<div class="prescription-details">';
                                        echo '<p><strong>Bác sĩ:</strong> ' . $prescription['doctor'] . '</p>';
                                        echo '<p><strong>Chẩn đoán:</strong> ' . $prescription['diagnosis'] . '</p>';
                                        echo '<div class="medications">';
                                        foreach ($prescription['medications'] as $medication) {
                                            echo '<div class="medication">';
                                            echo '<i class="fas fa-pills"></i>';
                                            echo '<span>' . $medication['name'] . ' - ' . $medication['dosage'] . '</span>';
                                            echo '</div>';
                                        }
                                        echo '</div>';
                                        echo '</div>';
                                        echo '<div class="prescription-actions">';
                                        echo '<a href="#" class="btn-small">In đơn thuốc</a>';
                                        echo '</div>';
                                        echo '</div>';
                                    }
                                    ?>
                                </div>
                            </div>
                        </div>
                    <?php elseif ($active_tab === 'appointments'): ?>
                        <div class="card">
                            <div class="card-header">
                                <h2>Lịch hẹn</h2>
                                <p>Lịch hẹn khám bệnh</p>
                            </div>
                            <div class="card-body">
                                <div class="appointment-records">
                                    <div class="appointment-item">
                                        <div class="appointment-header">
                                            <h3>Tái khám</h3>
                                            <span class="appointment-date">05/05/2025 - 09:30</span>
                                        </div>
                                        <div class="appointment-details">
                                            <p><strong>Bác sĩ:</strong> Trần Văn C</p>
                                            <p><strong>Phòng:</strong> P205</p>
                                            <p><strong>Trạng thái:</strong> <span class="status-badge status-confirmed">Đã xác nhận</span></p>
                                        </div>
                                        <div class="appointment-actions">
                                            <a href="#" class="btn-small btn-outline">Hủy lịch hẹn</a>
                                            <a href="#" class="btn-small">Đổi lịch hẹn</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php require("Views/bacsi/layout/footer.php"); ?>
