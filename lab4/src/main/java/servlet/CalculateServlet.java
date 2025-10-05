package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({"/calculate/add", "/calculate/sub"})
public class CalculateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        req.setAttribute("message", "Nhập số và chọn phép tính");
        req.getRequestDispatcher("/b2/calculate.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
            String a = req.getParameter("a");
            String b = req.getParameter("b");
            String path = req.getServletPath();

            if (path.endsWith("/add")) {
                double c = Double.valueOf(a) + Double.valueOf(b);
                req.setAttribute("message", a + " + " + b + " = " + c);
            } else {
                double c = Double.valueOf(a) - Double.valueOf(b);
                req.setAttribute("message", a + " - " + b + " = " + c);
            }
            req.getRequestDispatcher("/b2/calculate.jsp").forward(req, resp);
    }
}




