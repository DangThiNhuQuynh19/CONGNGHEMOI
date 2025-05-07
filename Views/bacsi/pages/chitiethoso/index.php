<?php


// Giả lập dữ liệu hồ sơ bệnh án (trong thực tế sẽ lấy từ database)
function getMedicalRecord($id) {
    // Thông tin bệnh nhân
    $patientInfo = [
        "name" => "Nguyễn Văn A",
        "id" => "BN123456",
        "dob" => "01/01/1980",
        "gender" => "Nam",
        "phone" => "0912345678",
        "address" => "123 Đường ABC, Quận XYZ, TP. Hồ Chí Minh",
        "bloodType" => "O+",
        "allergies" => "Penicillin",
        "emergencyContact" => "Nguyễn Thị B (Vợ) - 0987654321",
        "insurance" => "BHYT12345678",
        "insuranceProvider" => "Bảo hiểm Y tế Việt Nam"
    ];

    // Thông tin hồ sơ bệnh án
    $recordInfo = [
        "recordId" => "BA" . $id . "2023",
        "admissionDate" => "10/06/2023",
        "dischargeDate" => "15/06/2023",
        "department" => "Khoa Nội Tổng Quát",
        "attendingDoctor" => "BS. Trần Văn B",
        "status" => "completed", // completed, active, pending
        "type" => "Nội trú",
        "roomNumber" => "304B",
        "bedNumber" => "12",
        "chiefComplaint" => "Đau bụng dữ dội, buồn nôn và sốt cao"
    ];

    // Chẩn đoán và điều trị
    $diagnosis = [
        "primaryDiagnosis" => "Viêm ruột thừa cấp tính",
        "secondaryDiagnosis" => "Rối loạn điện giải nhẹ",
        "icd10" => "K35.80",
        "treatmentPlan" => "Phẫu thuật cắt ruột thừa nội soi, điều trị kháng sinh và theo dõi sau mổ",
        "prognosis" => "Tốt, dự kiến phục hồi hoàn toàn trong vòng 2 tuần"
    ];

    // Dấu hiệu sinh tồn
    $vitalSigns = [
        [
            "date" => "10/06/2023 08:30",
            "temperature" => "38.5",
            "heartRate" => "95",
            "bloodPressure" => "130/85",
            "respiratoryRate" => "18",
            "oxygenSaturation" => "98",
            "pain" => "7/10"
        ],
        [
            "date" => "11/06/2023 08:30",
            "temperature" => "37.8",
            "heartRate" => "88",
            "bloodPressure" => "125/80",
            "respiratoryRate" => "16",
            "oxygenSaturation" => "99",
            "pain" => "5/10"
        ],
        [
            "date" => "12/06/2023 08:30",
            "temperature" => "37.2",
            "heartRate" => "82",
            "bloodPressure" => "120/80",
            "respiratoryRate" => "14",
            "oxygenSaturation" => "99",
            "pain" => "3/10"
        ],
        [
            "date" => "13/06/2023 08:30",
            "temperature" => "36.8",
            "heartRate" => "78",
            "bloodPressure" => "118/75",
            "respiratoryRate" => "14",
            "oxygenSaturation" => "99",
            "pain" => "2/10"
        ],
        [
            "date" => "14/06/2023 08:30",
            "temperature" => "36.6",
            "heartRate" => "72",
            "bloodPressure" => "115/75",
            "respiratoryRate" => "14",
            "oxygenSaturation" => "99",
            "pain" => "1/10"
        ]
    ];

    // Thuốc điều trị
    $medications = [
        [
            "name" => "Ceftriaxone",
            "dosage" => "1g",
            "route" => "Tiêm tĩnh mạch",
            "frequency" => "12 giờ/lần",
            "startDate" => "10/06/2023",
            "endDate" => "14/06/2023",
            "status" => "completed"
        ],
        [
            "name" => "Metronidazole",
            "dosage" => "500mg",
            "route" => "Tiêm tĩnh mạch",
            "frequency" => "8 giờ/lần",
            "startDate" => "10/06/2023",
            "endDate" => "14/06/2023",
            "status" => "completed"
        ],
        [
            "name" => "Paracetamol",
            "dosage" => "500mg",
            "route" => "Uống",
            "frequency" => "6 giờ/lần khi cần",
            "startDate" => "10/06/2023",
            "endDate" => "15/06/2023",
            "status" => "completed"
        ],
        [
            "name" => "Ketorolac",
            "dosage" => "30mg",
            "route" => "Tiêm bắp",
            "frequency" => "8 giờ/lần khi đau",
            "startDate" => "10/06/2023",
            "endDate" => "12/06/2023",
            "status" => "completed"
        ]
    ];

    // Thủ thuật và phẫu thuật
    $procedures = [
        [
            "name" => "Phẫu thuật cắt ruột thừa nội soi",
            "date" => "10/06/2023 14:30",
            "surgeon" => "BS. Lê Văn C",
            "assistants" => "BS. Phạm Thị D, BS. Hoàng Văn E",
            "anesthesiologist" => "BS. Trần Thị F",
            "anesthesiaType" => "Gây mê toàn thân",
            "duration" => "45 phút",
            "complications" => "Không",
            "notes" => "Phẫu thuật diễn ra suôn sẻ, ruột thừa viêm cấp tính đã được cắt bỏ hoàn toàn."
        ]
    ];

    // Xét nghiệm
    $labTests = [
        [
            "name" => "Công thức máu",
            "date" => "10/06/2023 09:15",
            "results" => [
                ["test" => "Bạch cầu (WBC)", "result" => "15.2", "unit" => "10^3/uL", "normalRange" => "4.0 - 10.0", "status" => "high"],
                ["test" => "Hồng cầu (RBC)", "result" => "4.8", "unit" => "10^6/uL", "normalRange" => "4.5 - 5.9", "status" => "normal"],
                ["test" => "Hemoglobin (HGB)", "result" => "14.2", "unit" => "g/dL", "normalRange" => "13.0 - 17.0", "status" => "normal"],
                ["test" => "Tiểu cầu (PLT)", "result" => "280", "unit" => "10^3/uL", "normalRange" => "150 - 450", "status" => "normal"]
            ]
        ],
        [
            "name" => "Sinh hóa máu",
            "date" => "10/06/2023 09:30",
            "results" => [
                ["test" => "CRP", "result" => "85", "unit" => "mg/L", "normalRange" => "< 5", "status" => "high"],
                ["test" => "Glucose", "result" => "110", "unit" => "mg/dL", "normalRange" => "70 - 100", "status" => "high"],
                ["test" => "Creatinine", "result" => "0.9", "unit" => "mg/dL", "normalRange" => "0.7 - 1.3", "status" => "normal"]
            ]
        ]
    ];

    // Chẩn đoán hình ảnh
    $imaging = [
        [
            "name" => "Siêu âm ổ bụng",
            "date" => "10/06/2023 10:00",
            "radiologist" => "BS. Nguyễn Văn G",
            "findings" => "Ruột thừa dày 10mm, không nén được, tăng sinh mạch, có dịch quanh ruột thừa.",
            "impression" => "Viêm ruột thừa cấp tính.",
            "recommendations" => "Đề nghị hội chẩn ngoại khoa."
        ],
        [
            "name" => "X-quang bụng không chuẩn bị",
            "date" => "10/06/2023 09:45",
            "radiologist" => "BS. Nguyễn Văn G",
            "findings" => "Không thấy hơi tự do dưới cơ hoành, không có dấu hiệu tắc ruột.",
            "impression" => "Không có dấu hiệu thủng tạng rỗng hay tắc ruột.",
            "recommendations" => "Không có."
        ]
    ];

    // Ghi chú của bác sĩ
    $doctorNotes = [
        [
            "date" => "10/06/2023 08:45",
            "doctor" => "BS. Trần Văn B",
            "note" => "Bệnh nhân nhập viện với triệu chứng đau bụng vùng hạ vị phải, khởi phát từ khoảng 12 giờ trước. Đau tăng dần, kèm buồn nôn và sốt. Khám thấy điểm đau McBurney rõ, phản ứng thành bụng (+), dấu hiệu Blumberg (+). Chỉ định xét nghiệm máu, siêu âm ổ bụng và hội chẩn ngoại khoa."
        ],
        [
            "date" => "10/06/2023 11:30",
            "doctor" => "BS. Lê Văn C",
            "note" => "Hội chẩn ngoại khoa: Bệnh nhân có biểu hiện lâm sàng và cận lâm sàng phù hợp với viêm ruột thừa cấp tính. Chỉ định phẫu thuật cắt ruột thừa nội soi."
        ],
        [
            "date" => "10/06/2023 19:00",
            "doctor" => "BS. Lê Văn C",
            "note" => "Bệnh nhân đã được phẫu thuật cắt ruột thừa nội soi thành công. Ruột thừa viêm cấp tính, không có biến chứng. Bệnh nhân tỉnh táo, các dấu hiệu sinh tồn ổn định. Tiếp tục điều trị kháng sinh và giảm đau."
        ],
        [
            "date" => "12/06/2023 09:00",
            "doctor" => "BS. Trần Văn B",
            "note" => "Bệnh nhân tiến triển tốt, vết mổ khô, không có dấu hiệu nhiễm trùng. Đã có trung tiện. Giảm liều thuốc giảm đau."
        ],
        [
            "date" => "14/06/2023 09:00",
            "doctor" => "BS. Trần Văn B",
            "note" => "Bệnh nhân hồi phục tốt, vết mổ liền tốt, không sốt, đau ít. Có thể xuất viện vào ngày mai."
        ],
        [
            "date" => "15/06/2023 10:00",
            "doctor" => "BS. Trần Văn B",
            "note" => "Bệnh nhân đủ điều kiện xuất viện. Hướng dẫn chăm sóc vết mổ tại nhà, dấu hiệu cần tái khám ngay và lịch tái khám sau 1 tuần."
        ]
    ];

    // Chăm sóc điều dưỡng
    $nursingNotes = [
        [
            "date" => "10/06/2023 20:00",
            "nurse" => "ĐD. Phạm Thị H",
            "note" => "Bệnh nhân sau mổ 6 giờ, tỉnh táo, mạch 88 lần/phút, huyết áp 125/80 mmHg, nhiệt độ 37.5°C. Vết mổ khô, không chảy máu. Truyền dịch NaCl 0.9% 500ml, tốc độ 80 giọt/phút. Đã tiêm kháng sinh và giảm đau theo y lệnh."
        ],
        [
            "date" => "11/06/2023 08:00",
            "nurse" => "ĐD. Lê Thị I",
            "note" => "Bệnh nhân tỉnh táo, ăn cháo được, đau vết mổ ít. Mạch 82 lần/phút, huyết áp 120/80 mmHg, nhiệt độ 37.2°C. Vết mổ khô, không chảy máu. Đã thay băng vết mổ, sạch. Tiêm kháng sinh và giảm đau theo y lệnh."
        ],
        [
            "date" => "12/06/2023 08:00",
            "nurse" => "ĐD. Phạm Thị H",
            "note" => "Bệnh nhân tỉnh táo, ăn cháo và súp được, đi lại nhẹ nhàng được. Mạch 78 lần/phút, huyết áp 118/78 mmHg, nhiệt độ 36.8°C. Vết mổ khô, không chảy máu. Đã thay băng vết mổ, sạch. Tiêm kháng sinh theo y lệnh."
        ],
        [
            "date" => "13/06/2023 08:00",
            "nurse" => "ĐD. Lê Thị I",
            "note" => "Bệnh nhân tỉnh táo, ăn cơm nhẹ được, đi lại tốt. Mạch 76 lần/phút, huyết áp 115/75 mmHg, nhiệt độ 36.6°C. Vết mổ khô, liền tốt. Đã thay băng vết mổ, sạch. Tiêm kháng sinh theo y lệnh."
        ],
        [
            "date" => "14/06/2023 08:00",
            "nurse" => "ĐD. Phạm Thị H",
            "note" => "Bệnh nhân tỉnh táo, ăn uống bình thường, đi lại tốt. Mạch 72 lần/phút, huyết áp 115/75 mmHg, nhiệt độ 36.6°C. Vết mổ khô, liền tốt. Đã thay băng vết mổ lần cuối, sạch. Ngưng kháng sinh theo y lệnh."
        ]
    ];

    // Hướng dẫn xuất viện
    $dischargeInstructions = [
        "medications" => [
            ["name" => "Amoxicillin + Acid Clavulanic", "dosage" => "625mg", "frequency" => "12 giờ/lần", "duration" => "5 ngày"],
            ["name" => "Paracetamol", "dosage" => "500mg", "frequency" => "6 giờ/lần khi cần", "duration" => "5 ngày"]
        ],
        "activity" => "Nghỉ ngơi tại nhà 1 tuần, tránh vận động mạnh và nâng vật nặng trong 4 tuần.",
        "diet" => "Ăn nhẹ, dễ tiêu trong 3 ngày đầu, sau đó có thể ăn bình thường.",
        "woundCare" => "Giữ vết mổ sạch và khô, không tắm trong 3 ngày đầu, sau đó có thể tắm nhưng không ngâm vết mổ trong nước.",
        "followUp" => "Tái khám sau 1 tuần tại Phòng khám Ngoại, mang theo đơn thuốc và giấy xuất viện.",
        "warning" => "Đến bệnh viện ngay nếu sốt cao, đau bụng dữ dội, vết mổ chảy máu hoặc có dịch, nôn mửa kéo dài."
    ];

    // Tài liệu đính kèm
    $attachments = [
        ["name" => "Phiếu phẫu thuật", "type" => "pdf", "date" => "10/06/2023"],
        ["name" => "Kết quả xét nghiệm máu", "type" => "pdf", "date" => "10/06/2023"],
        ["name" => "Hình ảnh siêu âm", "type" => "jpg", "date" => "10/06/2023"],
        ["name" => "Phim X-quang", "type" => "jpg", "date" => "10/06/2023"],
        ["name" => "Giấy ra viện", "type" => "pdf", "date" => "15/06/2023"]
    ];

    return [
        "patientInfo" => $patientInfo,
        "recordInfo" => $recordInfo,
        "diagnosis" => $diagnosis,
        "vitalSigns" => $vitalSigns,
        "medications" => $medications,
        "procedures" => $procedures,
        "labTests" => $labTests,
        "imaging" => $imaging,
        "doctorNotes" => $doctorNotes,
        "nursingNotes" => $nursingNotes,
        "dischargeInstructions" => $dischargeInstructions,
        "attachments" => $attachments
    ];
}

