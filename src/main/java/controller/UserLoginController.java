package controller;

import java.io.IOException;
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
		
		login = request.getParameter("inputLogin");
		password = request.getParameter("inputPassword");
		user = DaoGeneric.getInstance().hasUser(login, password);
		if(user != null) {
			HttpSession httpSession = request.getSession(true);
			
			httpSession.setAttribute("userId", user.getId());
			httpSession.setAttribute("perfilImg", user.getImgPath());
			httpSession.setAttribute("nome", user.getName());
			httpSession.setAttribute("cpf", user.getDocument());
			httpSession.setAttribute("listaAnimais", user.getAnimals().size());
			httpSession.setAttribute("sexo", user.getGender());
			httpSession.setAttribute("dataNasc", user.getBirthDate());
			httpSession.setAttribute("listaAdo", user.getAdoptions().size());
			httpSession.setAttribute("rua", user.getAddress().getStreet());
			httpSession.setAttribute("numero", user.getAddress().getNumber());
			httpSession.setAttribute("bairro", user.getAddress().getNeighborhood());
			httpSession.setAttribute("cidade", user.getAddress().getCity());
			httpSession.setAttribute("estado", user.getAddress().getState());
			httpSession.setAttribute("cep", user.getAddress().getZipCode());
			httpSession.setAttribute("login", user.getEmail());
			httpSession.setAttribute("telefone1", user.getPhone1().getNumber());
			httpSession.setAttribute("telefone2", user.getPhone2().getNumber());
			
			if(user.getDocType().equals("cpf")) {
				response.sendRedirect("MeuPerfil.jsp");				
			} else {
				response.sendRedirect("OngPerfil.jsp");
			}
		} else {
			response.sendRedirect("LoginError.jsp");
		}
		
		
	}

}
