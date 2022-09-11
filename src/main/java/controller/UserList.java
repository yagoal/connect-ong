package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.DaoGeneric;
import model.User;

/**
 * Servlet implementation class UserList
 */
@WebServlet({ "/UserList", "/users" })
public class UserList extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> users = (List<User>) DaoGeneric.getInstance().retrieveAll(User.class);
		
		Gson gson = new Gson();
		String jsonUsers = gson.toJson(users);
		
		PrintWriter out = response.getWriter();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.setStatus(200);
		response.setHeader("Access-Control-Allow-Origin", "*");
		
		out.write(jsonUsers);
		out.close();
		
	}
}

	