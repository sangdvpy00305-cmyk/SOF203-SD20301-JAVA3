package lab3;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;
@WebServlet("/sang")
public class servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
    	List<Country> list = List.of(
    		    new Country("VN", "Việt Nam"),
    		    new Country("US", "United States"),
    		    new Country("CN", "China")
    		);

    		req.setAttribute("countries", list);
    		req.getRequestDispatcher("/views/country.jsp").forward(req, resp);

    }
}
