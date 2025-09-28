<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC News - Quản lý Newsletter</title>
    <link rel="stylesheet" href="../../css/style.css">
</head>
<body>
    <!-- Admin Header -->
    <div class="admin-header">
        <h1>🎯 CÔNG CỤ QUẢN TRỊ TIN TỨC</h1>
        <p>Welcome <strong>Administrator</strong> - Quản trị viên</p>
    </div>

    <!-- Admin Navigation -->
    <nav class="admin-nav">
        <div class="container">
            <ul>
                <li><a href="../docgia/index.jsp">Trang chủ</a></li>
                <li><a href="dashboard.jsp">Dashboard</a></li>
                <li><a href="manage-articles.jsp">Tin tức</a></li>
                <li><a href="manage-categories.jsp">Loại tin</a></li>
                <li><a href=" manage-users.jsp">Người dùng</a></li>
                <li><a href="manage-newsletter.jsp">Newsletter</a></li>
                <li><a href="../../login.jsp">Đăng xuất</a></li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <div class="content">
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 2rem;">
                <h2>📧 Quản lý Newsletter</h2>
                <div>
                    <button class="btn btn-primary" onclick="sendNewsletter()">📤 Gửi Newsletter</button>
                    <button class="btn btn-success" onclick="exportEmails()">📊 Xuất danh sách</button>
                </div>
            </div>

            <!-- Newsletter Statistics -->
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1.5rem; margin-bottom: 2rem;">
                <div class="article-card">
                    <div class="article-content" style="text-align: center;">
                        <h3 style="color: #4a90e2; font-size: 2rem; margin-bottom: 0.5rem;">1,247</h3>
                        <p><strong>Tổng đăng ký</strong></p>
                        <small>+23 trong tuần</small>
                    </div>
                </div>
                
                <div class="article-card">
                    <div class="article-content" style="text-align: center;">
                        <h3 style="color: #27ae60; font-size: 2rem; margin-bottom: 0.5rem;">1,198</h3>
                        <p><strong>Đang hoạt động</strong></p>
                        <small>96% tổng số</small>
                    </div>
                </div>
                
                <div class="article-card">
                    <div class="article-content" style="text-align: center;">
                        <h3 style="color: #f39c12; font-size: 2rem; margin-bottom: 0.5rem;">49</h3>
                        <p><strong>Đã hủy</strong></p>
                        <small>4% tổng số</small>
                    </div>
                </div>
                
                <div class="article-card">
                    <div class="article-content" style="text-align: center;">
                        <h3 style="color: #e74c3c; font-size: 2rem; margin-bottom: 0.5rem;">15</h3>
                        <p><strong>Email gửi tuần này</strong></p>
                        <small>Tỷ lệ mở: 78%</small>
                    </div>
                </div>
            </div>

            <!-- Filter and Search -->
            <div class="article-card">
                <div class="article-content">
                    <h3>🔍 Tìm kiếm và lọc</h3>
                    <form style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem; align-items: end;">
                        <div class="form-group">
                            <label for="search">Tìm kiếm email:</label>
                            <input type="text" id="search" name="search" placeholder="Nhập địa chỉ email...">
                        </div>
                        
                        <div class="form-group">
                            <label for="status">Trạng thái:</label>
                            <select id="status" name="status">
                                <option value="">Tất cả</option>
                                <option value="active">Đang hoạt động</option>
                                <option value="inactive">Đã hủy</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="dateFrom">Từ ngày:</label>
                            <input type="date" id="dateFrom" name="dateFrom">
                        </div>
                        
                        <div class="form-group">
                            <label for="dateTo">Đến ngày:</label>
                            <input type="date" id="dateTo" name="dateTo">
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                        <button type="button" class="btn btn-warning" onclick="clearFilters()">Xóa bộ lọc</button>
                    </form>
                </div>
            </div>

            <!-- Newsletter Subscribers Table -->
            <div class="article-card">
                <div class="article-content">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1rem;">
                        <h3>📋 Danh sách đăng ký Newsletter (1,247 email)</h3>
                        <div>
                            <button class="btn btn-success" onclick="activateSelected()">✅ Kích hoạt đã chọn</button>
                            <button class="btn btn-warning" onclick="deactivateSelected()">⏸️ Hủy đã chọn</button>
                            <button class="btn btn-danger" onclick="deleteSelected()">🗑️ Xóa đã chọn</button>
                        </div>
                    </div>
                    
                    <div style="overflow-x: auto;">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" id="selectAll" onchange="toggleSelectAll()"></th>
                                    <th>Email</th>
                                    <th>Trạng thái</th>
                                    <th>Ngày đăng ký</th>
                                    <th>Lần gửi cuối</th>
                                    <th>Số email đã nhận</th>
                                    <th>Tỷ lệ mở</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="checkbox" name="emailIds" value="user1@gmail.com"></td>
                                    <td>user1@gmail.com</td>
                                    <td><span style="color: #27ae60; font-weight: bold;">Hoạt động</span></td>
                                    <td>15/01/2025</td>
                                    <td>28/09/2025</td>
                                    <td>45</td>
                                    <td>82%</td>
                                    <td>
                                        <button class="btn btn-primary" onclick="sendTestEmail('user1@gmail.com')">Gửi thử</button>
                                        <button class="btn btn-warning" onclick="deactivateEmail('user1@gmail.com')">Hủy</button>
                                        <button class="btn btn-danger" onclick="deleteEmail('user1@gmail.com')">Xóa</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="emailIds" value="nguyenvana@yahoo.com"></td>
                                    <td>nguyenvana@yahoo.com</td>
                                    <td><span style="color: #27ae60; font-weight: bold;">Hoạt động</span></td>
                                    <td>20/02/2025</td>
                                    <td>28/09/2025</td>
                                    <td>38</td>
                                    <td>75%</td>
                                    <td>
                                        <button class="btn btn-primary" onclick="sendTestEmail('nguyenvana@yahoo.com')">Gửi thử</button>
                                        <button class="btn btn-warning" onclick="deactivateEmail('nguyenvana@yahoo.com')">Hủy</button>
                                        <button class="btn btn-danger" onclick="deleteEmail('nguyenvana@yahoo.com')">Xóa</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="emailIds" value="tranthib@hotmail.com"></td>
                                    <td>tranthib@hotmail.com</td>
                                    <td><span style="color: #f39c12; font-weight: bold;">Đã hủy</span></td>
                                    <td>10/03/2025</td>
                                    <td>15/08/2025</td>
                                    <td>25</td>
                                    <td>68%</td>
                                    <td>
                                        <button class="btn btn-success" onclick="activateEmail('tranthib@hotmail.com')">Kích hoạt</button>
                                        <button class="btn btn-danger" onclick="deleteEmail('tranthib@hotmail.com')">Xóa</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="emailIds" value="levanc@gmail.com"></td>
                                    <td>levanc@gmail.com</td>
                                    <td><span style="color: #27ae60; font-weight: bold;">Hoạt động</span></td>
                                    <td>05/04/2025</td>
                                    <td>28/09/2025</td>
                                    <td>32</td>
                                    <td>91%</td>
                                    <td>
                                        <button class="btn btn-primary" onclick="sendTestEmail('levanc@gmail.com')">Gửi thử</button>
                                        <button class="btn btn-warning" onclick="deactivateEmail('levanc@gmail.com')">Hủy</button>
                                        <button class="btn btn-danger" onclick="deleteEmail('levanc@gmail.com')">Xóa</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="emailIds" value="phamthid@outlook.com"></td>
                                    <td>phamthid@outlook.com</td>
                                    <td><span style="color: #27ae60; font-weight: bold;">Hoạt động</span></td>
                                    <td>12/05/2025</td>
                                    <td>28/09/2025</td>
                                    <td>28</td>
                                    <td>79%</td>
                                    <td>
                                        <button class="btn btn-primary" onclick="sendTestEmail('phamthid@outlook.com')">Gửi thử</button>
                                        <button class="btn btn-warning" onclick="deactivateEmail('phamthid@outlook.com')">Hủy</button>
                                        <button class="btn btn-danger" onclick="deleteEmail('phamthid@outlook.com')">Xóa</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="emailIds" value="hoangvane@gmail.com"></td>
                                    <td>hoangvane@gmail.com</td>
                                    <td><span style="color: #27ae60; font-weight: bold;">Hoạt động</span></td>
                                    <td>18/06/2025</td>
                                    <td>28/09/2025</td>
                                    <td>22</td>
                                    <td>85%</td>
                                    <td>
                                        <button class="btn btn-primary" onclick="sendTestEmail('hoangvane@gmail.com')">Gửi thử</button>
                                        <button class="btn btn-warning" onclick="deactivateEmail('hoangvane@gmail.com')">Hủy</button>
                                        <button class="btn btn-danger" onclick="deleteEmail('hoangvane@gmail.com')">Xóa</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!-- Pagination -->
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 2rem;">
                        <div>
                            <span>Hiển thị 1-6 trong tổng số 1,247 email</span>
                        </div>
                        <div style="display: flex; gap: 0.5rem;">
                            <button class="btn btn-primary">« Đầu</button>
                            <button class="btn btn-primary">‹ Trước</button>
                            <button class="btn btn-success">1</button>
                            <button class="btn btn-primary">2</button>
                            <button class="btn btn-primary">3</button>
                            <button class="btn btn-primary">...</button>
                            <button class="btn btn-primary">208</button>
                            <button class="btn btn-primary">Sau ›</button>
                            <button class="btn btn-primary">Cuối »</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Newsletter Templates -->
            <div class="article-card">
                <div class="article-content">
                    <h3>📝 Mẫu Newsletter</h3>
                    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 1rem; margin-top: 1rem;">
                        <div style="border: 1px solid #ddd; padding: 1rem; border-radius: 4px;">
                            <h4>📰 Tin tức hàng ngày</h4>
                            <p>Gửi tổng hợp tin tức mới nhất trong ngày</p>
                            <button class="btn btn-primary" onclick="useTemplate('daily')">Sử dụng</button>
                        </div>
                        
                        <div style="border: 1px solid #ddd; padding: 1rem; border-radius: 4px;">
                            <h4>📅 Tin tức hàng tuần</h4>
                            <p>Gửi tổng hợp tin tức nổi bật trong tuần</p>
                            <button class="btn btn-primary" onclick="useTemplate('weekly')">Sử dụng</button>
                        </div>
                        
                        <div style="border: 1px solid #ddd; padding: 1rem; border-radius: 4px;">
                            <h4>🔥 Tin nóng</h4>
                            <p>Gửi tin tức khẩn cấp, quan trọng</p>
                            <button class="btn btn-danger" onclick="useTemplate('breaking')">Sử dụng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p>&copy; 2025 ABC News. Thiết kế bởi Java 3 Assignment.</p>
        </div>
    </footer>

    <script>
        function toggleSelectAll() {
            const selectAll = document.getElementById('selectAll');
            const checkboxes = document.querySelectorAll('input[name="emailIds"]');
            
            checkboxes.forEach(checkbox => {
                checkbox.checked = selectAll.checked;
            });
        }

        function sendNewsletter() {
            const subject = prompt('Nhập tiêu đề email:');
            if (subject) {
                if (confirm(`Bạn có chắc chắn muốn gửi newsletter "${subject}" đến 1,198 người đăng ký?`)) {
                    alert('Đang gửi newsletter... Quá trình này có thể mất vài phút.');
                    // Simulate sending process
                    setTimeout(() => {
                        alert('Đã gửi newsletter thành công đến 1,198 email!');
                    }, 2000);
                }
            }
        }

        function sendTestEmail(email) {
            if (confirm(`Bạn có muốn gửi email thử nghiệm đến ${email}?`)) {
                alert(`Đã gửi email thử nghiệm đến ${email}`);
            }
        }

        function activateEmail(email) {
            if (confirm(`Bạn có chắc chắn muốn kích hoạt lại ${email}?`)) {
                alert(`Đã kích hoạt ${email}`);
                location.reload();
            }
        }

        function deactivateEmail(email) {
            if (confirm(`Bạn có chắc chắn muốn hủy đăng ký ${email}?`)) {
                alert(`Đã hủy đăng ký ${email}`);
                location.reload();
            }
        }

        function deleteEmail(email) {
            if (confirm(`Bạn có chắc chắn muốn xóa ${email} khỏi danh sách?`)) {
                alert(`Đã xóa ${email}`);
                location.reload();
            }
        }

        function activateSelected() {
            const selected = document.querySelectorAll('input[name="emailIds"]:checked');
            if (selected.length === 0) {
                alert('Vui lòng chọn ít nhất một email!');
                return;
            }
            
            if (confirm(`Bạn có chắc chắn muốn kích hoạt ${selected.length} email đã chọn?`)) {
                alert(`Đã kích hoạt ${selected.length} email!`);
                location.reload();
            }
        }

        function deactivateSelected() {
            const selected = document.querySelectorAll('input[name="emailIds"]:checked');
            if (selected.length === 0) {
                alert('Vui lòng chọn ít nhất một email!');
                return;
            }
            
            if (confirm(`Bạn có chắc chắn muốn hủy đăng ký ${selected.length} email đã chọn?`)) {
                alert(`Đã hủy đăng ký ${selected.length} email!`);
                location.reload();
            }
        }

        function deleteSelected() {
            const selected = document.querySelectorAll('input[name="emailIds"]:checked');
            if (selected.length === 0) {
                alert('Vui lòng chọn ít nhất một email!');
                return;
            }
            
            if (confirm(`Bạn có chắc chắn muốn xóa ${selected.length} email đã chọn?`)) {
                alert(`Đã xóa ${selected.length} email!`);
                location.reload();
            }
        }

        function exportEmails() {
            alert('Đang xuất danh sách email... Tính năng sẽ được phát triển trong giai đoạn tiếp theo.');
        }

        function useTemplate(type) {
            let templateName = '';
            switch(type) {
                case 'daily': templateName = 'Tin tức hàng ngày'; break;
                case 'weekly': templateName = 'Tin tức hàng tuần'; break;
                case 'breaking': templateName = 'Tin nóng'; break;
            }
            
            if (confirm(`Bạn có muốn sử dụng mẫu "${templateName}" để tạo newsletter?`)) {
                alert(`Đang tạo newsletter với mẫu "${templateName}"...`);
                // Redirect to newsletter composer (would be implemented in later phases)
            }
        }

        function clearFilters() {
            document.getElementById('search').value = '';
            document.getElementById('status').value = '';
            document.getElementById('dateFrom').value = '';
            document.getElementById('dateTo').value = '';
        }
    </script>
</body>
</html>