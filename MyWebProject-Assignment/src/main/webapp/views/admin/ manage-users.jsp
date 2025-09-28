<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC News - Quản lý người dùng</title>
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
                <h2>👥 Quản lý người dùng</h2>
                <button class="btn btn-primary" onclick="showAddUserModal()">➕ Thêm người dùng mới</button>
            </div>

            <!-- Filter and Search -->
            <div class="article-card">
                <div class="article-content">
                    <h3>🔍 Tìm kiếm và lọc</h3>
                    <form style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 1rem; align-items: end;">
                        <div class="form-group">
                            <label for="search">Tìm kiếm:</label>
                            <input type="text" id="search" name="search" placeholder="Tên, email, ID...">
                        </div>
                        
                        <div class="form-group">
                            <label for="role">Vai trò:</label>
                            <select id="role" name="role">
                                <option value="">Tất cả</option>
                                <option value="admin">Quản trị viên</option>
                                <option value="reporter">Phóng viên</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="status">Trạng thái:</label>
                            <select id="status" name="status">
                                <option value="">Tất cả</option>
                                <option value="active">Hoạt động</option>
                                <option value="inactive">Tạm khóa</option>
                            </select>
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                        <button type="button" class="btn btn-warning" onclick="clearFilters()">Xóa bộ lọc</button>
                    </form>
                </div>
            </div>

            <!-- Users Table -->
            <div class="article-card">
                <div class="article-content">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1rem;">
                        <h3>📋 Danh sách người dùng (25 người)</h3>
                        <div>
                            <button class="btn btn-success" onclick="activateSelected()">✅ Kích hoạt đã chọn</button>
                            <button class="btn btn-warning" onclick="deactivateSelected()">⏸️ Tạm khóa đã chọn</button>
                            <button class="btn btn-danger" onclick="deleteSelected()">🗑️ Xóa đã chọn</button>
                        </div>
                    </div>
                    
                    <div style="overflow-x: auto;">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" id="selectAll" onchange="toggleSelectAll()"></th>
                                    <th>ID</th>
                                    <th>Họ và tên</th>
                                    <th>Email</th>
                                    <th>Điện thoại</th>
                                    <th>Ngày sinh</th>
                                    <th>Giới tính</th>
                                    <th>Vai trò</th>
                                    <th>Trạng thái</th>
                                    <th>Ngày tạo</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="checkbox" name="userIds" value="admin"></td>
                                    <td>admin</td>
                                    <td>Administrator</td>
                                    <td>admin@abcnews.vn</td>
                                    <td>0901234567</td>
                                    <td>01/01/1980</td>
                                    <td>Nam</td>
                                    <td><span style="color: #e74c3c; font-weight: bold;">Quản trị viên</span></td>
                                    <td><span style="color: #27ae60; font-weight: bold;">Hoạt động</span></td>
                                    <td>01/01/2025</td>
                                    <td>
                                        <button class="btn btn-warning" onclick="editUser('admin')">Sửa</button>
                                        <button class="btn btn-primary" onclick="viewUser('admin')">Xem</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="userIds" value="phongvien1"></td>
                                    <td>phongvien1</td>
                                    <td>Nguyễn Văn A</td>
                                    <td>nguyenvana@abcnews.vn</td>
                                    <td>0912345678</td>
                                    <td>15/05/1990</td>
                                    <td>Nam</td>
                                    <td><span style="color: #4a90e2; font-weight: bold;">Phóng viên</span></td>
                                    <td><span style="color: #27ae60; font-weight: bold;">Hoạt động</span></td>
                                    <td>15/02/2025</td>
                                    <td>
                                        <button class="btn btn-warning" onclick="editUser('phongvien1')">Sửa</button>
                                        <button class="btn btn-primary" onclick="viewUser('phongvien1')">Xem</button>
                                        <button class="btn btn-danger" onclick="deleteUser('phongvien1')">Xóa</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="userIds" value="phongvien2"></td>
                                    <td>phongvien2</td>
                                    <td>Trần Thị B</td>
                                    <td>tranthib@abcnews.vn</td>
                                    <td>0923456789</td>
                                    <td>20/08/1992</td>
                                    <td>Nữ</td>
                                    <td><span style="color: #4a90e2; font-weight: bold;">Phóng viên</span></td>
                                    <td><span style="color: #27ae60; font-weight: bold;">Hoạt động</span></td>
                                    <td>20/03/2025</td>
                                    <td>
                                        <button class="btn btn-warning" onclick="editUser('phongvien2')">Sửa</button>
                                        <button class="btn btn-primary" onclick="viewUser('phongvien2')">Xem</button>
                                        <button class="btn btn-danger" onclick="deleteUser('phongvien2')">Xóa</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="userIds" value="phongvien3"></td>
                                    <td>phongvien3</td>
                                    <td>Lê Văn C</td>
                                    <td>levanc@abcnews.vn</td>
                                    <td>0934567890</td>
                                    <td>10/12/1988</td>
                                    <td>Nam</td>
                                    <td><span style="color: #4a90e2; font-weight: bold;">Phóng viên</span></td>
                                    <td><span style="color: #f39c12; font-weight: bold;">Tạm khóa</span></td>
                                    <td>10/04/2025</td>
                                    <td>
                                        <button class="btn btn-success" onclick="activateUser('phongvien3')">Kích hoạt</button>
                                        <button class="btn btn-warning" onclick="editUser('phongvien3')">Sửa</button>
                                        <button class="btn btn-danger" onclick="deleteUser('phongvien3')">Xóa</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="userIds" value="phongvien4"></td>
                                    <td>phongvien4</td>
                                    <td>Phạm Thị D</td>
                                    <td>phamthid@abcnews.vn</td>
                                    <td>0945678901</td>
                                    <td>25/07/1995</td>
                                    <td>Nữ</td>
                                    <td><span style="color: #4a90e2; font-weight: bold;">Phóng viên</span></td>
                                    <td><span style="color: #27ae60; font-weight: bold;">Hoạt động</span></td>
                                    <td>25/05/2025</td>
                                    <td>
                                        <button class="btn btn-warning" onclick="editUser('phongvien4')">Sửa</button>
                                        <button class="btn btn-primary" onclick="viewUser('phongvien4')">Xem</button>
                                        <button class="btn btn-danger" onclick="deleteUser('phongvien4')">Xóa</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!-- Pagination -->
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 2rem;">
                        <div>
                            <span>Hiển thị 1-5 trong tổng số 25 người dùng</span>
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
            const checkboxes = document.querySelectorAll('input[name="userIds"]');
            
            checkboxes.forEach(checkbox => {
                checkbox.checked = selectAll.checked;
            });
        }

        function editUser(id) {
            alert('Chỉnh sửa người dùng ID: ' + id);
        }

        function viewUser(id) {
            alert('Xem chi tiết người dùng ID: ' + id);
        }

        function deleteUser(id) {
            if (confirm('Bạn có chắc chắn muốn xóa người dùng này?')) {
                alert('Đã xóa người dùng ID: ' + id);
                location.reload();
            }
        }

        function activateUser(id) {
            if (confirm('Bạn có chắc chắn muốn kích hoạt người dùng này?')) {
                alert('Đã kích hoạt người dùng ID: ' + id);
                location.reload();
            }
        }

        function showAddUserModal() {
            alert('Tính năng thêm người dùng sẽ được phát triển trong giai đoạn tiếp theo.');
        }

        function activateSelected() {
            const selected = document.querySelectorAll('input[name="userIds"]:checked');
            if (selected.length === 0) {
                alert('Vui lòng chọn ít nhất một người dùng!');
                return;
            }
            
            if (confirm(`Bạn có chắc chắn muốn kích hoạt ${selected.length} người dùng đã chọn?`)) {
                alert(`Đã kích hoạt ${selected.length} người dùng!`);
                location.reload();
            }
        }

        function deactivateSelected() {
            const selected = document.querySelectorAll('input[name="userIds"]:checked');
            if (selected.length === 0) {
                alert('Vui lòng chọn ít nhất một người dùng!');
                return;
            }
            
            if (confirm(`Bạn có chắc chắn muốn tạm khóa ${selected.length} người dùng đã chọn?`)) {
                alert(`Đã tạm khóa ${selected.length} người dùng!`);
                location.reload();
            }
        }

        function deleteSelected() {
            const selected = document.querySelectorAll('input[name="userIds"]:checked');
            if (selected.length === 0) {
                alert('Vui lòng chọn ít nhất một người dùng!');
                return;
            }
            
            if (confirm(`Bạn có chắc chắn muốn xóa ${selected.length} người dùng đã chọn?`)) {
                alert(`Đã xóa ${selected.length} người dùng!`);
                location.reload();
            }
        }

        function clearFilters() {
            document.getElementById('search').value = '';
            document.getElementById('role').value = '';
            document.getElementById('status').value = '';
        }
    </script>
</body>
</html>