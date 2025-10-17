package poly.servlet;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.file.Path;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import poly.dao.DepartmentDAO;
import poly.dao.DepartmentDAOlmpl;
import poly.dao.EmployeeDAO;
import poly.dao.EmployeeDAOImpl;
import poly.entity.Department;
import poly.entity.Employee;

@MultipartConfig
@WebServlet({ "/employee/index", "/employee/edit/*", "/employee/create", "/employee/update",
        "/employee/delete", "/employee/reset" })
public class EmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        Employee form = new Employee();

        // 👉 Đăng ký converter cho Date để tránh lỗi "DateConverter does not support..."
        DateConverter converter = new DateConverter(null);
        converter.setPattern("yyyy-MM-dd");
        ConvertUtils.register(converter, java.util.Date.class);

        try {
            BeanUtils.populate(form, req.getParameterMap());
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new ServletException(e);
        }
        form.setDepartmentId(req.getParameter("departmentId"));
        EmployeeDAO dao = new EmployeeDAOImpl();
        String path = req.getServletPath();

        // --- Upload ảnh ---
        Part photoPart = req.getPart("photoFile");
        if (photoPart != null && photoPart.getSize() > 0) {
            String fileName = Path.of(photoPart.getSubmittedFileName()).getFileName().toString();
            String uploadDir = req.getServletContext().getRealPath("/uploads");
            File uploadFolder = new File(uploadDir);
            if (!uploadFolder.exists()) uploadFolder.mkdir();
            photoPart.write(uploadDir + File.separator + fileName);
            form.setPhoto(fileName);
        }

        // --- Xử lý CRUD ---
        if (path.contains("edit")) {
            String id = req.getPathInfo();
            if (id != null && id.length() > 1) {
                id = id.substring(1);
                Employee e = dao.findById(id);
                if (e != null)
                    form = e;
            }
        } else if (path.contains("create")) {
            dao.create(form);
            form = new Employee();
        } else if (path.contains("update")) {
            dao.update(form);
        } else if (path.contains("delete")) {
            dao.deleteById(form.getId());
            form = new Employee();
        } else if (path.contains("reset") || path.contains("index")) {
            form = new Employee();
        }

        req.setAttribute("item", form);
        List<Employee> list = dao.findAll();
        req.setAttribute("list", list);
        DepartmentDAO deptDao = new DepartmentDAOlmpl();
        List<Department> departments = deptDao.findAll();
        req.setAttribute("departments", departments);
        req.getRequestDispatcher("/views/employee.jsp").forward(req, resp);
    }
}
