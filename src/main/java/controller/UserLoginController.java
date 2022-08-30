package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoGeneric;
import model.User;


@WebServlet("/Login")
public class UserLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login;
		String password;
		User user;
		PrintWriter out = response.getWriter();
		
		login = request.getParameter("inputLogin");
		password = request.getParameter("inputPassword");
		user = DaoGeneric.getInstance().hasUser(login, password);
		if(user != null) {
			HttpSession httpSession = request.getSession(true);
			
			httpSession.setAttribute("perfilImg", user.getPartner().getImgPath());
			httpSession.setAttribute("nome", user.getPartner().getName());
			httpSession.setAttribute("cpf", user.getPartner().getDocument());
			httpSession.setAttribute("sexo", user.getPartner().getGender());
			httpSession.setAttribute("dataNasc", user.getPartner().getBirthDate());
			httpSession.setAttribute("listaAdo", user.getPartner().getAdoptions().size());
			httpSession.setAttribute("rua", user.getPartner().getAddress().getStreet());
			httpSession.setAttribute("numero", user.getPartner().getAddress().getNumber());
			httpSession.setAttribute("bairro", user.getPartner().getAddress().getNeighborhood());
			httpSession.setAttribute("cidade", user.getPartner().getAddress().getCity());
			httpSession.setAttribute("estado", user.getPartner().getAddress().getState());
			httpSession.setAttribute("cep", user.getPartner().getAddress().getZipCode());
			httpSession.setAttribute("login", user.getPartner().getEmail());
			httpSession.setAttribute("telefone1", user.getPartner().getPhone1().getNumber());
			httpSession.setAttribute("telefone2", user.getPartner().getPhone2().getNumber());
			
			response.sendRedirect("MeuPerfil.jsp");
		} else {
			response.sendRedirect("LoginError.jsp");
		}
		
		
	}

}
