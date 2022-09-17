package controller;
import model.Id;
import java.io.BufferedReader;
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
import model.Animal;
import model.User;


/**
 * Servlet implementation class AnimaisDisponíveisController
 */
@WebServlet("/Animals")
public class AnimaisDisponíveisController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.setStatus(200);
		response.setHeader("Access-Control-Allow-Origin", "*");
		
		List<Animal> animais = (List<Animal>)DaoGeneric.getInstance().retrieveAll(Animal.class);
		
		
		Gson gson = new Gson();
		
		PrintWriter out = response.getWriter();
		out.print(gson.toJson(animais));
		out.flush();
	}
	
	/**
	 *
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		response.setStatus(201);
		response.setHeader("Access-Control-Allow-Origin", "*");
		
		Gson gson = new Gson();
		StringBuffer sb = new StringBuffer();
		
		BufferedReader br = request.getReader();
		
		String atributos = null;
		
		while ((atributos = br.readLine()) != null) {
			sb.append(atributos);
		}
		
		Id id = gson.fromJson(sb.toString(), Id.class);
		
		Animal animalPost = (Animal)DaoGeneric.getInstance().retrieveById(Animal.class, id.id);
		System.out.println(animalPost.getName());
		animalPost.setAvailability(false);
		
		DaoGeneric.getInstance().delete(animalPost);
	}

}


