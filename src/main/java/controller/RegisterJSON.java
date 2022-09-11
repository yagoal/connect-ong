package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.DaoGeneric;
import model.User;

/**
 * Servlet implementation class RegisterJSON
 */
@WebServlet(urlPatterns = "/RegisterJSON")
public class RegisterJSON extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterJSON() {
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
		
		Gson gson = new Gson();
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		response.setStatus(201);
		
		StringBuffer sb = new StringBuffer();
		
		BufferedReader br = request.getReader();
		
		String atributos = null;
		
		while ((atributos = br.readLine()) != null) {
			sb.append(atributos);
		}
		
		User user = gson.fromJson(sb.toString(), User.class);
		
//		user.setLogin(user.getPartner().getEmail());
		
		PrintWriter pw = response.getWriter();
		
		
		DaoGeneric.getInstance().save(user);
	}

}
