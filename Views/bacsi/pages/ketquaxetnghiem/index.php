<?php
    include_once('Controllers/clichxetnghiem.php');
    include_once('Controllers/cbacsi.php');
    include_once('Controllers/cchuyenkhoa.php');
    $cchuyenkhoa = new cChuyenKhoa();
    $chuyenkhoa_list=$cchuyenkhoa->getAllChuyenKhoa();
    $cbacsi = new cBacSi();
    $clichxetnghiem = new cLichXetNghiem();
    $bacsi= $cbacsi->getBacSiByTenTK($_SESSION['user']['tentk']);
    $lichxetnghiem_list= $clichxetnghiem->get_lichxetnghiem_malichxetnghiem($bacsi['mabacsi'], $GET['id']);  
?>
<div class="container">
        <div class="content-header">
            <h1>Kết Quả Xét Nghiệm</h1>
            <button id="add-test-btn" class="btn-primary"><i class="fas fa-plus"></i> Thêm Kết Quả Mới</button>
        </div>   
        <div class="card">
            <div class="card-header">
                <h2>Tìm Kiếm Kết Quả Xét Nghiệm</h2>
            </div>
            <div class="card-body">
                <form class="search-form" method="GET" action="">
                    <div class="search-grid">
                        <div class="form-group">
                            <label for="search-patient">Bệnh nhân</label>
                            <select name="patient_id" id="search-patient">
                                <option value="">Tất cả bệnh nhân</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="search-test-type">Loại xét nghiệm</label>
                            <select name="test_type" id="search-test-type">
                                <option value="">Tất cả loại</option>
                                <option value="blood">Xét nghiệm máu</option>
                                <option value="urine">Xét nghiệm nước tiểu</option>
                                <option value="imaging">Chẩn đoán hình ảnh</option>
                                <option value="other">Khác</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="search-date-from">Từ ngày</label>
                            <input type="date" name="date_from" id="search-date-from">
                        </div>
                        
                        <div class="form-group">
                            <label for="search-date-to">Đến ngày</label>
                            <input type="date" name="date_to" id="search-date-to">
                        </div>
                        
                        <div class="form-group search-actions">
                            <button type="submit" class="btn-primary"><i class="fas fa-search"></i> Tìm kiếm</button>
                            <button type="reset" class="btn-outline"><i class="fas fa-redo"></i> Đặt lại</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
        <div class="card">
            <div class="card-header">
                <h2>Danh Sách Kết Quả Xét Nghiệm</h2>
            </div>
            <div class="card-body no-padding">
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>Mã XN</th>
                            <th>Bệnh nhân</th>
                            <th>Loại xét nghiệm</th>
                            <th>Ngày thực hiện</th>
                            <th>Bác sĩ chỉ định</th>
                            <th>Trạng thái</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                    </tbody>
                </table>
            </div>
        </div>
        
        
        <?php
        // Fetch test details
        try {
            $stmt = $pdo->prepare("
                SELECT xn.*, bn.tenbenhnhan, bn.ngaysinh, bn.gioitinh, bn.sodienthoai, bs.tenbacsi 
                FROM xetnghiem xn
                LEFT JOIN benhnhan bn ON xn.mabenhnhan = bn.mabenhnhan
                LEFT JOIN bacsi bs ON xn.mabacsi = bs.mabacsi
                WHERE xn.maxetnghiem = :test_id
            ");
            $stmt->bindParam(':test_id', $test_id);
            $stmt->execute();
            $test = $stmt->fetch();
            
            if (!$test) {
                echo "<div class='alert alert-danger'>Không tìm thấy kết quả xét nghiệm với ID: {$test_id}</div>";
                echo "<a href='test-results.php' class='btn-primary'><i class='fas fa-arrow-left'></i> Quay lại danh sách</a>";
            } else {
                // Format test type for display
                $test_type_display = '';
                switch ($test['loaixetnghiem']) {
                    case 'blood':
                        $test_type_display = 'Xét nghiệm máu';
                        break;
                    case 'urine':
                        $test_type_display = 'Xét nghiệm nước tiểu';
                        break;
                    case 'imaging':
                        $test_type_display = 'Chẩn đoán hình ảnh';
                        break;
                    default:
                        $test_type_display = 'Khác';
                }
                
                // Format status for display
                $status_class = '';
                switch ($test['trangthai']) {
                    case 'pending':
                        $status_class = 'status-pending';
                        $status_text = 'Chờ xử lý';
                        break;
                    case 'processing':
                        $status_class = 'status-processing';
                        $status_text = 'Đang xử lý';
                        break;
                    case 'completed':
                        $status_class = 'status-completed';
                        $status_text = 'Hoàn thành';
                        break;
                    default:
                        $status_class = 'status-default';
                        $status_text = $test['trangthai'];
                }
        ?>
        
        <div class="test-details-header">
            <a href="test-results.php" class="btn-outline"><i class="fas fa-arrow-left"></i> Quay lại danh sách</a>
            <div class="test-actions">
                <button class="btn-outline" onclick="printTestResult()"><i class="fas fa-print"></i> In kết quả</button>
                <button class="btn-primary edit-test" data-id="<?php echo $test['maxetnghiem']; ?>"><i class="fas fa-edit"></i> Chỉnh sửa</button>
            </div>
        </div>
        
        <div class="test-details-container">
            <div class="test-details-sidebar">
                <div class="card">
                    <div class="card-header">
                        <h2>Thông tin bệnh nhân</h2>
                    </div>
                    <div class="card-body">
                        <div class="patient-info">
                            <div class="patient-avatar">
                                <div class="avatar-placeholder">
                                    <?php 
                                    $initials = mb_substr($test['tenbenhnhan'], 0, 1, 'UTF-8');
                                    echo $initials;
                                    ?>
                                </div>
                            </div>
                            <h3><?php echo $test['tenbenhnhan']; ?></h3>
                            <div class="patient-details">
                                <p><strong>Ngày sinh:</strong> <?php echo date('d/m/Y', strtotime($test['ngaysinh'])); ?></p>
                                <p><strong>Giới tính:</strong> <?php echo $test['gioitinh']; ?></p>
                                <p><strong>Điện thoại:</strong> <?php echo $test['sodienthoai']; ?></p>
                                <p><strong>Mã bệnh nhân:</strong> <?php echo $test['mabenhnhan']; ?></p>
                            </div>
                            <a href="patient-details.php?id=<?php echo $test['mabenhnhan']; ?>" class="btn-outline btn-full"><i class="fas fa-user"></i> Xem hồ sơ bệnh nhân</a>
                        </div>
                    </div>
                </div>
                
                <div class="card">
                    <div class="card-header">
                        <h2>Thông tin xét nghiệm</h2>
                    </div>
                    <div class="card-body">
                        <div class="test-info">
                            <p><strong>Mã xét nghiệm:</strong> <?php echo $test['maxetnghiem']; ?></p>
                            <p><strong>Loại xét nghiệm:</strong> <?php echo $test_type_display; ?></p>
                            <p><strong>Ngày thực hiện:</strong> <?php echo date('d/m/Y', strtotime($test['ngayxetnghiem'])); ?></p>
                            <p><strong>Bác sĩ chỉ định:</strong> <?php echo $test['tenbacsi']; ?></p>
                            <p><strong>Trạng thái:</strong> <span class="status-badge <?php echo $status_class; ?>"><?php echo $status_text; ?></span></p>
                            <?php if (!empty($test['ngayketqua'])): ?>
                            <p><strong>Ngày có kết quả:</strong> <?php echo date('d/m/Y', strtotime($test['ngayketqua'])); ?></p>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="test-details-content">
                <div class="card">
                    <div class="card-header">
                        <h2>Kết quả xét nghiệm</h2>
                    </div>
                    <div class="card-body">
                        <div id="test-result-content">
                            <?php if ($test['loaixetnghiem'] == 'blood'): ?>
                            <!-- Blood test results -->
                            <table class="result-table">
                                <thead>
                                    <tr>
                                        <th>Chỉ số</th>
                                        <th>Kết quả</th>
                                        <th>Đơn vị</th>
                                        <th>Giá trị tham chiếu</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    // Parse JSON results if available
                                    $results = json_decode($test['ketqua'], true);
                                    if (is_array($results)) {
                                        foreach ($results as $item) {
                                            $abnormal = '';
                                            if (isset($item['is_abnormal']) && $item['is_abnormal']) {
                                                $abnormal = 'class="abnormal"';
                                            }
                                            echo "<tr {$abnormal}>";
                                            echo "<td>{$item['name']}</td>";
                                            echo "<td>{$item['value']}</td>";
                                            echo "<td>{$item['unit']}</td>";
                                            echo "<td>{$item['reference']}</td>";
                                            echo "</tr>";
                                        }
                                    } else {
                                        // Sample data if no JSON
                                        echo "<tr>";
                                        echo "<td>Hồng cầu (RBC)</td>";
                                        echo "<td>5.2</td>";
                                        echo "<td>10^6/uL</td>";
                                        echo "<td>4.2 - 5.4</td>";
                                        echo "</tr>";
                                        echo "<tr>";
                                        echo "<td>Bạch cầu (WBC)</td>";
                                        echo "<td>8.5</td>";
                                        echo "<td>10^3/uL</td>";
                                        echo "<td>4.0 - 10.0</td>";
                                        echo "</tr>";
                                        echo "<tr class='abnormal'>";
                                        echo "<td>Tiểu cầu (PLT)</td>";
                                        echo "<td>380</td>";
                                        echo "<td>10^3/uL</td>";
                                        echo "<td>150 - 350</td>";
                                        echo "</tr>";
                                        echo "<tr>";
                                        echo "<td>Huyết sắc tố (HGB)</td>";
                                        echo "<td>14.5</td>";
                                        echo "<td>g/dL</td>";
                                        echo "<td>12.0 - 16.0</td>";
                                        echo "</tr>";
                                        echo "<tr>";
                                        echo "<td>Hematocrit (HCT)</td>";
                                        echo "<td>42</td>";
                                        echo "<td>%</td>";
                                        echo "<td>37 - 47</td>";
                                        echo "</tr>";
                                    }
                                    ?>
                                </tbody>
                            </table>
                            <?php elseif ($test['loaixetnghiem'] == 'urine'): ?>
                            <!-- Urine test results -->
                            <table class="result-table">
                                <thead>
                                    <tr>
                                        <th>Chỉ số</th>
                                        <th>Kết quả</th>
                                        <th>Giá trị tham chiếu</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Màu sắc</td>
                                        <td>Vàng nhạt</td>
                                        <td>Vàng nhạt</td>
                                    </tr>
                                    <tr>
                                        <td>Độ trong</td>
                                        <td>Trong</td>
                                        <td>Trong</td>
                                    </tr>
                                    <tr>
                                        <td>pH</td>
                                        <td>6.0</td>
                                        <td>4.5 - 8.0</td>
                                    </tr>
                                    <tr>
                                        <td>Tỷ trọng</td>
                                        <td>1.020</td>
                                        <td>1.005 - 1.030</td>
                                    </tr>
                                    <tr class="abnormal">
                                        <td>Protein</td>
                                        <td>Dương tính (+)</td>
                                        <td>Âm tính</td>
                                    </tr>
                                    <tr>
                                        <td>Glucose</td>
                                        <td>Âm tính</td>
                                        <td>Âm tính</td>
                                    </tr>
                                    <tr>
                                        <td>Ketone</td>
                                        <td>Âm tính</td>
                                        <td>Âm tính</td>
                                    </tr>
                                </tbody>
                            </table>
                            <?php elseif ($test['loaixetnghiem'] == 'imaging'): ?>
                            <!-- Imaging test results -->
                            <div class="imaging-results">
                                <div class="imaging-preview">
                                    <img src="assets/images/sample-xray.jpg" alt="X-ray Image">
                                </div>
                                <div class="imaging-description">
                                    <h3>Kết quả chẩn đoán hình ảnh</h3>
                                    <p>Chụp X-quang ngực thẳng và nghiêng:</p>
                                    <ul>
                                        <li>Hình ảnh tim phổi bình thường</li>
                                        <li>Không có dấu hiệu tổn thương nhu mô phổi</li>
                                        <li>Không có dấu hiệu tràn dịch màng phổi</li>
                                        <li>Không có dấu hiệu tràn khí màng phổi</li>
                                        <li>Bóng tim không to</li>
                                    </ul>
                                    <p><strong>Kết luận:</strong> Hình ảnh X-quang ngực trong giới hạn bình thường.</p>
                                </div>
                            </div>
                            <?php else: ?>
                            <div class="no-results">
                                <p>Chưa có kết quả chi tiết cho xét nghiệm này.</p>
                            </div>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
                
                <div class="card">
                    <div class="card-header">
                        <h2>Nhận xét và kết luận</h2>
                    </div>
                    <div class="card-body">
                        <div class="test-conclusion">
                            <?php if (!empty($test['ketluan'])): ?>
                            <p><?php echo nl2br($test['ketluan']); ?></p>
                            <?php else: ?>
                            <p><em>Chưa có kết luận cho xét nghiệm này.</em></p>
                            <?php endif; ?>
                        </div>
                        
                        <?php if (!empty($test['ghichu'])): ?>
                        <div class="test-notes">
                            <h3>Ghi chú</h3>
                            <p><?php echo nl2br($test['ghichu']); ?></p>
                        </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
        
        <?php
            } // End of test details display
        } catch (PDOException $e) {
            echo "<div class='alert alert-danger'>Lỗi: " . $e->getMessage() . "</div>";
            echo "<a href='test-results.php' class='btn-primary'><i class='fas fa-arrow-left'></i> Quay lại danh sách</a>";
        }
        ?>
    </div>
    
    <!-- Modal thêm/sửa kết quả xét nghiệm -->
    <div id="test-modal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2 id="modal-title">Thêm Kết Quả Xét Nghiệm Mới</h2>
                <span class="close">&times;</span>
            </div>
            <div class="modal-body">
                <form id="test-form">
                    <input type="hidden" id="test-id" name="test_id">
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label for="test-patient">Bệnh nhân</label>
                            <select id="test-patient" name="patient_id" required>
                                <option value="">Chọn bệnh nhân</option>
                                <?php
                                // Fetch patients from database
                                try {
                                    $stmt = $pdo->prepare("SELECT mabenhnhan, tenbenhnhan FROM benhnhan ORDER BY tenbenhnhan");
                                    $stmt->execute();
                                    $patients = $stmt->fetchAll();
                                    
                                    foreach ($patients as $patient) {
                                        echo "<option value='{$patient['mabenhnhan']}'>{$patient['tenbenhnhan']}</option>";
                                    }
                                } catch (PDOException $e) {
                                    echo "<option value=''>Lỗi: Không thể tải danh sách bệnh nhân</option>";
                                }
                                ?>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="test-doctor">Bác sĩ chỉ định</label>
                            <select id="test-doctor" name="doctor_id" required>
                                <option value="">Chọn bác sĩ</option>
                                <?php
                                // Fetch doctors from database
                                try {
                                    $stmt = $pdo->prepare("SELECT mabacsi, tenbacsi FROM bacsi ORDER BY tenbacsi");
                                    $stmt->execute();
                                    $doctors = $stmt->fetchAll();
                                    
                                    foreach ($doctors as $doctor) {
                                        echo "<option value='{$doctor['mabacsi']}'>{$doctor['tenbacsi']}</option>";
                                    }
                                } catch (PDOException $e) {
                                    echo "<option value=''>Lỗi: Không thể tải danh sách bác sĩ</option>";
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label for="test-type">Loại xét nghiệm</label>
                            <select id="test-type" name="test_type" required>
                                <option value="">Chọn loại xét nghiệm</option>
                                <option value="blood">Xét nghiệm máu</option>
                                <option value="urine">Xét nghiệm nước tiểu</option>
                                <option value="imaging">Chẩn đoán hình ảnh</option>
                                <option value="other">Khác</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="test-date">Ngày thực hiện</label>
                            <input type="date" id="test-date" name="test_date" required>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label for="test-result-date">Ngày có kết quả</label>
                            <input type="date" id="test-result-date" name="result_date">
                        </div>
                        
                        <div class="form-group">
                            <label for="test-status">Trạng thái</label>
                            <select id="test-status" name="test_status" required>
                                <option value="pending">Chờ xử lý</option>
                                <option value="processing">Đang xử lý</option>
                                <option value="completed">Hoàn thành</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="test-results">Kết quả xét nghiệm</label>
                        <textarea id="test-results" name="test_results" rows="5"></textarea>
                        <p class="form-hint">Nhập kết quả xét nghiệm chi tiết hoặc tải lên file kết quả.</p>
                    </div>
                    
                    <div class="form-group">
                        <label for="test-conclusion">Kết luận</label>
                        <textarea id="test-conclusion" name="test_conclusion" rows="3"></textarea>
                    </div>
                    
                    <div class="form-group">
                        <label for="test-notes">Ghi chú</label>
                        <textarea id="test-notes" name="test_notes" rows="2"></textarea>
                    </div>
                    
                    <div class="form-group">
                        <label for="test-file">Tải lên file kết quả (nếu có)</label>
                        <input type="file" id="test-file" name="test_file">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-outline" id="cancel-test">Hủy</button>
                <button type="button" class="btn-primary" id="save-test">Lưu</button>
            </div>
        </div>
    </div>
