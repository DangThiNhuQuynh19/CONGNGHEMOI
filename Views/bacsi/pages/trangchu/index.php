
    <div class="container">
        <div class="dashboard">
            <div class="notification-panel">
                <h3>Chào mừng trở lại, <?php echo "bác sĩ ".$bacsi['hoten'] ?? 'Bác sĩ'; ?>!</h3>
                <p>Bạn có lịch hẹn sắp tới với bệnh nhân Nguyễn Văn A</p>
                <div class="notification-details">
                    <div class="notification-detail">
                        <i class="fas fa-calendar"></i>
                        <span>24/04/2025</span>
                    </div>
                    <div class="notification-detail">
                        <i class="fas fa-clock"></i>
                        <span>9:00 AM - 9:35 AM</span>
                    </div>
                    <div class="notification-detail">
                        <i class="fas fa-map-marker-alt"></i>
                        <span>Phòng khám chuyên khoa, Hà Nội</span>
                    </div>
                </div>
                <div class="notification-actions">
                    <a href="#" class="btn-primary btn-small">Xem chi tiết</a>
                </div>
            </div>
            
            <div class="stats-container">
                <div class="stat-card">
                    <div class="stat-icon">
                        <a href="?action=benhnhan"><i class="fas fa-user-injured"></i></a>
                    </div>
                    <div class="stat-info">
                        <h3>Bệnh nhân hôm nay</h3>
                        <p class="stat-number">12</p>
                        <p class="stat-change positive"><i class="fas fa-arrow-up"></i> +2 so với hôm qua</p>
                    </div>
                </div>
                
                <div class="stat-card">
                    <div class="stat-icon">
                        <a href="?action=xetnghiem"><i class="fas fa-clipboard-list"></i></a>
                    </div>
                    <div class="stat-info">
                        <h3>Xét nghiệm chờ xử lý</h3>
                        <p class="stat-number">8</p>
                        <p class="stat-change negative"><i class="fas fa-arrow-down"></i> -3 so với hôm qua</p>
                    </div>
                </div>
                
                <div class="stat-card">
                    <div class="stat-icon">
                        <a href="?action=lichhen"><i class="fas fa-calendar-check"></i></a>
                    </div>
                    <div class="stat-info">
                        <h3>Lịch hẹn</h3>
                        <p class="stat-number">24</p>
                        <p class="stat-change">Trong tuần này</p>
                    </div>
                </div>
                
                <div class="stat-card">
                    <div class="stat-icon">
                        <a href="?action=tinnhan"> <i class="fas fa-comment-medical"></i></a>
                    </div>
                    <div class="stat-info">
                        <h3>Tin nhắn mới</h3>
                        <p class="stat-number">5</p>
                        <p class="stat-change positive">+2 trong 24 giờ qua</p>
                    </div>
                </div>
            </div>
            
            <div class="dashboard-content">
                <div class="appointments-section">
                    <h2>Lịch hẹn hôm nay</h2>
                    <div class="appointment-list">
                        <?php
                        // Normally this would come from a database
                        $appointments = [
                            ['patient' => 'Nguyễn Văn A', 'type' => 'Khám tổng quát', 'time' => '10:30'],
                            ['patient' => 'Trần Thị B', 'type' => 'Tái khám', 'time' => '11:15'],
                            ['patient' => 'Lê Văn C', 'type' => 'Khám chuyên khoa', 'time' => '14:00']
                        ];
                        
                        foreach ($appointments as $appointment) {
                            echo '<div class="appointment-item">';
                            echo '<div class="appointment-icon"><i class="fas fa-user"></i></div>';
                            echo '<div class="appointment-details">';
                            echo '<h4>' . $appointment['patient'] . '</h4>';
                            echo '<p>' . $appointment['type'] . ' - ' . $appointment['time'] . '</p>';
                            echo '</div>';
                            echo '<a href="#" class="btn-primary btn-small">Chi tiết</a>';
                            echo '</div>';
                        }
                        ?>
                    </div>
                </div>
                
                <div class="tests-section">
                    <h2>Xét nghiệm gần đây</h2>
                    <div class="test-list">
                        <?php
                        // Normally this would come from a database
                        $tests = [
                            ['patient' => 'Trần Thị B', 'type' => 'Xét nghiệm máu', 'date' => '28/04/2025'],
                            ['patient' => 'Nguyễn Văn A', 'type' => 'X-quang ngực', 'date' => '27/04/2025'],
                            ['patient' => 'Phạm Văn D', 'type' => 'Siêu âm', 'date' => '26/04/2025']
                        ];
                        
                        foreach ($tests as $test) {
                            echo '<div class="test-item">';
                            echo '<div class="test-icon"><i class="fas fa-file-medical"></i></div>';
                            echo '<div class="test-details">';
                            echo '<h4>' . $test['patient'] . '</h4>';
                            echo '<p>' . $test['type'] . ' - ' . $test['date'] . '</p>';
                            echo '</div>';
                            echo '<a href="?action=ketquaxetnghiem" class="btn-primary btn-small">Xem kết quả</a>';
                            echo '</div>';
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php require("Views/bacsi/layout/footer.php"); ?>