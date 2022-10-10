package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.DaoGeneric;
import model.User;

/**
 * Servlet implementation class OngsDisponiveisController
 */
@WebServlet("/Ongs")
public class OngsDisponiveisController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setStatus(200);
		
		
		HttpSession httpSession = request.getSession();
		if (httpSession.getAttribute("userId") == null) {
			response.sendRedirect("Login.jsp");
		} else {
			List<User> ongs = (List<User>)DaoGeneric.getInstance().retrieveUsersCnpj();
			
			Gson gson = new Gson();
			
			PrintWriter out = response.getWriter();
			out.print(gson.toJson(ongs));
			out.flush();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
