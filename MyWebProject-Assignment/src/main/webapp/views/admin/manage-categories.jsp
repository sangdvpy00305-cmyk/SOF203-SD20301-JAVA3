<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC News - Quản lý loại tin</title>
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
                <h2>📂 Quản lý loại tin</h2>
                <button class="btn btn-primary" onclick="showAddCategoryModal()">➕ Thêm loại tin mới</button>
            </div>

            <!-- Add/Edit Category Form -->
            <div class="article-card">
                <div class="article-content">
                    <h3 id="formTitle">➕ Thêm loại tin mới</h3>
                    <form id="categoryForm">
                        <input type="hidden" id="categoryId" name="id">
                        
                        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 2rem;">
                            <div class="form-group">
                                <label for="categoryName">Tên loại tin: *</label>
                                <input type="text" id="categoryName" name="name" placeholder="Nhập tên loại tin..." required>
                            </div>
                            
                            <div class="form-group">
                                <label for="categoryDescription">Mô tả:</label>
                                <input type="text" id="categoryDescription" name="description" placeholder="Mô tả ngắn về loại tin...">
                            </div>
                        </div>
                        
                        <div style="display: flex; gap: 1rem; margin-top: 1rem;">
                            <button type="submit" class="btn btn-primary" onclick="saveCategory()">💾 Lưu</button>
                            <button type="button" class="btn btn-warning" onclick="clearForm()">🔄 Làm mới</button>
                            <button type="button" class="btn btn-danger" onclick="cancelEdit()" id="cancelBtn" style="display: none;">❌ Hủy</button>
                        </div>
                    </form>
                </div>
            </div>

            <!-- Categories Table -->
            <div class="article-card">
                <div class="article-content">
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 1rem;">
                        <h3>📋 Danh sách loại tin (8 loại)</h3>
                        <div>
                            <button class="btn btn-danger" onclick="deleteSelected()">🗑️ Xóa đã chọn</button>
                        </div>
                    </div>
                    
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th><input type="checkbox" id="selectAll" onchange="toggleSelectAll()"></th>
                                <th>ID</th>
                                <th>Tên loại tin</th>
                                <th>Mô tả</th>
                                <th>Số bài viết</th>
                                <th>Ngày tạo</th>
                                <th>Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox" name="categoryIds" value="1"></td>
                                <td>1</td>
                                <td><strong>Văn hóa</strong></td>
                                <td>Tin tức về văn hóa, nghệ thuật, truyền thống</td>
                                <td>25</td>
                                <td>01/01/2025</td>
                                <td>
                                    <button class="btn btn-warning" onclick="editCategory('1', 'Văn hóa', 'Tin tức về văn hóa, nghệ thuật, truyền thống')">Sửa</button>
                                    <button class="btn btn-danger" onclick="deleteCategory('1')">Xóa</button>
                                    <a href="../docgia/category.jsp?id=1" class="btn btn-primary">Xem</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="categoryIds" value="2"></td>
                                <td>2</td>
                                <td><strong>Pháp luật</strong></td>
                                <td>Tin tức về pháp luật, chính sách, quy định</td>
                                <td>20</td>
                                <td>01/01/2025</td>
                                <td>
                                    <button class="btn btn-warning" onclick="editCategory('2', 'Pháp luật', 'Tin tức về pháp luật, chính sách, quy định')">Sửa</button>
                                    <button class="btn btn-danger" onclick="deleteCategory('2')">Xóa</button>
                                    <a href="../docgia/category.jsp?id=2" class="btn btn-primary">Xem</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="categoryIds" value="3"></td>
                                <td>3</td>
                                <td><strong>Thể thao</strong></td>
                                <td>Tin tức về thể thao, bóng đá, Olympic</td>
                                <td>35</td>
                                <td>01/01/2025</td>
                                <td>
                                    <button class="btn btn-warning" onclick="editCategory('3', 'Thể thao', 'Tin tức về thể thao, bóng đá, Olympic')">Sửa</button>
                                    <button class="btn btn-danger" onclick="deleteCategory('3')">Xóa</button>
                                    <a href="../docgia/category.jsp?id=3" class="btn btn-primary">Xem</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="categoryIds" value="4"></td>
                                <td>4</td>
                                <td><strong>Kinh tế</strong></td>
                                <td>Tin tức về kinh tế, tài chính, thương mại</td>
                                <td>28</td>
                                <td>01/01/2025</td>
                                <td>
                                    <button class="btn btn-warning" onclick="editCategory('4', 'Kinh tế', 'Tin tức về kinh tế, tài chính, thương mại')">Sửa</button>
                                    <button class="btn btn-danger" onclick="deleteCategory('4')">Xóa</button>
                                    <a href="../docgia/category.jsp?id=4" class="btn btn-primary">Xem</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="categoryIds" value="5"></td>
                                <td>5</td>
                                <td><strong>Giải trí</strong></td>
                                <td>Tin tức về giải trí, showbiz, điện ảnh</td>
                                <td>18</td>
                                <td>01/01/2025</td>
                                <td>
                                    <button class="btn btn-warning" onclick="editCategory('5', 'Giải trí', 'Tin tức về giải trí, showbiz, điện ảnh')">Sửa</button>
                                    <button class="btn btn-danger" onclick="deleteCategory('5')">Xóa</button>
                                    <a href="../docgia/category.jsp?id=5" class="btn btn-primary">Xem</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="categoryIds" value="6"></td>
                                <td>6</td>
                                <td><strong>Công nghệ</strong></td>
                                <td>Tin tức về công nghệ, AI, blockchain</td>
                                <td>22</td>
                                <td>15/02/2025</td>
                                <td>
                                    <button class="btn btn-warning" onclick="editCategory('6', 'Công nghệ', 'Tin tức về công nghệ, AI, blockchain')">Sửa</button>
                                    <button class="btn btn-danger" onclick="deleteCategory('6')">Xóa</button>
                                    <a href="../docgia/category.jsp?id=6" class="btn btn-primary">Xem</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="categoryIds" value="7"></td>
                                <td>7</td>
                                <td><strong>Giáo dục</strong></td>
                                <td>Tin tức về giáo dục, đào tạo, học tập</td>
                                <td>15</td>
                                <td>20/03/2025</td>
                                <td>
                                    <button class="btn btn-warning" onclick="editCategory('7', 'Giáo dục', 'Tin tức về giáo dục, đào tạo, học tập')">Sửa</button>
                                    <button class="btn btn-danger" onclick="deleteCategory('7')">Xóa</button>
                                    <a href="../docgia/category.jsp?id=7" class="btn btn-primary">Xem</a>
                                </td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="categoryIds" value="8"></td>
                                <td>8</td>
                                <td><strong>Y tế</strong></td>
                                <td>Tin tức về y tế, sức khỏe, dịch bệnh</td>
                                <td>12</td>
                                <td>25/04/2025</td>
                                <td>
                                    <button class="btn btn-warning" onclick="editCategory('8', 'Y tế', 'Tin tức về y tế, sức khỏe, dịch bệnh')">Sửa</button>
                                    <button class="btn btn-danger" onclick="deleteCategory('8')">Xóa</button>
                                    <a href="../docgia/category.jsp?id=8" class="btn btn-primary">Xem</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Statistics -->
            <div class="article-card">
                <div class="article-content">
                    <h3>📊 Thống kê loại tin</h3>
                    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 2rem; margin-top: 1rem;">
                        <div style="text-align: center;">
                            <h4 style="color: #4a90e2;">8</h4>
                            <p>Tổng số loại tin</p>
                        </div>
                        <div style="text-align: center;">
                            <h4 style="color: #27ae60;">175</h4>
                            <p>Tổng số bài viết</p>
                        </div>
                        <div style="text-align: center;">
                            <h4 style="color: #f39c12;">35</h4>
                            <p>Loại tin có nhiều bài nhất (Thể thao)</p>
                        </div>
                        <div style="text-align: center;">
                            <h4 style="color: #e74c3c;">12</h4>
                            <p>Loại tin có ít bài nhất (Y tế)</p>
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
        let isEditing = false;

        function toggleSelectAll() {
            const selectAll = document.getElementById('selectAll');
            const checkboxes = document.querySelectorAll('input[name="categoryIds"]');
            
            checkboxes.forEach(checkbox => {
                checkbox.checked = selectAll.checked;
            });
        }

        function showAddCategoryModal() {
            clearForm();
            document.getElementById('formTitle').textContent = '➕ Thêm loại tin mới';
            isEditing = false;
        }

        function editCategory(id, name, description) {
            document.getElementById('categoryId').value = id;
            document.getElementById('categoryName').value = name;
            document.getElementById('categoryDescription').value = description;
            document.getElementById('formTitle').textContent = '✏️ Chỉnh sửa loại tin';
            document.getElementById('cancelBtn').style.display = 'inline-block';
            isEditing = true;
            
            // Scroll to form
            document.getElementById('categoryForm').scrollIntoView({ behavior: 'smooth' });
        }

        function saveCategory() {
            event.preventDefault();
            
            const id = document.getElementById('categoryId').value;
            const name = document.getElementById('categoryName').value;
            const description = document.getElementById('categoryDescription').value;
            
            if (!name.trim()) {
                alert('Vui lòng nhập tên loại tin!');
                return;
            }
            
            if (isEditing) {
                alert(`Đã cập nhật loại tin: ${name}`);
            } else {
                alert(`Đã thêm loại tin mới: ${name}`);
            }
            
            clearForm();
            location.reload();
        }

        function deleteCategory(id) {
            if (confirm('Bạn có chắc chắn muốn xóa loại tin này? Tất cả bài viết thuộc loại tin này sẽ bị ảnh hưởng!')) {
                alert('Đã xóa loại tin ID: ' + id);
                location.reload();
            }
        }

        function deleteSelected() {
            const selected = document.querySelectorAll('input[name="categoryIds"]:checked');
            if (selected.length === 0) {
                alert('Vui lòng chọn ít nhất một loại tin!');
                return;
            }
            
            if (confirm(`Bạn có chắc chắn muốn xóa ${selected.length} loại tin đã chọn? Tất cả bài viết thuộc các loại tin này sẽ bị ảnh hưởng!`)) {
                alert(`Đã xóa ${selected.length} loại tin!`);
                location.reload();
            }
        }

        function clearForm() {
            document.getElementById('categoryForm').reset();
            document.getElementById('categoryId').value = '';
            document.getElementById('formTitle').textContent = '➕ Thêm loại tin mới';
            document.getElementById('cancelBtn').style.display = 'none';
            isEditing = false;
        }

        function cancelEdit() {
            clearForm();
        }
    </script>
</body>
</html>