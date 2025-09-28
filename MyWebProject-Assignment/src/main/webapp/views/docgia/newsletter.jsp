<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC News - Đăng ký Newsletter</title>
    <link rel="stylesheet" href="../../css/style.css">
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="container">
            <h1>ABC NEWS</h1>
            <p>Cập nhật tin tức nhanh chóng và chính xác</p>
        </div>
    </header>

    <!-- Navigation -->
    <nav class="navbar">
        <div class="container">
            <ul>
                <li><a href="index.jsp">Trang chủ</a></li>
                <li><a href="category.jsp?id=1">Văn hóa</a></li>
                <li><a href="category.jsp?id=2">Pháp luật</a></li>
                <li><a href="category.jsp?id=3">Thể thao</a></li>
                <li><a href="category.jsp?id=4">Kinh tế</a></li>
                <li><a href="category.jsp?id=5">Giải trí</a></li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <div class="main-content">
            <!-- Content Area -->
            <main class="content">
                <h2>📧 Đăng ký Newsletter</h2>
                
                <div style="background: #f8f9fa; padding: 2rem; border-radius: 8px; margin-bottom: 2rem;">
                    <h3>Cảm ơn bạn đã đăng ký!</h3>
                    <p>Email của bạn đã được đăng ký thành công để nhận bản tin từ ABC News.</p>
                    <p>Bạn sẽ nhận được những tin tức mới nhất và hấp dẫn nhất từ chúng tôi.</p>
                </div>

                <div class="article-card">
                    <div class="article-content">
                        <h3>Lợi ích khi đăng ký Newsletter ABC News:</h3>
                        <ul style="margin: 1rem 0; padding-left: 2rem;">
                            <li>📰 Nhận tin tức nóng hổi ngay khi có bài viết mới</li>
                            <li>🎯 Nội dung được tuyển chọn kỹ lưỡng, chất lượng cao</li>
                            <li>⚡ Cập nhật nhanh chóng các sự kiện quan trọng</li>
                            <li>📱 Tương thích với mọi thiết bị</li>
                            <li>🔒 Bảo mật thông tin cá nhân tuyệt đối</li>
                            <li>❌ Có thể hủy đăng ký bất cứ lúc nào</li>
                        </ul>
                    </div>
                </div>

                <div class="article-card">
                    <div class="article-content">
                        <h3>Đăng ký thêm hoặc quản lý Newsletter</h3>
                        <form class="newsletter-form" action="newsletter.jsp" method="post" style="max-width: 400px;">
                            <div class="form-group">
                                <label for="email">Email của bạn:</label>
                                <input type="email" id="email" name="email" placeholder="Nhập địa chỉ email" required>
                            </div>
                            
                            <div class="form-group">
                                <label>
                                    <input type="checkbox" name="categories" value="news" checked> Tin tức tổng hợp
                                </label>
                            </div>
                            
                            <div class="form-group">
                                <label>
                                    <input type="checkbox" name="categories" value="sports"> Thể thao
                                </label>
                            </div>
                            
                            <div class="form-group">
                                <label>
                                    <input type="checkbox" name="categories" value="economy"> Kinh tế
                                </label>
                            </div>
                            
                            <div class="form-group">
                                <label>
                                    <input type="checkbox" name="categories" value="culture"> Văn hóa
                                </label>
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Đăng ký Newsletter</button>
                            <button type="button" class="btn btn-warning" onclick="unsubscribe()">Hủy đăng ký</button>
                        </form>
                    </div>
                </div>

                <div style="text-align: center; margin-top: 2rem;">
                    <a href="index.jsp" class="btn btn-primary">← Quay về Trang chủ</a>
                </div>
            </main>

            <!-- Sidebar -->
            <aside class="sidebar">
                <!-- Thống kê xem nhiều -->
                <div class="widget">
                    <h3>📊 Thống kê xem nhiều</h3>
                    <ul>
                        <li><a href="detail.jsp?id=2">Đội tuyển Việt Nam giành chiến thắng ấn tượng</a> <span>(2,156 lượt xem)</span></li>
                        <li><a href="detail.jsp?id=5">Công nghệ AI mới được ứng dụng trong y tế</a> <span>(1,876 lượt xem)</span></li>
                        <li><a href="detail.jsp?id=6">Thị trường bất động sản có dấu hiệu phục hồi</a> <span>(1,654 lượt xem)</span></li>
                        <li><a href="detail.jsp?id=7">Lễ hội ẩm thực Việt Nam 2025</a> <span>(1,432 lượt xem)</span></li>
                        <li><a href="detail.jsp?id=8">Chính sách hỗ trợ doanh nghiệp nhỏ</a> <span>(1,298 lượt xem)</span></li>
                    </ul>
                </div>

                <!-- 5 bản tin mới nhất -->
                <div class="widget">
                    <h3>📈 5 bản tin mới nhất</h3>
                    <ul>
                        <li><a href="detail.jsp?id=1">Chính phủ công bố chính sách mới về giáo dục</a> <span>28/09/2025</span></li>
                        <li><a href="detail.jsp?id=2">Đội tuyển Việt Nam giành chiến thắng ấn tượng</a> <span>27/09/2025</span></li>
                        <li><a href="detail.jsp?id=3">Kinh tế Việt Nam tăng trưởng mạnh trong quý III</a> <span>26/09/2025</span></li>
                        <li><a href="detail.jsp?id=4">Lễ hội văn hóa truyền thống thu hút hàng nghìn du khách</a> <span>25/09/2025</span></li>
                        <li><a href="detail.jsp?id=9">Khám phá công nghệ blockchain trong tài chính</a> <span>24/09/2025</span></li>
                    </ul>
                </div>

                <!-- Liên hệ -->
                <div class="widget">
                    <h3>📞 Liên hệ</h3>
                    <p><strong>ABC News</strong></p>
                    <p>📧 Email: contact@abcnews.vn</p>
                    <p>📞 Hotline: 1900-1234</p>
                    <p>🏢 Địa chỉ: 123 Đường ABC, Quận 1, TP.HCM</p>
                </div>
            </aside>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p>&copy; 2025 ABC News. Thiết kế bởi Java 3 Assignment.</p>
        </div>
    </footer>

    <script>
        function unsubscribe() {
            if (confirm('Bạn có chắc chắn muốn hủy đăng ký newsletter?')) {
                alert('Đã hủy đăng ký thành công!');
            }
        }
    </script>
</body>
</html>