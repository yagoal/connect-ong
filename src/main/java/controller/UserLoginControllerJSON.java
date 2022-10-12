package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import dao.DaoGeneric;
import model.Login;
import model.User;

/**
 * Servlet implementation class UserLoginControllerJSON
 */
@WebServlet("/UserLoginControllerJSON")
public class UserLoginControllerJSON extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginControllerJSON() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gson gson = JsonConfig.getGsonBuilder().create();
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		response.setStatus(201);

		StringBuffer sb = new StringBuffer();
		
		BufferedReader br = request.getReader();
		
		String atributos = null;
		
		while ((atributos = br.readLine()) != null) {
			sb.append(atributos);
		}
	
		Login login = gson.fromJson(sb.toString(), Login.class);
		
		User userLogin = DaoGeneric.getInstance().hasUser(login.login, login.password);
	
		PrintWriter out = response.getWriter();
		out.print(gson.toJson(userLogin));
		out.flush();

	}

}
