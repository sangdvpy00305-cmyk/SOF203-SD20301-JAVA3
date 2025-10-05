package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig
@WebServlet("/upload")
public class UploadServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/b4/upload.jsp").forward(req, resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String fullname = req.getParameter("fullname");
        Part photo = req.getPart("photo");
        String path = "/static/file/" + photo.getSubmittedFileName();
        String filename = req.getServletContext().getRealPath(path);
        photo.write(filename);
        req.getRequestDispatcher("/b4/upload.jsp").forward(req, resp);
    }
}