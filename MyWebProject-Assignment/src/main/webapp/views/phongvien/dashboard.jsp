x`<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC News - Dashboard Phóng viên</title>
    <link rel="stylesheet" href="../../css/style.css">
</head>
<body>
    <!-- Admin Header -->
    <div class="admin-header">
        <h1>🎯 CÔNG CỤ QUẢN TRỊ TIN TỨC</h1>
        <p>Welcome <strong>Nguyễn Văn A</strong> - Phóng viên</p>
    </div>

    <!-- Admin Navigation -->
    <nav class="admin-nav">
        <div class="container">
            <ul>
                <li><a href="../docgia/index.jsp">Trang chủ</a></li>
                <li><a href="dashboard.jsp">Dashboard</a></li>
                <li><a href="manage-articles.jsp">Quản lý bài viết</a></li>
                <li><a href="edit-article.jsp">Viết bài mới</a></li>
                <li><a href="../../login.jsp">Đăng xuất</a></li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <div class="content">
            <h2>📊 Dashboard Phóng viên</h2>
            
            <!-- Statistics Cards -->
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 1.5rem; margin-bottom: 2rem;">
                <div class="article-card">
                    <div class="article-content" style="text-align: center;">
                        <h3 style="color: #4a90e2; font-size: 2rem; margin-bottom: 0.5rem;">15</h3>
                        <p>Tổng số bài viết</p>
                    </div>
                </div>
                
                <div class="article-card">
                    <div class="article-content" style="text-align: center;">
                        <h3 style="color: #27ae60; font-size: 2rem; margin-bottom: 0.5rem;">12</h3>
                        <p>Bài đã xuất bản</p>
                    </div>
                </div>
                
                <div class="article-card">
                    <div class="article-content" style="text-align: center;">
                        <h3 style="color: #f39c12; font-size: 2rem; margin-bottom: 0.5rem;">3</h3>
                        <p>Bài chờ duyệt</p>
                    </div>
                </div>
                
                <div class="article-card">
                    <div class="article-content" style="text-align: center;">
                        <h3 style="color: #e74c3c; font-size: 2rem; margin-bottom: 0.5rem;">8,456</h3>
                        <p>Tổng lượt xem</p>
                    </div>
                </div>
            </div>

            <!-- Quick Actions -->
            <div class="article-card">
                <div class="article-content">
                    <h3>⚡ Thao tác nhanh</h3>
                    <div style="display: flex; gap: 1rem; flex-wrap: wrap; margin-top: 1rem;">
                        <a href="edit-article.jsp" class="btn btn-primary">✍️ Viết bài mới</a>
                        <a href="manage-articles.jsp" class="btn btn-success">📝 Quản lý bài viết</a>
                        <a href="../docgia/index.jsp" class="btn btn-warning">🏠 Xem trang chủ</a>
                    </div>
                </div>
            </div>

            <!-- Recent Articles -->
            <div class="article-card">
                <div class="article-content">
                    <h3>📰 Bài viết gần đây của bạn</h3>
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Tiêu đề</th>
                                <th>Chuyên mục</th>
                                <th>Ngày đăng</th>
                                <th>Trạng thái</th>
                                <th>Lượt xem</th>
                                <th>Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Đội tuyển Việt Nam giành chiến thắng ấn tượng</td>
                                <td>Thể thao</td>
                                <td>27/09/2025</td>
                                <td><span style="color: #27ae60; font-weight: bold;">Đã xuất bản</span></td>
                                <td>2,156</td>
                                <td>
                                    <a href="edit-article.jsp?id=2" class="btn btn-warning">Sửa</a>
                                    <a href="../docgia/detail.jsp?id=2" class="btn btn-primary">Xem</a>
                                </td>
                            </tr>
                            <tr>
                                <td>Lễ hội văn hóa truyền thống thu hút hàng nghìn du khách</td>
                                <td>Văn hóa</td>
                                <td>25/09/2025</td>
                                <td><span style="color: #27ae60; font-weight: bold;">Đã xuất bản</span></td>
                                <td>1,543</td>
                                <td>
                                    <a href="edit-article.jsp?id=4" class="btn btn-warning">Sửa</a>
                                    <a href="../docgia/detail.jsp?id=4" class="btn btn-primary">Xem</a>
                                </td>
                            </tr>
                            <tr>
                                <td>Xu hướng công nghệ mới trong năm 2025</td>
                                <td>Công nghệ</td>
                                <td>24/09/2025</td>
                                <td><span style="color: #f39c12; font-weight: bold;">Chờ duyệt</span></td>
                                <td>0</td>
                                <td>
                                    <a href="edit-article.jsp?id=19" class="btn btn-warning">Sửa</a>
                                    <button class="btn btn-danger" onclick="deleteArticle(19)">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Phát triển kinh tế số tại Việt Nam</td>
                                <td>Kinh tế</td>
                                <td>23/09/2025</td>
                                <td><span style="color: #f39c12; font-weight: bold;">Chờ duyệt</span></td>
                                <td>0</td>
                                <td>
                                    <a href="edit-article.jsp?id=20" class="btn btn-warning">Sửa</a>
                                    <button class="btn btn-danger" onclick="deleteArticle(20)">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Hội thảo khởi nghiệp cho sinh viên</td>
                                <td>Giáo dục</td>
                                <td>22/09/2025</td>
                                <td><span style="color: #27ae60; font-weight: bold;">Đã xuất bản</span></td>
                                <td>987</td>
                                <td>
                                    <a href="edit-article.jsp?id=21" class="btn btn-warning">Sửa</a>
                                    <a href="../docgia/detail.jsp?id=21" class="btn btn-primary">Xem</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Performance Chart -->
            <div class="article-card">
                <div class="article-content">
                    <h3>📈 Thống kê hiệu suất</h3>
                    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem; margin-top: 1rem;">
                        <div>
                            <h4>Bài viết theo tháng</h4>
                            <ul>
                                <li>Tháng 9/2025: 5 bài</li>
                                <li>Tháng 8/2025: 4 bài</li>
                                <li>Tháng 7/2025: 6 bài</li>
                            </ul>
                        </div>
                        <div>
                            <h4>Chuyên mục yêu thích</h4>
                            <ul>
                                <li>Thể thao: 6 bài</li>
                                <li>Văn hóa: 4 bài</li>
                                <li>Kinh tế: 3 bài</li>
                                <li>Công nghệ: 2 bài</li>
                            </ul>
                        </div>
                        <div>
                            <h4>Bài được xem nhiều nhất</h4>
                            <ul>
                                <li>Đội tuyển Việt Nam... (2,156 lượt)</li>
                                <li>Lễ hội văn hóa... (1,543 lượt)</li>
                                <li>Hội thảo khởi nghiệp... (987 lượt)</li>
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
        function deleteArticle(id) {
            if (confirm('Bạn có chắc chắn muốn xóa bài viết này?')) {
                alert('Đã xóa bài viết ID: ' + id);
                // Reload page to simulate deletion
                location.reload();
            }
        }
    </script>
</body>
</html>