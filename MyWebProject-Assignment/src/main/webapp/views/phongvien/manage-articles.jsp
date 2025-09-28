<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC News - Quản lý bài viết</title>
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
            <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 2rem;">
                <h2>📝 Quản lý bài viết của tôi</h2>
                <a href="edit-article.jsp" class="btn btn-primary">✍️ Viết bài mới</a>
            </div>

            <!-- Filter and Search -->
            <div class="article-card">
                <div class="article-content">
                    <h3>🔍 Tìm kiếm và lọc</h3>
                    <form style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem; align-items: end;">
                        <div class="form-group">
                            <label for="search">Tìm kiếm:</label>
                            <input type="text" id="search" name="search" placeholder="Nhập tiêu đề bài viết...">
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
                            </select>
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                    </form>
                </div>
            </div>

            <!-- Articles Table -->
            <div class="article-card">
                <div class="article-content">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1rem;">
                        <h3>📰 Danh sách bài viết (15 bài)</h3>
                        <div>
                            <button class="btn btn-success" onclick="publishSelected()">Xuất bản đã chọn</button>
                            <button class="btn btn-danger" onclick="deleteSelected()">Xóa đã chọn</button>
                        </div>
                    </div>
                    
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th><input type="checkbox" id="selectAll" onchange="toggleSelectAll()"></th>
                                <th>ID</th>
                                <th>Tiêu đề</th>
                                <th>Chuyên mục</th>
                                <th>Ngày tạo</th>
                                <th>Ngày đăng</th>
                                <th>Trạng thái</th>
                                <th>Lượt xem</th>
                                <th>Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox" name="articleIds" value="2"></td>
                                <td>2</td>
                                <td>Đội tuyển Việt Nam giành chiến thắng ấn tượng</td>
                                <td>Thể thao</td>
                                <td>26/09/2025</td>
                                <td>27/09/2025</td>
                                <td><span style="color: #27ae60; font-weight: bold;">Đã xuất bản</span></td>
                                <td>2,156</td>
                                <td>
                                    <a href="edit-article.jsp?id=2" class="btn btn-warning">Sửa</a>
                                    <a href="../docgia/detail.jsp?id=2" class="btn btn-primary">Xem</a>
                                    <button class="btn btn-danger" onclick="deleteArticle(2)">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="articleIds" value="4"></td>
                                <td>4</td>
                                <td>Lễ hội văn hóa truyền thống thu hút hàng nghìn du khách</td>
                                <td>Văn hóa</td>
                                <td>24/09/2025</td>
                                <td>25/09/2025</td>
                                <td><span style="color: #27ae60; font-weight: bold;">Đã xuất bản</span></td>
                                <td>1,543</td>
                                <td>
                                    <a href="edit-article.jsp?id=4" class="btn btn-warning">Sửa</a>
                                    <a href="../docgia/detail.jsp?id=4" class="btn btn-primary">Xem</a>
                                    <button class="btn btn-danger" onclick="deleteArticle(4)">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="articleIds" value="19"></td>
                                <td>19</td>
                                <td>Xu hướng công nghệ mới trong năm 2025</td>
                                <td>Công nghệ</td>
                                <td>24/09/2025</td>
                                <td>-</td>
                                <td><span style="color: #f39c12; font-weight: bold;">Chờ duyệt</span></td>
                                <td>0</td>
                                <td>
                                    <a href="edit-article.jsp?id=19" class="btn btn-warning">Sửa</a>
                                    <button class="btn btn-success" onclick="publishArticle(19)">Xuất bản</button>
                                    <button class="btn btn-danger" onclick="deleteArticle(19)">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="articleIds" value="20"></td>
                                <td>20</td>
                                <td>Phát triển kinh tế số tại Việt Nam</td>
                                <td>Kinh tế</td>
                                <td>23/09/2025</td>
                                <td>-</td>
                                <td><span style="color: #f39c12; font-weight: bold;">Chờ duyệt</span></td>
                                <td>0</td>
                                <td>
                                    <a href="edit-article.jsp?id=20" class="btn btn-warning">Sửa</a>
                                    <button class="btn btn-success" onclick="publishArticle(20)">Xuất bản</button>
                                    <button class="btn btn-danger" onclick="deleteArticle(20)">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="articleIds" value="21"></td>
                                <td>21</td>
                                <td>Hội thảo khởi nghiệp cho sinh viên</td>
                                <td>Giáo dục</td>
                                <td>21/09/2025</td>
                                <td>22/09/2025</td>
                                <td><span style="color: #27ae60; font-weight: bold;">Đã xuất bản</span></td>
                                <td>987</td>
                                <td>
                                    <a href="edit-article.jsp?id=21" class="btn btn-warning">Sửa</a>
                                    <a href="../docgia/detail.jsp?id=21" class="btn btn-primary">Xem</a>
                                    <button class="btn btn-danger" onclick="deleteArticle(21)">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="articleIds" value="22"></td>
                                <td>22</td>
                                <td>Chính sách mới về môi trường</td>
                                <td>Pháp luật</td>
                                <td>20/09/2025</td>
                                <td>21/09/2025</td>
                                <td><span style="color: #27ae60; font-weight: bold;">Đã xuất bản</span></td>
                                <td>756</td>
                                <td>
                                    <a href="edit-article.jsp?id=22" class="btn btn-warning">Sửa</a>
                                    <a href="../docgia/detail.jsp?id=22" class="btn btn-primary">Xem</a>
                                    <button class="btn btn-danger" onclick="deleteArticle(22)">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="articleIds" value="23"></td>
                                <td>23</td>
                                <td>Festival âm nhạc quốc tế 2025</td>
                                <td>Giải trí</td>
                                <td>19/09/2025</td>
                                <td>-</td>
                                <td><span style="color: #6c757d; font-weight: bold;">Bản nháp</span></td>
                                <td>0</td>
                                <td>
                                    <a href="edit-article.jsp?id=23" class="btn btn-warning">Sửa</a>
                                    <button class="btn btn-success" onclick="publishArticle(23)">Xuất bản</button>
                                    <button class="btn btn-danger" onclick="deleteArticle(23)">Xóa</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <!-- Pagination -->
                    <div style="display: flex; justify-content: center; align-items: center; gap: 1rem; margin-top: 2rem;">
                        <button class="btn btn-primary">« Trước</button>
                        <span>Trang 1 / 3</span>
                        <button class="btn btn-primary">Sau »</button>
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

        function deleteArticle(id) {
            if (confirm('Bạn có chắc chắn muốn xóa bài viết này?')) {
                alert('Đã xóa bài viết ID: ' + id);
                location.reload();
            }
        }

        function publishArticle(id) {
            if (confirm('Bạn có chắc chắn muốn xuất bản bài viết này?')) {
                alert('Đã xuất bản bài viết ID: ' + id);
                location.reload();
            }
        }

        function publishSelected() {
            const selected = document.querySelectorAll('input[name="articleIds"]:checked');
            if (selected.length === 0) {
                alert('Vui lòng chọn ít nhất một bài viết!');
                return;
            }
            
            if (confirm(`Bạn có chắc chắn muốn xuất bản ${selected.length} bài viết đã chọn?`)) {
                alert(`Đã xuất bản ${selected.length} bài viết!`);
                location.reload();
            }
        }

        function deleteSelected() {
            const selected = document.querySelectorAll('input[name="articleIds"]:checked');
            if (selected.length === 0) {
                alert('Vui lòng chọn ít nhất một bài viết!');
                return;
            }
            
            if (confirm(`Bạn có chắc chắn muốn xóa ${selected.length} bài viết đã chọn?`)) {
                alert(`Đã xóa ${selected.length} bài viết!`);
                location.reload();
            }
        }
    </script>
</body>
</html>