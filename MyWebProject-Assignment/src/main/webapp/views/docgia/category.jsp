<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC News - Danh sách tin tức</title>
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
                <h2>Tin tức - Thể thao</h2>
                <p>Danh sách các bản tin thuộc chuyên mục Thể thao</p>
                
                <!-- Articles List -->
                <div class="article-card">
                    <img src="../../images/sport1.jpg" alt="Thể thao 1" class="article-image">
                    <div class="article-content">
                        <h3 class="article-title">
                            <a href="detail.jsp?id=2">Đội tuyển Việt Nam giành chiến thắng ấn tượng</a>
                        </h3>
                        <p class="article-excerpt">
                            Trong trận đấu diễn ra tối qua, đội tuyển Việt Nam đã có màn trình diễn xuất sắc và giành chiến thắng với tỷ số 3-1 trước đối thủ mạnh. Các cầu thủ đã thể hiện tinh thần đoàn kết và kỹ thuật cao...
                        </p>
                        <div class="article-meta">
                            <span>Ngày đăng: 27/09/2025</span> | 
                            <span>Tác giả: Trần Thị B</span> | 
                            <span>Lượt xem: 2,156</span>
                        </div>
                    </div>
                </div>

                <div class="article-card">
                    <img src="../../images/sport2.jpg" alt="Thể thao 2" class="article-image">
                    <div class="article-content">
                        <h3 class="article-title">
                            <a href="detail.jsp?id=15">Giải bóng đá vô địch quốc gia 2025 khởi tranh</a>
                        </h3>
                        <p class="article-excerpt">
                            Giải bóng đá vô địch quốc gia 2025 chính thức khởi tranh với sự tham gia của 14 đội bóng mạnh nhất cả nước. Trận khai mạc giữa Hà Nội FC và TP.HCM FC hứa hẹn sẽ rất hấp dẫn...
                        </p>
                        <div class="article-meta">
                            <span>Ngày đăng: 26/09/2025</span> | 
                            <span>Tác giả: Nguyễn Văn E</span> | 
                            <span>Lượt xem: 1,789</span>
                        </div>
                    </div>
                </div>

                <div class="article-card">
                    <img src="../../images/sport3.jpg" alt="Thể thao 3" class="article-image">
                    <div class="article-content">
                        <h3 class="article-title">
                            <a href="detail.jsp?id=16">VĐV Nguyễn Thị Oanh phá kỷ lục SEA Games</a>
                        </h3>
                        <p class="article-excerpt">
                            Tại giải điền kinh châu Á 2025, VĐV Nguyễn Thị Oanh đã xuất sắc phá kỷ lục SEA Games ở nội dung chạy 1500m với thành tích 4 phút 05 giây 23. Đây là lần thứ 3 cô phá kỷ lục trong năm nay...
                        </p>
                        <div class="article-meta">
                            <span>Ngày đăng: 25/09/2025</span> | 
                            <span>Tác giả: Lê Thị F</span> | 
                            <span>Lượt xem: 1,432</span>
                        </div>
                    </div>
                </div>

                <div class="article-card">
                    <img src="../../images/sport4.jpg" alt="Thể thao 4" class="article-image">
                    <div class="article-content">
                        <h3 class="article-title">
                            <a href="detail.jsp?id=17">Khai mạc giải tennis quốc tế Việt Nam Open 2025</a>
                        </h3>
                        <p class="article-excerpt">
                            Giải tennis quốc tế Việt Nam Open 2025 chính thức khai mạc tại Trung tâm Tennis Quốc gia với sự tham gia của hơn 100 tay vợt từ 25 quốc gia và vùng lãnh thổ trên thế giới...
                        </p>
                        <div class="article-meta">
                            <span>Ngày đăng: 24/09/2025</span> | 
                            <span>Tác giả: Phạm Văn G</span> | 
                            <span>Lượt xem: 1,123</span>
                        </div>
                    </div>
                </div>

                <div class="article-card">
                    <img src="../../images/sport5.jpg" alt="Thể thao 5" class="article-image">
                    <div class="article-content">
                        <h3 class="article-title">
                            <a href="detail.jsp?id=18">Chương trình phát triển thể thao học đường</a>
                        </h3>
                        <p class="article-excerpt">
                            Bộ Giáo dục và Đào tạo phối hợp với Bộ Văn hóa, Thể thao và Du lịch triển khai chương trình phát triển thể thao học đường nhằm nâng cao thể lực và sức khỏe cho học sinh...
                        </p>
                        <div class="article-meta">
                            <span>Ngày đăng: 23/09/2025</span> | 
                            <span>Tác giả: Trần Văn H</span> | 
                            <span>Lượt xem: 876</span>
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
                        <li><a href="detail.jsp?id=2">Đội tuyển Việt Nam giành chiến thắng ấn tượng</a> <span>(2,156 lượt xem)</span></li>
                        <li><a href="detail.jsp?id=15">Giải bóng đá vô địch quốc gia 2025 khởi tranh</a> <span>(1,789 lượt xem)</span></li>
                        <li><a href="detail.jsp?id=16">VĐV Nguyễn Thị Oanh phá kỷ lục SEA Games</a> <span>(1,432 lượt xem)</span></li>
                        <li><a href="detail.jsp?id=17">Khai mạc giải tennis quốc tế Việt Nam Open 2025</a> <span>(1,123 lượt xem)</span></li>
                        <li><a href="detail.jsp?id=18">Chương trình phát triển thể thao học đường</a> <span>(876 lượt xem)</span></li>
                    </ul>
                </div>

                <!-- 5 bản tin mới nhất -->
                <div class="widget">
                    <h3>📈 5 bản tin mới nhất</h3>
                    <ul>
                        <li><a href="detail.jsp?id=2">Đội tuyển Việt Nam giành chiến thắng ấn tượng</a> <span>27/09/2025</span></li>
                        <li><a href="detail.jsp?id=15">Giải bóng đá vô địch quốc gia 2025 khởi tranh</a> <span>26/09/2025</span></li>
                        <li><a href="detail.jsp?id=16">VĐV Nguyễn Thị Oanh phá kỷ lục SEA Games</a> <span>25/09/2025</span></li>
                        <li><a href="detail.jsp?id=17">Khai mạc giải tennis quốc tế Việt Nam Open 2025</a> <span>24/09/2025</span></li>
                        <li><a href="detail.jsp?id=18">Chương trình phát triển thể thao học đường</a> <span>23/09/2025</span></li>
                    </ul>
                </div>

                <!-- 5 bản tin đã xem -->
                <div class="widget">
                    <h3>📊 5 bản tin đã bạn đã xem</h3>
                    <ul>
                        <li><a href="detail.jsp?id=10">Xu hướng thời trang Thu-Đông 2025</a> <span>23/09/2025</span></li>
                        <li><a href="detail.jsp?id=11">Phát triển du lịch bền vững tại Việt Nam</a> <span>22/09/2025</span></li>
                        <li><a href="detail.jsp?id=12">Ứng dụng trí tuệ nhân tạo trong giáo dục</a> <span>21/09/2025</span></li>
                        <li><a href="detail.jsp?id=13">Chương trình khuyến mãi mùa thu</a> <span>20/09/2025</span></li>
                        <li><a href="detail.jsp?id=14">Hội thảo khởi nghiệp cho sinh viên</a> <span>19/09/2025</span></li>
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