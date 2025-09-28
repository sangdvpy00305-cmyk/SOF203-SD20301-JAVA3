<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC News - Đăng nhập</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        .login-container {
            max-width: 400px;
            margin: 5rem auto;
            background: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .login-header {
            text-align: center;
            margin-bottom: 2rem;
        }
        .login-header h2 {
            color: #4a90e2;
            margin-bottom: 0.5rem;
        }
        .role-selector {
            display: flex;
            gap: 1rem;
            margin-bottom: 1.5rem;
        }
        .role-option {
            flex: 1;
            padding: 0.8rem;
            text-align: center;
            border: 2px solid #ddd;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.3s;
        }
        .role-option.active {
            border-color: #4a90e2;
            background-color: #f0f7ff;
            color: #4a90e2;
        }
        .demo-accounts {
            background: #f8f9fa;
            padding: 1rem;
            border-radius: 4px;
            margin-top: 1rem;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="container">
            <h1>ABC NEWS</h1>
            <p>Hệ thống quản lý tin tức</p>
        </div>
    </header>

    <!-- Login Form -->
    <div class="container">
        <div class="login-container">
            <div class="login-header">
                <h2>🔐 Đăng nhập hệ thống</h2>
                <p>Vui lòng chọn vai trò và đăng nhập</p>
            </div>

            <!-- Role Selection -->
            <div class="role-selector">
                <div class="role-option active" onclick="selectRole('phongvien')">
                    ✍️ Phóng viên
                </div>
                <div class="role-option" onclick="selectRole('admin')">
                    👨‍💼 Quản trị
                </div>
            </div>

            <!-- Login Form -->
            <form action="LoginController" method="post">
                <input type="hidden" id="role" name="role" value="phongvien">
                
                <div class="form-group">
                    <label for="username">Tên đăng nhập:</label>
                    <input type="text" id="username" name="username" placeholder="Nhập tên đăng nhập" required>
                </div>

                <div class="form-group">
                    <label for="password">Mật khẩu:</label>
                    <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" required>
                </div>

                <button type="submit" class="btn btn-primary" style="width: 100%; margin-top: 1rem;">
                    Đăng nhập
                </button>
            </form>

            <!-- Demo Accounts -->
            <div class="demo-accounts">
                <h4>🎯 Tài khoản demo:</h4>
                <p><strong>Phóng viên:</strong></p>
                <p>• Username: phongvien1 | Password: 123456</p>
                <p>• Username: phongvien2 | Password: 123456</p>
                
                <p><strong>Quản trị:</strong></p>
                <p>• Username: admin | Password: admin123</p>
            </div>

            <div style="text-align: center; margin-top: 2rem;">
                <a href="views/docgia/index.jsp" class="btn btn-warning">← Quay về trang đọc giả</a>
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
        function selectRole(role) {
            // Update UI
            document.querySelectorAll('.role-option').forEach(option => {
                option.classList.remove('active');
            });
            event.target.classList.add('active');
            
            // Update hidden input
            document.getElementById('role').value = role;
            
            // Update form action based on role
            const form = document.querySelector('form');
            if (role === 'admin') {
                form.action = 'AdminController';
            } else {
                form.action = 'PhongvienController';
            }
        }
    </script>
</body>
</html>