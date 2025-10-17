package poly.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import poly.dao.DepartmentDAO;
import poly.dao.DepartmentDAOlmpl;
import poly.entity.Department;

@WebServlet({ "/department/index", "/department/edit/*", "/department/create", "/department/update",
		"/department/delete", "/department/reset" })
public class DepartmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Department form = new Department();
		try {
			BeanUtils.populate(form, req.getParameterMap());
		} catch (IllegalAccessException | InvocationTargetException e) {
			throw new ServletException(e);
		}

		DepartmentDAO dao = new DepartmentDAOlmpl();
		String path = req.getServletPath();

		if (path.contains("edit")) {
			// /department/edit/{id}
			String id = req.getPathInfo();
			if (id != null && id.length() > 1) {
				id = id.substring(1);
				Department d = dao.findById(id);
				if (d != null)
					form = d;
			}
		} else if (path.contains("create")) {
			dao.create(form);
			form = new Department();
		} else if (path.contains("update")) {
			dao.update(form);
		} else if (path.contains("delete")) {
			dao.deleteById(form.getId());
			form = new Department();
		} else if (path.contains("reset") || path.contains("index")) {
			form = new Department();
		}

		req.setAttribute("item", form);
		List<Department> list = dao.findAll();
		req.setAttribute("list", list);
		req.getRequestDispatcher("/department/index.jsp").forward(req, resp);
	}
}
