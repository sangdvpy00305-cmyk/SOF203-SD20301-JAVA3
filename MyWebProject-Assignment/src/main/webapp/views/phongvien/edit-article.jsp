<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC News - Viết/Sửa bài</title>
    <link rel="stylesheet" href="../../css/style.css">
    <style>
        .editor-toolbar {
            background: #f8f9fa;
            padding: 0.5rem;
            border: 1px solid #ddd;
            border-bottom: none;
            border-radius: 4px 4px 0 0;
        }
        .editor-toolbar button {
            background: none;
            border: 1px solid #ddd;
            padding: 0.3rem 0.6rem;
            margin: 0 0.2rem;
            cursor: pointer;
            border-radius: 3px;
        }
        .editor-toolbar button:hover {
            background: #e9ecef;
        }
        .content-editor {
            border-radius: 0 0 4px 4px;
            border-top: none;
        }
    </style>
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
                <h2>✍️ Viết bài mới</h2>
                <a href="manage-articles.jsp" class="btn btn-warning">← Quay lại danh sách</a>
            </div>

            <!-- Article Form -->
            <form action="ArticleController" method="post" enctype="multipart/form-data">
                <input type="hidden" name="action" value="save">
                <input type="hidden" name="id" value="">
                
                <div class="article-card">
                    <div class="article-content">
                        <h3>📝 Thông tin bài viết</h3>
                        
                        <div style="display: grid; grid-template-columns: 2fr 1fr; gap: 2rem;">
                            <div>
                                <div class="form-group">
                                    <label for="title">Tiêu đề bài viết: *</label>
                                    <input type="text" id="title" name="title" placeholder="Nhập tiêu đề bài viết..." required>
                                </div>

                                <div class="form-group">
                                    <label for="category">Chuyên mục: *</label>
                                    <select id="category" name="categoryId" required>
                                        <option value="">-- Chọn chuyên mục --</option>
                                        <option value="1">Văn hóa</option>
                                        <option value="2">Pháp luật</option>
                                        <option value="3">Thể thao</option>
                                        <option value="4">Kinh tế</option>
                                        <option value="5">Giải trí</option>
                                        <option value="6">Công nghệ</option>
                                        <option value="7">Giáo dục</option>
                                        <option value="8">Y tế</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div>
                                <div class="form-group">
                                    <label for="image">Hình ảnh đại diện:</label>
                                    <input type="file" id="image" name="image" accept="image/*" onchange="previewImage(this)">
                                </div>
                                
                                <div class="form-group">
                                    <img id="imagePreview" src="../../images/placeholder.jpg" alt="Preview" 
                                         style="width: 100%; height: 200px; object-fit: cover; border: 1px solid #ddd; border-radius: 4px;">
                                </div>
                                
                                <div class="form-group">
                                    <label>
                                        <input type="checkbox" name="home" value="true"> Hiển thị trên trang chủ
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="article-card">
                    <div class="article-content">
                        <h3>📄 Nội dung bài viết</h3>
                        
                        <!-- Editor Toolbar -->
                        <div class="editor-toolbar">
                            <button type="button" onclick="formatText('bold')"><b>B</b></button>
                            <button type="button" onclick="formatText('italic')"><i>I</i></button>
                            <button type="button" onclick="formatText('underline')"><u>U</u></button>
                            <button type="button" onclick="insertList()">• List</button>
                            <button type="button" onclick="insertLink()">🔗 Link</button>
                            <button type="button" onclick="insertImage()">🖼️ Ảnh</button>
                        </div>
                        
                        <div class="form-group">
                            <textarea id="content" name="content" class="content-editor" 
                                      placeholder="Nhập nội dung bài viết..." 
                                      style="height: 400px; resize: vertical;" required></textarea>
                        </div>
                        
                        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 1rem;">
                            <div class="form-group">
                                <label for="tags">Tags (phân cách bằng dấu phẩy):</label>
                                <input type="text" id="tags" name="tags" placeholder="ví dụ: thể thao, bóng đá, việt nam">
                            </div>
                            
                            <div class="form-group">
                                <label for="author">Tác giả:</label>
                                <input type="text" id="author" name="author" value="Nguyễn Văn A" readonly>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Action Buttons -->
                <div class="article-card">
                    <div class="article-content">
                        <h3>⚡ Thao tác</h3>
                        <div style="display: flex; gap: 1rem; flex-wrap: wrap;">
                            <button type="submit" name="status" value="draft" class="btn btn-warning">
                                💾 Lưu bản nháp
                            </button>
                            <button type="submit" name="status" value="pending" class="btn btn-primary">
                                📤 Gửi duyệt
                            </button>
                            <button type="submit" name="status" value="published" class="btn btn-success">
                                🚀 Xuất bản ngay
                            </button>
                            <button type="button" class="btn btn-danger" onclick="clearForm()">
                                🗑️ Xóa tất cả
                            </button>
                            <button type="button" class="btn btn-primary" onclick="previewArticle()">
                                👁️ Xem trước
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p>&copy; 2025 ABC News. Thiết kế bởi Java 3 Assignment.</p>
        </div>
    </footer>

    <script>
        function previewImage(input) {
            if (input.files && input.files[0]) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    document.getElementById('imagePreview').src = e.target.result;
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

        function formatText(command) {
            const textarea = document.getElementById('content');
            const start = textarea.selectionStart;
            const end = textarea.selectionEnd;
            const selectedText = textarea.value.substring(start, end);
            
            let formattedText = '';
            switch(command) {
                case 'bold':
                    formattedText = `**${selectedText}**`;
                    break;
                case 'italic':
                    formattedText = `*${selectedText}*`;
                    break;
                case 'underline':
                    formattedText = `<u>${selectedText}</u>`;
                    break;
            }
            
            textarea.value = textarea.value.substring(0, start) + formattedText + textarea.value.substring(end);
            textarea.focus();
        }

        function insertList() {
            const textarea = document.getElementById('content');
            const cursorPos = textarea.selectionStart;
            const textBefore = textarea.value.substring(0, cursorPos);
            const textAfter = textarea.value.substring(cursorPos);
            
            textarea.value = textBefore + '\n• Mục 1\n• Mục 2\n• Mục 3\n' + textAfter;
            textarea.focus();
        }

        function insertLink() {
            const url = prompt('Nhập URL:');
            const text = prompt('Nhập text hiển thị:');
            if (url && text) {
                const textarea = document.getElementById('content');
                const cursorPos = textarea.selectionStart;
                const textBefore = textarea.value.substring(0, cursorPos);
                const textAfter = textarea.value.substring(cursorPos);
                
                textarea.value = textBefore + `[${text}](${url})` + textAfter;
                textarea.focus();
            }
        }

        function insertImage() {
            const url = prompt('Nhập URL hình ảnh:');
            const alt = prompt('Nhập mô tả hình ảnh:');
            if (url) {
                const textarea = document.getElementById('content');
                const cursorPos = textarea.selectionStart;
                const textBefore = textarea.value.substring(0, cursorPos);
                const textAfter = textarea.value.substring(cursorPos);
                
                textarea.value = textBefore + `![${alt || 'Hình ảnh'}](${url})` + textAfter;
                textarea.focus();
            }
        }

        function clearForm() {
            if (confirm('Bạn có chắc chắn muốn xóa tất cả nội dung?')) {
                document.querySelector('form').reset();
                document.getElementById('imagePreview').src = '../../images/placeholder.jpg';
            }
        }

        function previewArticle() {
            const title = document.getElementById('title').value;
            const content = document.getElementById('content').value;
            
            if (!title || !content) {
                alert('Vui lòng nhập tiêu đề và nội dung trước khi xem trước!');
                return;
            }
            
            const previewWindow = window.open('', '_blank');
            previewWindow.document.write(`
                <html>
                <head>
                    <title>Xem trước: ${title}</title>
                    <link rel="stylesheet" href="../../css/style.css">
                </head>
                <body>
                    <div class="container">
                        <div class="content">
                            <h1>${title}</h1>
                            <div style="white-space: pre-wrap; line-height: 1.6;">${content}</div>
                        </div>
                    </div>
                </body>
                </html>
            `);
        }

        // Auto-save functionality
        setInterval(function() {
            const title = document.getElementById('title').value;
            const content = document.getElementById('content').value;
            
            if (title || content) {
                localStorage.setItem('article_draft', JSON.stringify({
                    title: title,
                    content: content,
                    timestamp: new Date().toISOString()
                }));
            }
        }, 30000); // Auto-save every 30 seconds

        // Load draft on page load
        window.onload = function() {
            const draft = localStorage.getItem('article_draft');
            if (draft) {
                const data = JSON.parse(draft);
                if (confirm('Có bản nháp được lưu từ ' + new Date(data.timestamp).toLocaleString() + '. Bạn có muốn khôi phục?')) {
                    document.getElementById('title').value = data.title;
                    document.getElementById('content').value = data.content;
                }
            }
        };
    </script>
</body>
</html>