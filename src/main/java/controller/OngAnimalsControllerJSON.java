package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import dao.DaoGeneric;
import model.Animal;
import model.ListAnimals;
import model.User;

import java.util.ArrayList;
import java.util.List;

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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}

}
