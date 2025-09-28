<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ABC News - Dashboard Admin</title>
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
                    <li><a href="manage-users.jsp">Người dùng</a></li>
                    <li><a href="manage-newsletter.jsp">Newsletter</a></li>
                    <li><a href="../../login.jsp">Đăng xuất</a></li>
                </ul>
            </div>
        </nav>

        <!-- Main Content -->
        <div class="container">
            <div class="content">
                <h2>📊 Dashboard Quản trị</h2>

                <!-- Statistics Overview -->
                <div
                    style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1.5rem; margin-bottom: 2rem;">
                    <div class="article-card">
                        <div class="article-content" style="text-align: center;">
                            <h3 style="color: #4a90e2; font-size: 2.5rem; margin-bottom: 0.5rem;">156</h3>
                            <p><strong>Tổng bài viết</strong></p>
                            <small>+12 bài trong tuần</small>
                        </div>
                    </div>

                    <div class="article-card">
                        <div class="article-content" style="text-align: center;">
                            <h3 style="color: #27ae60; font-size: 2.5rem; margin-bottom: 0.5rem;">142</h3>
                            <p><strong>Đã xuất bản</strong></p>
                            <small>91% tổng số bài</small>
                        </div>
                    </div>

                    <div class="article-card">
                        <div class="article-content" style="text-align: center;">
                            <h3 style="color: #f39c12; font-size: 2.5rem; margin-bottom: 0.5rem;">14</h3>
                            <p><strong>Chờ duyệt</strong></p>
                            <small>Cần xem xét</small>
                        </div>
                    </div>

                    <div class="article-card">
                        <div class="article-content" style="text-align: center;">
                            <h3 style="color: #e74c3c; font-size: 2.5rem; margin-bottom: 0.5rem;">25</h3>
                            <p><strong>Người dùng</strong></p>
                            <small>18 phóng viên, 7 admin</small>
                        </div>
                    </div>

                    <div class="article-card">
                        <div class="article-content" style="text-align: center;">
                            <h3 style="color: #9b59b6; font-size: 2.5rem; margin-bottom: 0.5rem;">8</h3>
                            <p><strong>Chuyên mục</strong></p>
                            <small>Đang hoạt động</small>
                        </div>
                    </div>

                    <div class="article-card">
                        <div class="article-content" style="text-align: center;">
                            <h3 style="color: #1abc9c; font-size: 2.5rem; margin-bottom: 0.5rem;">1,247</h3>
                            <p><strong>Newsletter</strong></p>
                            <small>Đăng ký nhận tin</small>
                        </div>
                    </div>
                </div>

                <!-- Quick Actions -->
                <div class="article-card">
                    <div class="article-content">
                        <h3>⚡ Thao tác nhanh</h3>
                        <div
                            style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem; margin-top: 1rem;">
                            <a href="manage-articles.jsp" class="btn btn-primary">📰 Quản lý bài viết</a>
                            <a href="manage-users.jsp" class="btn btn-success">👥 Quản lý người dùng</a>
                            <a href="manage-categories.jsp" class="btn btn-warning">📂 Quản lý chuyên mục</a>
                            <a href="manage-newsletter.jsp" class="btn btn-info">📧 Quản lý Newsletter</a>
                        </div>
                    </div>
                </div>

                <!-- Recent Activities -->
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 2rem;">
                    <!-- Pending Articles -->
                    <div class="article-card">
                        <div class="article-content">
                            <h3>📝 Bài viết chờ duyệt (14)</h3>
                            <div style="max-height: 300px; overflow-y: auto;">
                                <table class="data-table">
                                    <thead>
                                        <tr>
                                            <th>Tiêu đề</th>
                                            <th>Tác giả</th>
                                            <th>Ngày gửi</th>
                                            <th>Thao tác</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Xu hướng công nghệ mới trong năm 2025</td>
                                            <td>Nguyễn Văn A</td>
                                            <td>28/09/2025</td>
                                            <td>
                                                <button class="btn btn-success"
                                                    onclick="approveArticle(19)">Duyệt</button>
                                                <button class="btn btn-danger" onclick="rejectArticle(19)">Từ
                                                    chối</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Phát triển kinh tế số tại Việt Nam</td>
                                            <td>Trần Thị B</td>
                                            <td>27/09/2025</td>
                                            <td>
                                                <button class="btn btn-success"
                                                    onclick="approveArticle(20)">Duyệt</button>
                                                <button class="btn btn-danger" onclick="rejectArticle(20)">Từ
                                                    chối</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Festival âm nhạc quốc tế 2025</td>
                                            <td>Lê Văn C</td>
                                            <td>26/09/2025</td>
                                            <td>
                                                <button class="btn btn-success"
                                                    onclick="approveArticle(23)">Duyệt</button>
                                                <button class="btn btn-danger" onclick="rejectArticle(23)">Từ
                                                    chối</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div style="text-align: center; margin-top: 1rem;">
                                <a href="manage-articles.jsp?status=pending" class="btn btn-primary">Xem tất cả</a>
                            </div>
                        </div>
                    </div>

                    <!-- Recent Users -->
                    <div class="article-card">
                        <div class="article-content">
                            <h3>👥 Người dùng mới (5)</h3>
                            <div style="max-height: 300px; overflow-y: auto;">
                                <table class="data-table">
                                    <thead>
                                        <tr>
                                            <th>Họ tên</th>
                                            <th>Email</th>
                                            <th>Vai trò</th>
                                            <th>Ngày tạo</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Phạm Văn D</td>
                                            <td>phamvand@email.com</td>
                                            <td>Phóng viên</td>
                                            <td>28/09/2025</td>
                                        </tr>
                                        <tr>
                                            <td>Hoàng Thị E</td>
                                            <td>hoangthie@email.com</td>
                                            <td>Phóng viên</td>
                                            <td>27/09/2025</td>
                                        </tr>
                                        <tr>
                                            <td>Vũ Văn F</td>
                                            <td>vuvanf@email.com</td>
                                            <td>Phóng viên</td>
                                            <td>26/09/2025</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div style="text-align: center; margin-top: 1rem;">
                                <a href="manage-users.jsp" class="btn btn-primary">Xem tất cả</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- System Statistics -->
                <div class="article-card">
                    <div class="article-content">
                        <h3>📈 Thống kê hệ thống</h3>
                        <div
                            style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 2rem; margin-top: 1rem;">
                        </div>
                        <div>
                            <h4>📊 Bài viết theo chuyên mục</h4>
                            <ul>
                                <li>Thể thao: 35 bài (22%)</li>
                                <li>Kinh tế: 28 bài (18%)</li>
                                <li>Văn hóa: 25 bài (16%)</li>
                                <li>Công nghệ: 22 bài (14%)</li>
                                <li>Pháp luật: 20 bài (13%)</li>
                                <li>Giải trí: 18 bài (12%)</li>
                                <li>Khác: 8 bài (5%)</li>
                            </ul>
                        </div>

                        <div>
                            <h4>📅 Hoạt động theo tháng</h4>
                            <ul>
                                <li>Tháng 9/2025: 45 bài</li>
                                <li>Tháng 8/2025: 38 bài</li>
                                <li>Tháng 7/2025: 42 bài</li>
                                <li>Tháng 6/2025: 31 bài</li>
                            </ul>
                        </div>

                        <div>
                            <h4>👁️ Bài viết được xem nhiều nhất</h4>
                            <ul>
                                <li>Đội tuyển Việt Nam... (2,156 lượt)</li>
                                <li>Công nghệ AI mới... (1,876 lượt)</li>
                                <li>Thị trường bất động sản... (1,654 lượt)</li>
                                <li>Lễ hội ẩm thực... (1,432 lượt)</li>
                            </ul>
                        </div>

                        <div>
                            <h4>✍️ Phóng viên tích cực nhất</h4>
                            <ul>
                                <li>Nguyễn Văn A: 15 bài</li>
                                <li>Trần Thị B: 12 bài</li>
                                <li>Lê Văn C: 10 bài</li>
                                <li>Phạm Thị D: 8 bài</li>
                            </ul>
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
            function approveArticle(id) {
                if (confirm('Bạn có chắc chắn muốn duyệt bài viết này?')) {
                    alert('Đã duyệt bài viết ID: ' + id);
                    location.reload();
                }
            }

            function rejectArticle(id) {
                const reason = prompt('Lý do từ chối:');
                if (reason) {
                    alert('Đã từ chối bài viết ID: ' + id + '\nLý do: ' + reason);
                    location.reload();
                }
            }
        </script>
    </body>

    </html>