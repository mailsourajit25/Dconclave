package onlineForum;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginsubmit
 */
@WebServlet(description = "Contains script for dealing with login", urlPatterns = { "/loginsubmit" })
public class loginsubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public loginsubmit() {
        super();
        
    }

	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
