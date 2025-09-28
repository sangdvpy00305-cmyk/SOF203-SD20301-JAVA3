<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC News - Quản lý bài viết (Admin)</title>
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
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 2rem;">
                <h2>📰 Quản lý tất cả bài viết</h2>
                <div>
                    <a href="../phongvien/edit-article.jsp" class="btn btn-primary">✍️ Viết bài mới</a>
                    <button class="btn btn-success" onclick="exportData()">📊 Xuất báo cáo</button>
                </div>
            </div>

            <!-- Filter and Search -->
            <div class="article-card">
                <div class="article-content">
                    <h3>🔍 Tìm kiếm và lọc</h3>
                    <form style="display: grid; grid-template-columns: repeat(auto-fit, minmax(180px, 1fr)); gap: 1rem; align-items: end;">
                        <div class="form-group">
                            <label for="search">Tìm kiếm:</label>
                            <input type="text" id="search" name="search" placeholder="Tiêu đề, nội dung...">
                        </div>
                        
                        <div class="form-group">
                            <label for="author">Tác giả:</label>
                            <select id="author" name="author">
                                <option value="">Tất cả</option>
                                <option value="1">Nguyễn Văn A</option>
                                <option value="2">Trần Thị B</option>
                                <option value="3">Lê Văn C</option>
                                <option value="4">Phạm Thị D</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="category">Chuyên mục:</label>
                            <select id="category" name="category">
                                <option value="">Tất cả</option>
                                <option value="1">Văn hóa</option>
                                <option value="2">Pháp luật</option>
                                <option value="3">Thể thao</option>
                                <option value="4">Kinh tế</option>
                                <option value="5">Giải trí</option>
                                <option value="6">Công nghệ</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="status">Trạng thái:</label>
                            <select id="status" name="status">
                                <option value="">Tất cả</option>
                                <option value="published">Đã xuất bản</option>
                                <option value="pending">Chờ duyệt</option>
                                <option value="draft">Bản nháp</option>
                                <option value="rejected">Bị từ chối</option>
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

            <!-- Articles Table -->
            <div class="article-card">
                <div class="article-content">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1rem;">
                        <h3>📋 Danh sách bài viết (156 bài)</h3>
                        <div>
                            <button class="btn btn-success" onclick="approveSelected()">✅ Duyệt đã chọn</button>
                            <button class="btn btn-warning" onclick="rejectSelected()">❌ Từ chối đã chọn</button>
                            <button class="btn btn-danger" onclick="deleteSelected()">🗑️ Xóa đã chọn</button>
                        </div>
                    </div>
                    
                    <div style="overflow-x: auto;">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" id="selectAll" onchange="toggleSelectAll()"></th>
                                    <th>ID</th>
                                    <th>Tiêu đề</th>
                                    <th>Tác giả</th>
                                    <th>Chuyên mục</th>
                                    <th>Ngày tạo</th>
                                    <th>Ngày đăng</th>
                                    <th>Trạng thái</th>
                                    <th>Lượt xem</th>
                                    <th>Trang chủ</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="checkbox" name="articleIds" value="1"></td>
                                    <td>1</td>
                                    <td>Chính phủ công bố chính sách mới về giáo dục</td>
                                    <td>Nguyễn Văn A</td>
                                    <td>Giáo dục</td>
                                    <td>27/09/2025</td>
                                    <td>28/09/2025</td>
                                    <td><span style="color: #27ae60; font-weight: bold;">Đã xuất bản</span></td>
                                    <td>1,234</td>
                                    <td>✅</td>
                                    <td>
                                        <a href="../phongvien/edit-article.jsp?id=1" class="btn btn-warning">Sửa</a>
                                        <a href="../docgia/detail.jsp?id=1" class="btn btn-primary">Xem</a>
                                        <button class="btn btn-danger" onclick="deleteArticle(1)">Xóa</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="articleIds" value="2"></td>
                                    <td>2</td>
                                    <td>Đội tuyển Việt Nam giành chiến thắng ấn tượng</td>
                                    <td>Trần Thị B</td>
                                    <td>Thể thao</td>
                                    <td>26/09/2025</td>
                                    <td>27/09/2025</td>
                                    <td><span style="color: #27ae60; font-weight: bold;">Đã xuất bản</span></td>
                                    <td>2,156</td>
                                    <td>✅</td>
                                    <td>
                                        <a href="../phongvien/edit-article.jsp?id=2" class="btn btn-warning">Sửa</a>
                                        <a href="../docgia/detail.jsp?id=2" class="btn btn-primary">Xem</a>
                                        <button class="btn btn-danger" onclick="deleteArticle(2)">Xóa</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="articleIds" value="19"></td>
                                    <td>19</td>
                                    <td>Xu hướng công nghệ mới trong năm 2025</td>
                                    <td>Nguyễn Văn A</td>
                                    <td>Công nghệ</td>
                                    <td>24/09/2025</td>
                                    <td>-</td>
                                    <td><span style="color: #f39c12; font-weight: bold;">Chờ duyệt</span></td>
                                    <td>0</td>
                                    <td>❌</td>
                                    <td>
                                        <button class="btn btn-success" onclick="approveArticle(19)">Duyệt</button>
                                        <button class="btn btn-danger" onclick="rejectArticle(19)">Từ chối</button>
                                        <a href="../phongvien/edit-article.jsp?id=19" class="btn btn-warning">Sửa</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="articleIds" value="20"></td>
                                    <td>20</td>
                                    <td>Phát triển kinh tế số tại Việt Nam</td>
                                    <td>Lê Văn C</td>
                                    <td>Kinh tế</td>
                                    <td>23/09/2025</td>
                                    <td>-</td>
                                    <td><span style="color: #f39c12; font-weight: bold;">Chờ duyệt</span></td>
                                    <td>0</td>
                                    <td>❌</td>
                                    <td>
                                        <button class="btn btn-success" onclick="approveArticle(20)">Duyệt</button>
                                        <button class="btn btn-danger" onclick="rejectArticle(20)">Từ chối</button>
                                        <a href="../phongvien/edit-article.jsp?id=20" class="btn btn-warning">Sửa</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="articleIds" value="24"></td>
                                    <td>24</td>
                                    <td>Chính sách thuế mới cho doanh nghiệp</td>
                                    <td>Phạm Thị D</td>
                                    <td>Kinh tế</td>
                                    <td>22/09/2025</td>
                                    <td>-</td>
                                    <td><span style="color: #e74c3c; font-weight: bold;">Bị từ chối</span></td>
                                    <td>0</td>
                                    <td>❌</td>
                                    <td>
                                        <button class="btn btn-success" onclick="approveArticle(24)">Duyệt lại</button>
                                        <a href="../phongvien/edit-article.jsp?id=24" class="btn btn-warning">Sửa</a>
                                        <button class="btn btn-danger" onclick="deleteArticle(24)">Xóa</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="articleIds" value="25"></td>
                                    <td>25</td>
                                    <td>Lễ hội văn hóa truyền thống thu hút hàng nghìn du khách</td>
                                    <td>Hoàng Văn E</td>
                                    <td>Văn hóa</td>
                                    <td>21/09/2025</td>
                                    <td>25/09/2025</td>
                                    <td><span style="color: #27ae60; font-weight: bold;">Đã xuất bản</span></td>
                                    <td>1,543</td>
                                    <td>✅</td>
                                    <td>
                                        <a href="../phongvien/edit-article.jsp?id=25" class="btn btn-warning">Sửa</a>
                                        <a href="../docgia/detail.jsp?id=25" class="btn btn-primary">Xem</a>
                                        <button class="btn btn-danger" onclick="deleteArticle(25)">Xóa</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!-- Pagination -->
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 2rem;">
                        <div>
                            <span>Hiển thị 1-10 trong tổng số 156 bài viết</span>
                        </div>
                        <div style="display: flex; gap: 0.5rem;">
                            <button class="btn btn-primary">« Đầu</button>
                            <button class="btn btn-primary">‹ Trước</button>
                            <button class="btn btn-success">1</button>
                            <button class="btn btn-primary">2</button>
                            <button class="btn btn-primary">3</button>
                            <button class="btn btn-primary">Sau ›</button>
                            <button class="btn btn-primary">Cuối »</button>
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
            const checkboxes = document.querySelectorAll('input[name="articleIds"]');
            
            checkboxes.forEach(checkbox => {
                checkbox.checked = selectAll.checked;
            });
        }

        function approveArticle(id) {
            if (confirm('Bạn có chắc chắn muốn duyệt bài viết này?')) {
                alert('Đã duyệt bài viết ID: ' + id);
                location.reload();
            }
        }

        function rejectArticle(id) {
            const reason = prompt('Lý do từ chối bài viết:');
            if (reason) {
                alert('Đã từ chối bài viết ID: ' + id + '\nLý do: ' + reason);
                location.reload();
            }
        }

        function deleteArticle(id) {
            if (confirm('Bạn có chắc chắn muốn xóa bài viết này? Hành động này không thể hoàn tác!')) {
                alert('Đã xóa bài viết ID: ' + id);
                location.reload();
            }
        }

        function approveSelected() {
            const selected = document.querySelectorAll('input[name="articleIds"]:checked');
            if (selected.length === 0) {
                alert('Vui lòng chọn ít nhất một bài viết!');
                return;
            }
            
            if (confirm(`Bạn có chắc chắn muốn duyệt ${selected.length} bài viết đã chọn?`)) {
                alert(`Đã duyệt ${selected.length} bài viết!`);
                location.reload();
            }
        }

        function rejectSelected() {
            const selected = document.querySelectorAll('input[name="articleIds"]:checked');
            if (selected.length === 0) {
                alert('Vui lòng chọn ít nhất một bài viết!');
                return;
            }
            
            const reason = prompt('Lý do từ chối các bài viết đã chọn:');
            if (reason) {
                alert(`Đã từ chối ${selected.length} bài viết!\nLý do: ${reason}`);
                location.reload();
            }
        }

        function deleteSelected() {
            const selected = document.querySelectorAll('input[name="articleIds"]:checked');
            if (selected.length === 0) {
                alert('Vui lòng chọn ít nhất một bài viết!');
                return;
            }
            
            if (confirm(`Bạn có chắc chắn muốn xóa ${selected.length} bài viết đã chọn? Hành động này không thể hoàn tác!`)) {
                alert(`Đã xóa ${selected.length} bài viết!`);
                location.reload();
            }
        }

        function clearFilters() {
            document.getElementById('search').value = '';
            document.getElementById('author').value = '';
            document.getElementById('category').value = '';
            document.getElementById('status').value = '';
            document.getElementById('dateFrom').value = '';
            document.getElementById('dateTo').value = '';
        }

        function exportData() {
            alert('Đang xuất báo cáo... Tính năng sẽ được phát triển trong giai đoạn tiếp theo.');
        }
    </script>
</body>
</html>