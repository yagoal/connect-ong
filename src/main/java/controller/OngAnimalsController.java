package controller;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class OngAnimalsConstroller
 */
@WebServlet("/OngAnimalsConstroller")
public class OngAnimalsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("Access-Control-Allow-Origin", "*");
		
		HttpSession httpSession = request.getSession();
		
		System.out.println(request.getParameter("id"));
		Integer id = Integer.parseInt(request.getParameter("id"));
		httpSession.setAttribute("ongId", id);

	}
	
}