// Lấy ID từ tham số URL (trong thực tế)
$recordId = isset($_GET['id']) ? $_GET['id'] : 1;
$medicalRecord = getMedicalRecord($recordId);

// Hàm hiển thị trạng thái
function getStatusBadge($status) {
    switch ($status) {
        case 'completed':
            return '<span class="status-badge status-completed">Hoàn thành</span>';
        case 'active':
            return '<span class="status-badge status-processing">Đang điều trị</span>';
        case 'pending':
            return '<span class="status-badge status-pending">Chờ xử lý</span>';
        case 'high':
            return '<span class="status-badge status-high">Cao</span>';
        case 'normal':
            return '<span class="status-badge status-normal">Bình thường</span>';
        case 'low':
            return '<span class="status-badge status-low">Thấp</span>';
        default:
            return '<span class="status-badge">' . $status . '</span>';
    }
}
?>

    
    <!-- Main Content -->
    <main class="container">
        <!-- Page Header -->
        <div class="content-header">
            <div class="back-button">
                <a href="medical-records.php" class="btn-icon">
                    <i class="fas fa-arrow-left"></i>
                </a>
                <h1>Chi Tiết Hồ Sơ Bệnh Án</h1>
            </div>
            
            <div class="action-buttons">
                <a href="javascript:window.print()" class="btn-small">
                    <i class="fas fa-print"></i> In hồ sơ
                </a>
                <a href="#" class="btn-small">
                    <i class="fas fa-download"></i> Xuất PDF
                </a>
                <a href="edit-medical-record.php?id=<?php echo $recordId; ?>" class="btn-small">
                    <i class="fas fa-edit"></i> Chỉnh sửa
                </a>
            </div>
        </div>

        <!-- Record Summary Card -->
        <div class="card summary-card">
            <div class="card-header">
                <h2 class="summary-title">Tổng Quan Hồ Sơ Bệnh Án</h2>
                <div class="summary-date">
                    <i class="far fa-calendar-alt"></i>
                    <?php echo $medicalRecord['recordInfo']['admissionDate']; ?> - <?php echo $medicalRecord['recordInfo']['dischargeDate']; ?>
                </div>
            </div>
            
            <div class="card-body">
                <div class="summary-stat">
                    <div class="stat-value">
                        <i class="fas fa-stethoscope"></i>
                        <?php echo $medicalRecord['diagnosis']['primaryDiagnosis']; ?>
                    </div>
                    <div class="stat-label">Chẩn đoán chính</div>
                </div>
                
                <div class="summary-stat">
                    <div class="stat-value">
                        <i class="fas fa-procedures"></i>
                        <?php echo $medicalRecord['recordInfo']['type']; ?>
                    </div>
                    <div class="stat-label">Loại điều trị</div>
                </div>
                
                <div class="summary-stat">
                    <div class="stat-value">
                        <i class="fas fa-user-md"></i>
                        <?php echo $medicalRecord['recordInfo']['attendingDoctor']; ?>
                    </div>
                    <div class="stat-label">Bác sĩ điều trị</div>
                </div>
            </div>
        </div>

        <!-- Patient Information -->
        <div class="card">
            <div class="card-header">
                <h2 class="card-title">
                    <i class="fas fa-user-circle"></i>
                    Thông Tin Bệnh Nhân
                </h2>
            </div>
            <div class="card-body">
                <div class="patient-info">
                    <div>
                        <div class="patient-avatar">
                            <i class="fas fa-user"></i>
                        </div>
                        <h3 class="patient-name"><?php echo $medicalRecord['patientInfo']['name']; ?></h3>
                        <div class="patient-id"><?php echo $medicalRecord['patientInfo']['id']; ?></div>
                    </div>
                    
                    <div>
                        <div class="info-row">
                            <div class="info-label">Ngày sinh</div>
                            <div class="info-value"><?php echo $medicalRecord['patientInfo']['dob']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Giới tính</div>
                            <div class="info-value"><?php echo $medicalRecord['patientInfo']['gender']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Nhóm máu</div>
                            <div class="info-value"><?php echo $medicalRecord['patientInfo']['bloodType']; ?></div>
                        </div>
                    </div>
                    
                    <div>
                        <div class="info-row">
                            <div class="info-label">Số điện thoại</div>
                            <div class="info-value"><?php echo $medicalRecord['patientInfo']['phone']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Địa chỉ</div>
                            <div class="info-value"><?php echo $medicalRecord['patientInfo']['address']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Dị ứng</div>
                            <div class="info-value"><?php echo $medicalRecord['patientInfo']['allergies']; ?></div>
                        </div>
                    </div>
                    
                    <div>
                        <div class="info-row">
                            <div class="info-label">Liên hệ khẩn cấp</div>
                            <div class="info-value"><?php echo $medicalRecord['patientInfo']['emergencyContact']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Bảo hiểm y tế</div>
                            <div class="info-value"><?php echo $medicalRecord['patientInfo']['insurance']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Đơn vị BHYT</div>
                            <div class="info-value"><?php echo $medicalRecord['patientInfo']['insuranceProvider']; ?></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Record Information -->
        <div class="card">
            <div class="card-header">
                <h2 class="card-title">
                    <i class="fas fa-file-medical"></i>
                    Thông Tin Hồ Sơ
                </h2>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="info-row">
                            <div class="info-label">Mã hồ sơ</div>
                            <div class="info-value"><?php echo $medicalRecord['recordInfo']['recordId']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Ngày nhập viện</div>
                            <div class="info-value"><?php echo $medicalRecord['recordInfo']['admissionDate']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Ngày xuất viện</div>
                            <div class="info-value"><?php echo $medicalRecord['recordInfo']['dischargeDate']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Khoa phòng</div>
                            <div class="info-value"><?php echo $medicalRecord['recordInfo']['department']; ?></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="info-row">
                            <div class="info-label">Bác sĩ điều trị</div>
                            <div class="info-value"><?php echo $medicalRecord['recordInfo']['attendingDoctor']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Trạng thái</div>
                            <div class="info-value"><?php echo getStatusBadge($medicalRecord['recordInfo']['status']); ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Phòng/Giường</div>
                            <div class="info-value"><?php echo $medicalRecord['recordInfo']['roomNumber']; ?> / <?php echo $medicalRecord['recordInfo']['bedNumber']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Lý do vào viện</div>
                            <div class="info-value"><?php echo $medicalRecord['recordInfo']['chiefComplaint']; ?></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Tabs for Medical Record Details -->
        <div class="tabs">
            <div class="tab-header">
                <a href="#diagnosis" class="tab-link active" onclick="openTab(event, 'diagnosis')">Chẩn đoán & Điều trị</a>
                <a href="#vital-signs" class="tab-link" onclick="openTab(event, 'vital-signs')">Dấu hiệu sinh tồn</a>
                <a href="#medications" class="tab-link" onclick="openTab(event, 'medications')">Thuốc điều trị</a>
                <a href="#procedures" class="tab-link" onclick="openTab(event, 'procedures')">Phẫu thuật & Thủ thuật</a>
                <a href="#lab-tests" class="tab-link" onclick="openTab(event, 'lab-tests')">Xét nghiệm</a>
                <a href="#imaging" class="tab-link" onclick="openTab(event, 'imaging')">Chẩn đoán hình ảnh</a>
                <a href="#notes" class="tab-link" onclick="openTab(event, 'notes')">Ghi chú</a>
                <a href="#discharge" class="tab-link" onclick="openTab(event, 'discharge')">Hướng dẫn xuất viện</a>
                <a href="#attachments" class="tab-link" onclick="openTab(event, 'attachments')">Tài liệu đính kèm</a>
            </div>

            <!-- Diagnosis & Treatment Tab -->
            <div id="diagnosis" class="tab-content active">
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title">Chẩn đoán & Điều trị</h2>
                    </div>
                    <div class="card-body">
                        <div class="info-row">
                            <div class="info-label">Chẩn đoán chính</div>
                            <div class="info-value"><?php echo $medicalRecord['diagnosis']['primaryDiagnosis']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Chẩn đoán phụ</div>
                            <div class="info-value"><?php echo $medicalRecord['diagnosis']['secondaryDiagnosis']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Mã ICD-10</div>
                            <div class="info-value"><?php echo $medicalRecord['diagnosis']['icd10']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Kế hoạch điều trị</div>
                            <div class="info-value"><?php echo $medicalRecord['diagnosis']['treatmentPlan']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Tiên lượng</div>
                            <div class="info-value"><?php echo $medicalRecord['diagnosis']['prognosis']; ?></div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Vital Signs Tab -->
            <div id="vital-signs" class="tab-content">
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title">Dấu hiệu sinh tồn</h2>
                    </div>
                    <div class="card-body no-padding">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Thời gian</th>
                                    <th>Nhiệt độ (°C)</th>
                                    <th>Mạch (lần/phút)</th>
                                    <th>Huyết áp (mmHg)</th>
                                    <th>Nhịp thở (lần/phút)</th>
                                    <th>SpO2 (%)</th>
                                    <th>Đau (0-10)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($medicalRecord['vitalSigns'] as $vital): ?>
                                <tr>
                                    <td><?php echo $vital['date']; ?></td>
                                    <td><?php echo $vital['temperature']; ?></td>
                                    <td><?php echo $vital['heartRate']; ?></td>
                                    <td><?php echo $vital['bloodPressure']; ?></td>
                                    <td><?php echo $vital['respiratoryRate']; ?></td>
                                    <td><?php echo $vital['oxygenSaturation']; ?></td>
                                    <td><?php echo $vital['pain']; ?></td>
                                </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <!-- Medications Tab -->
            <div id="medications" class="tab-content">
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title">Thuốc điều trị</h2>
                    </div>
                    <div class="card-body no-padding">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Tên thuốc</th>
                                    <th>Liều lượng</th>
                                    <th>Đường dùng</th>
                                    <th>Tần suất</th>
                                    <th>Ngày bắt đầu</th>
                                    <th>Ngày kết thúc</th>
                                    <th>Trạng thái</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($medicalRecord['medications'] as $medication): ?>
                                <tr>
                                    <td><?php echo $medication['name']; ?></td>
                                    <td><?php echo $medication['dosage']; ?></td>
                                    <td><?php echo $medication['route']; ?></td>
                                    <td><?php echo $medication['frequency']; ?></td>
                                    <td><?php echo $medication['startDate']; ?></td>
                                    <td><?php echo $medication['endDate']; ?></td>
                                    <td><?php echo getStatusBadge($medication['status']); ?></td>
                                </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <!-- Procedures Tab -->
            <div id="procedures" class="tab-content">
                <?php foreach ($medicalRecord['procedures'] as $procedure): ?>
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title"><?php echo $procedure['name']; ?></h2>
                        <p><?php echo $procedure['date']; ?></p>
                    </div>
                    <div class="card-body">
                        <div class="info-row">
                            <div class="info-label">Phẫu thuật viên</div>
                            <div class="info-value"><?php echo $procedure['surgeon']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Phụ mổ</div>
                            <div class="info-value"><?php echo $procedure['assistants']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Bác sĩ gây mê</div>
                            <div class="info-value"><?php echo $procedure['anesthesiologist']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Loại gây mê</div>
                            <div class="info-value"><?php echo $procedure['anesthesiaType']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Thời gian</div>
                            <div class="info-value"><?php echo $procedure['duration']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Biến chứng</div>
                            <div class="info-value"><?php echo $procedure['complications']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Ghi chú</div>
                            <div class="info-value"><?php echo $procedure['notes']; ?></div>
                        </div>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>

            <!-- Lab Tests Tab -->
            <div id="lab-tests" class="tab-content">
                <?php foreach ($medicalRecord['labTests'] as $labTest): ?>
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title"><?php echo $labTest['name']; ?></h2>
                        <p><?php echo $labTest['date']; ?></p>
                    </div>
                    <div class="card-body no-padding">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Xét nghiệm</th>
                                    <th>Kết quả</th>
                                    <th>Đơn vị</th>
                                    <th>Giá trị tham chiếu</th>
                                    <th>Đánh giá</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($labTest['results'] as $result): ?>
                                <tr>
                                    <td><?php echo $result['test']; ?></td>
                                    <td><strong><?php echo $result['result']; ?></strong></td>
                                    <td><?php echo $result['unit']; ?></td>
                                    <td><?php echo $result['normalRange']; ?></td>
                                    <td><?php echo getStatusBadge($result['status']); ?></td>
                                </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>

            <!-- Imaging Tab -->
            <div id="imaging" class="tab-content">
                <?php foreach ($medicalRecord['imaging'] as $image): ?>
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title"><?php echo $image['name']; ?></h2>
                        <p><?php echo $image['date']; ?></p>
                    </div>
                    <div class="card-body">
                        <div class="info-row">
                            <div class="info-label">Bác sĩ chẩn đoán</div>
                            <div class="info-value"><?php echo $image['radiologist']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Phát hiện</div>
                            <div class="info-value"><?php echo $image['findings']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Kết luận</div>
                            <div class="info-value"><?php echo $image['impression']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Đề xuất</div>
                            <div class="info-value"><?php echo $image['recommendations']; ?></div>
                        </div>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>

            <!-- Notes Tab -->
            <div id="notes" class="tab-content">
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title">Ghi chú của bác sĩ</h2>
                    </div>
                    <div class="card-body">
                        <?php foreach ($medicalRecord['doctorNotes'] as $note): ?>
                        <div class="record-item">
                            <div class="record-header">
                                <h3><?php echo $note['doctor']; ?></h3>
                                <div class="record-date"><?php echo $note['date']; ?></div>
                            </div>
                            <div class="record-details">
                                <p><?php echo $note['note']; ?></p>
                            </div>
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>

                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title">Ghi chú điều dưỡng</h2>
                    </div>
                    <div class="card-body">
                        <?php foreach ($medicalRecord['nursingNotes'] as $note): ?>
                        <div class="record-item">
                            <div class="record-header">
                                <h3><?php echo $note['nurse']; ?></h3>
                                <div class="record-date"><?php echo $note['date']; ?></div>
                            </div>
                            <div class="record-details">
                                <p><?php echo $note['note']; ?></p>
                            </div>
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>

            <!-- Discharge Instructions Tab -->
            <div id="discharge" class="tab-content">
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title">Hướng dẫn xuất viện</h2>
                    </div>
                    <div class="card-body">
                        <h3>Thuốc kê toa</h3>
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Tên thuốc</th>
                                    <th>Liều lượng</th>
                                    <th>Tần suất</th>
                                    <th>Thời gian dùng</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($medicalRecord['dischargeInstructions']['medications'] as $medication): ?>
                                <tr>
                                    <td><?php echo $medication['name']; ?></td>
                                    <td><?php echo $medication['dosage']; ?></td>
                                    <td><?php echo $medication['frequency']; ?></td>
                                    <td><?php echo $medication['duration']; ?></td>
                                </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>

                        <div class="info-row">
                            <div class="info-label">Hoạt động</div>
                            <div class="info-value"><?php echo $medicalRecord['dischargeInstructions']['activity']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Chế độ ăn</div>
                            <div class="info-value"><?php echo $medicalRecord['dischargeInstructions']['diet']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Chăm sóc vết thương</div>
                            <div class="info-value"><?php echo $medicalRecord['dischargeInstructions']['woundCare']; ?></div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Tái khám</div>
                            <div class="info-value"><?php echo $medicalRecord['dischargeInstructions']['followUp']; ?></div>
                        </div>
                        
                        <div class="notification-panel">
                            <h3><i class="fas fa-exclamation-triangle"></i> Dấu hiệu cảnh báo</h3>
                            <p><?php echo $medicalRecord['dischargeInstructions']['warning']; ?></p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Attachments Tab -->
            <div id="attachments" class="tab-content">
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title">Tài liệu đính kèm</h2>
                    </div>
                    <div class="card-body">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Tên tài liệu</th>
                                    <th>Loại</th>
                                    <th>Ngày</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($medicalRecord['attachments'] as $attachment): ?>
                                <tr>
                                    <td><?php echo $attachment['name']; ?></td>
                                    <td>
                                        <?php if ($attachment['type'] == 'pdf'): ?>
                                            <i class="fas fa-file-pdf" style="color: #e74c3c;"></i> PDF
                                        <?php elseif ($attachment['type'] == 'jpg' || $attachment['type'] == 'png'): ?>
                                            <i class="fas fa-file-image" style="color: #3498db;"></i> Hình ảnh
                                        <?php else: ?>
                                            <i class="fas fa-file" style="color: #95a5a6;"></i> <?php echo strtoupper($attachment['type']); ?>
                                        <?php endif; ?>
                                    </td>
                                    <td><?php echo $attachment['date']; ?></td>
                                    <td class="actions">
                                        <a href="#" class="btn-small"><i class="fas fa-eye"></i> Xem</a>
                                        <a href="#" class="btn-small"><i class="fas fa-download"></i> Tải xuống</a>
                                    </td>
                                </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="main-footer">
        <div class="footer-content">
            <div class="copyright">
                &copy; <?php echo date('Y'); ?> Bệnh Viện Hạnh Phúc. Tất cả các quyền được bảo lưu.
            </div>
            <div class="footer-links">
                <a href="about.php">Về chúng tôi</a>
                <a href="privacy.php">Chính sách bảo mật</a>
                <a href="terms.php">Điều khoản sử dụng</a>
                <a href="contact.php">Liên hệ</a>
            </div>
        </div>
    </footer>

    <script>
        // Tab functionality
        function openTab(evt, tabId) {
            // Hide all tab content
            var tabContents = document.getElementsByClassName("tab-content");
            for (var i = 0; i < tabContents.length; i++) {
                tabContents[i].classList.remove("active");
            }
            
            // Remove active class from all tab links
            var tabLinks = document.getElementsByClassName("tab-link");
            for (var i = 0; i < tabLinks.length; i++) {
                tabLinks[i].classList.remove("active");
            }
            
            // Show the current tab and add active class to the button
            document.getElementById(tabId).classList.add("active");
            evt.currentTarget.classList.add("active");
        }

        // Initialize the first tab as active
        document.addEventListener("DOMContentLoaded", function() {
            // Already handled by the PHP code setting the first tab as active
        });
    </script>
</body>
</html>