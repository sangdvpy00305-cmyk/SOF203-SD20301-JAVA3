package bai3;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utils.Base64Utils;
@WebServlet("/login")

public class LoginServlet extends HttpServlet {

	@Override
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("user")) {
					String encoded = cookie.getValue();
					String decodedText = Base64Utils.decode(encoded);
					
                    String[] userInfo = decodedText.split(",");
					//Gọi trực tiếp phương thức split() trên đối tượng decodedText hiện có.
					
                    
                 // Kiểm tra xem mảng có đúng 2 phần tử (username và password) hay không.
                    if (userInfo.length == 2) { 
                        // Nếu kiểm tra thành công, đảm bảo rằng cả userInfo[0] và userInfo[1] đều tồn tại.
                        req.setAttribute("username", userInfo[0]); // An toàn: Gán username từ phần tử 0.
                        req.setAttribute("password", userInfo[1]); // An toàn: Gán password từ phần tử 1.
                    }
                    // Nếu userInfo.length khác 2 (ví dụ: 1, 3, hoặc 0), chương trình sẽ bỏ qua khối lệnh 
                    // và không gán các thuộc tính "username" và "password" để tránh lỗi.
				}
			}
		}
		// 2. Forward to JSP
		req.getRequestDispatcher("/b3/bai3.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		// Lấy giá trị của hộp kiểm "Ghi nhớ đăng nhập" từ form.
		// Tên tham số là "rememberMe" (camelCase), khác với đoạn code 1.
		String remember = req.getParameter("rememberMe"); 

		// LẤY HOẶC TẠO SESSION: Truy cập phiên làm việc hiện tại của người dùng.
		// Nếu người dùng chưa có session nào, một session mới sẽ được tạo ra.
		HttpSession session = req.getSession(); 
		
		   if ("FPT".equalsIgnoreCase(username) && "poly".equals(password)) {
			req.setAttribute("message", "Login successfully!");
			// Sử dụng "sessionUsername": Khóa này rõ ràng hơn vì nó chỉ ra rằng dữ liệu này dành cho Session
			//giúp dễ phân biệt với các biến hoặc thuộc tính khác trong dự án.
            session.setAttribute("sessionUsername", username);
            
			if (remember != null) {
				String value = username + "," + password;
				String userInfo = Base64Utils.encode(value);
				Cookie cookie = new Cookie("user", userInfo);
				cookie.setMaxAge(24 * 60 * 60); // hiệu lực 24 giờ
				cookie.setPath("/"); // hiệu lực toàn ứng dụng
				// Gửi về trình duyệt
				resp.addCookie(cookie); // cookie
			}
		} else {
			// 1. Xóa trạng thái đăng nhập cũ: Xóa username khỏi session.
		    // Điều này đảm bảo rằng người dùng không còn được coi là đã đăng nhập 
		    // từ một phiên làm việc cũ nếu việc login mới thất bại.
		    session.removeAttribute("sessionUsername");
		 // 2. Thông báo lỗi: Gán thông báo lỗi vào thuộc tính "message" của request.
			req.setAttribute("message", "Invalid login info!");
		}
		req.getRequestDispatcher("/b3/bai3.jsp").forward(req, resp);
	}
}
