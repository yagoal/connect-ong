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
import model.Adoption;
import model.Animal;
import model.Id;
import model.ListAnimals;
import model.User;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Servlet implementation class OngAnimalsControllerJSON
 */
@WebServlet("/OngAnimalsControllerJSON")
public class OngAnimalsControllerJSON extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public OngAnimalsControllerJSON() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Gson gson = JsonConfig.getGsonBuilder().create();
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		response.setStatus(201);
		
		List<Animal> animals = (List<Animal>) DaoGeneric.getInstance().retrieveAll(Animal.class);
		
		List<Animal> animalsAvailable = new ArrayList<Animal>();
		
		for (Animal animal: animals) {
			if (animal.getAvailability()) {
				animalsAvailable.add(animal);
			}
		}
		
		ListAnimals listAnimals = new ListAnimals(animalsAvailable);
		
		String animalsJson = gson.toJson(listAnimals);
		PrintWriter out = response.getWriter();
		out.print(animalsJson);
		out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
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

		Id id = gson.fromJson(sb.toString(), Id.class);
		System.out.println(id); 
	
		Animal animal = (Animal) DaoGeneric.getInstance().retrieveById(Animal.class, id.idAnimal);
		User user = (User) DaoGeneric.getInstance().retrieveById(User.class, id.idUser);

		animal.setAvailability(false);

		Adoption adoption = new Adoption(new Date(), animal);

		List<Adoption> adoptions = user.getAdoptions();

		adoptions.add(adoption);

		DaoGeneric.getInstance().save(animal);
		DaoGeneric.getInstance().save(user);

		// Resposta vazia a quem enviou a requisição
		Map <String, String> emptyResponse = new HashMap<String, String>();
		PrintWriter out = response.getWriter();
		out.print(gson.toJson(emptyResponse));
		out.flush();
	}

}
