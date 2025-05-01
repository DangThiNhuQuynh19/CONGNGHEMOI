<?php $active_conversation = $_GET['conversation'] ?? 'conv1'; ?>
<div class="container">
    <div class="messages-container">
        <div class="conversations-sidebar">
            <div class="search-container">
                <div class="search-input">
                    <i class="fas fa-search"></i>
                    <input type="text" placeholder="Tìm kiếm tin nhắn...">
                </div>
            </div>
            
            <div class="conversations-list">
                <?php
                // Normally this would come from a database
                $conversations = [
                    ['id' => 'conv1', 'name' => 'Nguyễn Văn A', 'last_message' => 'Xin chào bác sĩ, tôi cần hỏi về kết quả xét nghiệm...', 'time' => 'Vừa xong', 'unread' => true],
                    ['id' => 'conv2', 'name' => 'Trần Thị B', 'last_message' => 'Cảm ơn bác sĩ đã tư vấn cho tôi...', 'time' => '1 giờ trước', 'unread' => false],
                    ['id' => 'conv3', 'name' => 'Lê Văn C', 'last_message' => 'Tôi sẽ đến tái khám vào ngày mai...', 'time' => '2 giờ trước', 'unread' => false],
                    ['id' => 'conv4', 'name' => 'Phạm Thị D', 'last_message' => 'Bác sĩ có thể cho tôi biết kết quả không?', 'time' => '3 giờ trước', 'unread' => false],
                    ['id' => 'conv5', 'name' => 'Hoàng Văn E', 'last_message' => 'Tôi đã uống thuốc theo đơn của bác sĩ...', 'time' => '4 giờ trước', 'unread' => false]
                ];
                
                foreach ($conversations as $conversation) {
                    $activeClass = $conversation['id'] === $active_conversation ? 'active' : '';
                    $unreadClass = $conversation['unread'] ? 'unread' : '';
                    
                    echo '<a href="?action=tinnhan&conversation=' . $conversation['id'] . '" class="conversation-item ' . $activeClass . ' ' . $unreadClass . '">';
                    echo '<div class="conversation-avatar">';
                    echo '<div class="avatar-placeholder">' . substr($conversation['name'], 0, 2) . '</div>';
                    echo '</div>';
                    echo '<div class="conversation-info">';
                    echo '<div class="conversation-name">' . $conversation['name'] . '</div>';
                    echo '<div class="conversation-preview">' . $conversation['last_message'] . '</div>';
                    echo '</div>';
                    echo '<div class="conversation-time">' . $conversation['time'] . '</div>';
                    echo '</a>';
                }
                ?>
            </div>
        </div>
        
        <div class="message-content">
            <?php
            // Find active conversation
            $active_conv = null;
            foreach ($conversations as $conv) {
                if ($conv['id'] === $active_conversation ) {
                    $active_conv = $conv;
                    break;
                }
            }
            
            if ($active_conv):
            ?>
            <div class="message-header">
                <div class="message-header-info">
                    <div class="conversation-avatar">
                        <div class="avatar-placeholder"><?php echo substr($active_conv['name'], 0, 2); ?></div>
                    </div>
                    <div>
                        <div class="conversation-name"><?php echo $active_conv['name']; ?></div>
                        <div class="conversation-status">Trực tuyến</div>
                    </div>
                </div>
            </div>
            
            <div class="message-body">
                <?php if ($active_conversation === 'conv1'): ?>
                    <div class="message-bubble received">
                        <div class="message-avatar">
                            <div class="avatar-placeholder">NVA</div>
                        </div>
                        <div class="message-content">
                            <div class="message-text">
                                Xin chào bác sĩ, tôi cần hỏi về kết quả xét nghiệm máu của tôi. Tôi thấy có chỉ số bạch cầu cao hơn bình thường, điều này có đáng lo ngại không?
                            </div>
                            <div class="message-time">10:30 AM</div>
                        </div>
                    </div>
                    
                    <div class="message-bubble sent">
                        <div class="message-content">
                            <div class="message-text">
                                Chào anh Nguyễn Văn A, tôi đã xem kết quả xét nghiệm của anh. Chỉ số bạch cầu cao có thể do nhiều nguyên nhân, bao gồm cả nhiễm trùng hoặc viêm nhiễm. Tuy nhiên, mức độ tăng của anh không quá cao để đáng lo ngại.
                            </div>
                            <div class="message-time">10:32 AM</div>
                        </div>
                    </div>
                    
                    <div class="message-bubble sent">
                        <div class="message-content">
                            <div class="message-text">
                                Tôi khuyên anh nên theo dõi thêm và tái khám sau 2 tuần để kiểm tra lại. Trong thời gian này, anh nên nghỉ ngơi đầy đủ và uống nhiều nước.
                            </div>
                            <div class="message-time">10:33 AM</div>
                        </div>
                    </div>
                    
                    <div class="message-bubble received">
                        <div class="message-avatar">
                            <div class="avatar-placeholder">NVA</div>
                        </div>
                        <div class="message-content">
                            <div class="message-text">
                                Cảm ơn bác sĩ. Tôi sẽ làm theo lời khuyên của bác sĩ. Tôi có thể đặt lịch tái khám vào ngày 15/05 được không?
                            </div>
                            <div class="message-time">10:35 AM</div>
                        </div>
                    </div>
                <?php else: ?>
                    <div class="message-bubble received">
                        <div class="message-avatar">
                            <div class="avatar-placeholder"><?php echo substr($active_conv['name'], 0, 2); ?></div>
                        </div>
                        <div class="message-content">
                            <div class="message-text">
                                <?php echo $active_conv['last_message']; ?>
                            </div>
                            <div class="message-time"><?php echo $active_conv['time']; ?></div>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
            
            <div class="message-footer">
                <form class="message-form">
                    <input type="text" placeholder="Nhập tin nhắn..." class="message-input">
                    <button type="submit" class="btn-icon send-button">
                        <i class="fas fa-paper-plane"></i>
                    </button>
                </form>
            </div>
            <?php else: ?>
            <div class="no-conversation">
                <div class="no-conversation-icon">
                    <i class="fas fa-comments"></i>
                </div>
                <p>Chọn một cuộc trò chuyện để bắt đầu</p>
            </div>
            <?php endif; ?>
        </div>
    </div>
</div>
<?php require("Views/bacsi/layout/footer.php"); ?>
