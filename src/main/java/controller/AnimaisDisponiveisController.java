package controller;
import model.Id;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.DaoGeneric;
import dto.IdDto;
import model.Adoption;
import model.Animal;
import model.User;


/**
 * Servlet implementation class AnimaisDisponíveisController
 */
@WebServlet("/Animals")
public class AnimaisDisponiveisController extends HttpServlet {
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
			List<Animal> animais = (List<Animal>)DaoGeneric.getInstance().retrieveAll(Animal.class);
			
			Gson gson = new Gson();
			
			PrintWriter out = response.getWriter();
			out.print(gson.toJson(animais));
			out.flush();
		}
		
	}

	/**
	 *
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession httpSession = request.getSession(true);
		
		response.setContentType("application/json");
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setCharacterEncoding("utf-8");
		response.setStatus(200);
		
		Gson gson = new Gson();
		StringBuffer sb = new StringBuffer();
		
		BufferedReader br = request.getReader();
		
		String atributos = null;
		
		while ((atributos = br.readLine()) != null) {
			sb.append(atributos);
		}

		System.out.println(atributos);
		IdDto id = gson.fromJson(sb.toString(), IdDto.class);

		Animal animalPost = (Animal)DaoGeneric.getInstance().retrieveById(Animal.class, id.id);
		System.out.println(animalPost.getName());
		animalPost.setAvailability(false);

		String userId = request.getSession().getAttribute("userId").toString();
		System.out.println("Meu ID:" + userId + "************");
		
		User user = (User) DaoGeneric.getInstance().retrieveById(User.class, Integer.parseInt(userId));

		Adoption adoption = new Adoption(new Date(), animalPost);

		List<Adoption> adoptions = user.getAdoptions();

		adoptions.add(adoption);

		user.setAdoptions(adoptions);

		httpSession.setAttribute("listaAdo", user.getAdoptions().size());

		DaoGeneric.getInstance().save(animalPost);
		DaoGeneric.getInstance().save(user);

		// Resposta vazia a quem enviou a requisição
		Map <String, String> emptyResponse = new HashMap<String, String>();
		PrintWriter out = response.getWriter();
		out.print(gson.toJson(emptyResponse));
		out.flush();
		
	}

}


