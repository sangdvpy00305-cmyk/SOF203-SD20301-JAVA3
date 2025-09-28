<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ABC News - Trang chủ</title>
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
                    <h2>Tin tức nổi bật</h2>

                    <!-- Featured Articles -->
                    <div class="article-card">
                        <img src="../../images/news1.jpg" alt="Tin tức 1" class="article-image">
                        <div class="article-content">
                            <h3 class="article-title">
                                <a href="detail.jsp?id=1">Chính phủ công bố chính sách mới về giáo dục</a>
                            </h3>
                            <p class="article-excerpt">
                                Chính phủ vừa ban hành nghị định mới về cải cách giáo dục, tập trung vào việc nâng cao
                                chất lượng đào tạo và phát triển kỹ năng số cho học sinh...
                            </p>
                            <div class="article-meta">
                                <span>Ngày đăng: 28/09/2025</span> |
                                <span>Tác giả: Nguyễn Văn A</span> |
                                <span>Lượt xem: 1,234</span>
                            </div>
                        </div>
                    </div>

                    <div class="article-card">
                        <img src="../../images/news2.jpg" alt="Tin tức 2" class="article-image">
                        <div class="article-content">
                            <h3 class="article-title">
                                <a href="detail.jsp?id=2">Đội tuyển Việt Nam giành chiến thắng ấn tượng</a>
                            </h3>
                            <p class="article-excerpt">
                                Trong trận đấu diễn ra tối qua, đội tuyển Việt Nam đã có màn trình diễn xuất sắc và
                                giành chiến thắng với tỷ số 3-1 trước đối thủ mạnh...
                            </p>
                            <div class="article-meta">
                                <span>Ngày đăng: 27/09/2025</span> |
                                <span>Tác giả: Trần Thị B</span> |
                                <span>Lượt xem: 2,156</span>
                            </div>
                        </div>
                    </div>

                    <div class="article-card">
                        <img src="../../images/news3.jpg" alt="Tin tức 3" class="article-image">
                        <div class="article-content">
                            <h3 class="article-title">
                                <a href="detail.jsp?id=3">Kinh tế Việt Nam tăng trưởng mạnh trong quý III</a>
                            </h3>
                            <p class="article-excerpt">
                                Theo báo cáo mới nhất từ Tổng cục Thống kê, GDP quý III/2025 tăng 7.2% so với cùng kỳ
                                năm trước, đánh dấu mức tăng trưởng cao nhất trong năm...
                            </p>
                            <div class="article-meta">
                                <span>Ngày đăng: 26/09/2025</span> |
                                <span>Tác giả: Lê Văn C</span> |
                                <span>Lượt xem: 987</span>
                            </div>
                        </div>
                    </div>

                    <div class="article-card">
                        <img src="../../images/news4.jpg" alt="Tin tức 4" class="article-image">
                        <div class="article-content">
                            <h3 class="article-title">
                                <a href="detail.jsp?id=4">Lễ hội văn hóa truyền thống thu hút hàng nghìn du khách</a>
                            </h3>
                            <p class="article-excerpt">
                                Lễ hội văn hóa truyền thống diễn ra tại Hà Nội đã thu hút hơn 10,000 du khách trong và
                                ngoài nước tham gia, với nhiều hoạt động đặc sắc...
                            </p>
                            <div class="article-meta">
                                <span>Ngày đăng: 25/09/2025</span> |
                                <span>Tác giả: Phạm Thị D</span> |
                                <span>Lượt xem: 1,543</span>
                            </div>
                        </div>
                    </div>
                </main>

                <!-- Sidebar -->
                <aside class="sidebar">
                    <!-- Thống kê xem nhiều -->
                    <div class="widget">
                        <h3>📊 Thống kê xem nhiều</h3>
                        <ul>
                            <li><a href="detail.jsp?id=2">Đội tuyển Việt Nam giành chiến thắng ấn tượng</a> <span>(2,156
                                    lượt xem)</span></li>
                            <li><a href="detail.jsp?id=5">Công nghệ AI mới được ứng dụng trong y tế</a> <span>(1,876
                                    lượt xem)</span></li>
                            <li><a href="detail.jsp?id=6">Thị trường bất động sản có dấu hiệu phục hồi</a> <span>(1,654
                                    lượt xem)</span></li>
                            <li><a href="detail.jsp?id=7">Lễ hội ẩm thực Việt Nam 2025</a> <span>(1,432 lượt xem)</span>
                            </li>
                            <li><a href="detail.jsp?id=8">Chính sách hỗ trợ doanh nghiệp nhỏ</a> <span>(1,298 lượt
                                    xem)</span></li>
                        </ul>
                    </div>

                    <!-- 5 bản tin mới nhất -->
                    <div class="widget">
                        <h3>📈 5 bản tin mới nhất</h3>
                        <ul>
                            <li><a href="detail.jsp?id=1">Chính phủ công bố chính sách mới về giáo dục</a>
                                <span>28/09/2025</span>
                            </li>
                            <li><a href="detail.jsp?id=2">Đội tuyển Việt Nam giành chiến thắng ấn tượng</a>
                                <span>27/09/2025</span>
                            </li>
                            <li><a href="detail.jsp?id=3">Kinh tế Việt Nam tăng trưởng mạnh trong quý III</a>
                                <span>26/09/2025</span>
                            </li>
                            <li><a href="detail.jsp?id=4">Lễ hội văn hóa truyền thống thu hút hàng nghìn du khách</a>
                                <span>25/09/2025</span>
                            </li>
                            <li><a href="detail.jsp?id=9">Khám phá công nghệ blockchain trong tài chính</a>
                                <span>24/09/2025</span>
                            </li>
                        </ul>
                    </div>

                    <!-- 5 bản tin đã xem -->
                    <div class="widget">
                        <h3>📊 5 bản tin đã bạn đã xem</h3>
                        <ul>
                            <li><a href="detail.jsp?id=10">Xu hướng thời trang Thu-Đông 2025</a> <span>23/09/2025</span>
                            </li>
                            <li><a href="detail.jsp?id=11">Phát triển du lịch bền vững tại Việt Nam</a>
                                <span>22/09/2025</span>
                            </li>
                            <li><a href="detail.jsp?id=12">Ứng dụng trí tuệ nhân tạo trong giáo dục</a>
                                <span>21/09/2025</span>
                            </li>
                            <li><a href="detail.jsp?id=13">Chương trình khuyến mãi mùa thu</a> <span>20/09/2025</span>
                            </li>
                            <li><a href="detail.jsp?id=14">Hội thảo khởi nghiệp cho sinh viên</a>
                                <span>19/09/2025</span>
                            </li>
                        </ul>
                    </div>

                    <!-- Newsletter -->
                    <div class="widget">
                        <h3>📧 Newsletter</h3>
                        <p>Đăng ký nhận bản tin mới nhất từ ABC News</p>
                        <form class="newsletter-form" action="newsletter.jsp" method="post">
                            <input type="email" name="email" placeholder="Nhập email của bạn" required>
                            <button type="submit">Đăng ký</button>
                        </form>
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
    </body>

    </html>