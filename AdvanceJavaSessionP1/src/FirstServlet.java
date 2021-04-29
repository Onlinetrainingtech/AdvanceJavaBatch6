

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FirstServlet
 */
@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		
		String e1=req.getParameter("email");
		
		if(e1.equals("admin@gmail.com"))
		{
			HttpSession sess=req.getSession();
			
			sess.setAttribute("j1",e1);
			
			resp.sendRedirect("SecondServlet");
		}
		else
		{
			out.println("LoginFail!!");
		}
			
	}

}
