<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC News - Chi tiết bản tin</title>
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
                <!-- Article Detail -->
                <article>
                    <h1>Đội tuyển Việt Nam giành chiến thắng ấn tượng</h1>
                    
                    <div class="article-meta" style="margin-bottom: 2rem; padding-bottom: 1rem; border-bottom: 2px solid #eee;">
                        <span><strong>Ngày đăng:</strong> 27/09/2025</span> | 
                        <span><strong>Tác giả:</strong> Trần Thị B</span> | 
                        <span><strong>Chuyên mục:</strong> <a href="category.jsp?id=3">Thể thao</a></span> |
                        <span><strong>Lượt xem:</strong> 2,156</span>
                    </div>

                    <img src="../../images/sport1.jpg" alt="Đội tuyển Việt Nam" style="width: 100%; height: 400px; object-fit: cover; margin-bottom: 2rem; border-radius: 8px;">

                    <div class="article-body" style="line-height: 1.8; font-size: 1.1rem;">
                        <p><strong>Hà Nội</strong> - Trong trận đấu diễn ra tối qua tại sân vận động Mỹ Đình, đội tuyển Việt Nam đã có màn trình diễn xuất sắc và giành chiến thắng thuyết phục với tỷ số 3-1 trước đối thủ mạnh từ Thái Lan.</p>

                        <p>Trận đấu bắt đầu với sự cân bằng từ hai phía, nhưng đội tuyển Việt Nam đã nhanh chóng tạo ra được những cơ hội nguy hiểm. Bàn thắng mở tỷ số được ghi ở phút thứ 23 bởi tiền đạo Nguyễn Tiến Linh sau một pha phối hợp ăn ý với Phan Văn Đức.</p>

                        <p>Hiệp hai, đội khách Thái Lan đã có những phản ứng tích cực và gỡ hòa 1-1 ở phút 58. Tuy nhiên, sự kiên cường và tinh thần chiến đấu cao của các cầu thủ Việt Nam đã giúp họ lật ngược tình thế một cách ngoạn mục.</p>

                        <p>Bàn thắng thứ hai của Việt Nam được ghi ở phút 72 bởi Hoàng Đức sau một cú sút xa đẹp mắt. Không dừng lại ở đó, đội tuyển Việt Nam tiếp tục tấn công và có bàn thắng thứ ba ở phút 85 do công của Nguyễn Quang Hải.</p>

                        <p>Huấn luyện viên Park Hang-seo bày tỏ sự hài lòng với màn trình diễn của các học trò: "Tôi rất tự hào về tinh thần thi đấu của các cầu thủ. Họ đã thể hiện được sự đoàn kết và kỹ thuật cao trong trận đấu này."</p>

                        <p>Chiến thắng này giúp đội tuyển Việt Nam củng cố vị trí đầu bảng và tiến gần hơn đến tấm vé tham dự vòng chung kết. Trận đấu tiếp theo, đội tuyển Việt Nam sẽ gặp Malaysia vào ngày 15/10 tới đây.</p>

                        <p>Với phong độ hiện tại, người hâm mộ có quyền hy vọng vào một kết quả tích cực trong những trận đấu sắp tới của đội tuyển quốc gia.</p>
                    </div>
                </article>

                <!-- Related Articles -->
                <div style="margin-top: 3rem; padding-top: 2rem; border-top: 2px solid #eee;">
                    <h3>Tin tức cùng chuyên mục</h3>
                    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 1rem; margin-top: 1rem;">
                        <div class="article-card">
                            <img src="../../images/sport2.jpg" alt="Tin liên quan 1" class="article-image" style="height: 150px;">
                            <div class="article-content">
                                <h4 class="article-title" style="font-size: 1rem;">
                                    <a href="detail.jsp?id=15">Giải bóng đá vô địch quốc gia 2025 khởi tranh</a>
                                </h4>
                                <div class="article-meta">
                                    <span>26/09/2025</span> | <span>1,789 lượt xem</span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="article-card">
                            <img src="../../images/sport3.jpg" alt="Tin liên quan 2" class="article-image" style="height: 150px;">
                            <div class="article-content">
                                <h4 class="article-title" style="font-size: 1rem;">
                                    <a href="detail.jsp?id=16">VĐV Nguyễn Thị Oanh phá kỷ lục SEA Games</a>
                                </h4>
                                <div class="article-meta">
                                    <span>25/09/2025</span> | <span>1,432 lượt xem</span>
                                </div>
                            </div>
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