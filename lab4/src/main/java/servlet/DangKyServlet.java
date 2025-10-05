package servlet;

import java.io.IOException;
import java.util.Arrays;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/dangky")
public class DangKyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Hiển thị form (chuyển hướng sang JSP)
        req.getRequestDispatcher("/b3/dangky.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // Đọc các tham số từ form
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String gender = req.getParameter("gender");
        String married = req.getParameter("married");
        String country = req.getParameter("country");
        String[] hobbies = req.getParameterValues("hobbies");
        String note = req.getParameter("note");

        // In ra console kiểm tra
        System.out.println("Tên đăng nhập: " + username);
        System.out.println("Mật khẩu: " + password);
        System.out.println("Giới tính: " + gender);
        System.out.println("Đã có gia đình: " + married);
        System.out.println("Quốc tịch: " + country);
        System.out.println("Sở thích: " + Arrays.toString(hobbies));
        System.out.println("Ghi chú: " + note);

        // Gửi lại thông báo ra JSP
        req.setAttribute("message", "Đăng ký thành công cho " + username);
        req.getRequestDispatcher("/b3/dangky.jsp").forward(req, resp);
    }
}
