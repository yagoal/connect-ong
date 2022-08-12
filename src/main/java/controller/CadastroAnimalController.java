package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoGeneric;
import model.Animal;


@WebServlet("/RegisterSuccess")
public class CadastroAnimalController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome;
		String especie;
		String pelo;
		
		nome = request.getParameter("inputName");
		especie = request.getParameter("inputEspecie");
		pelo = request.getParameter("inputPelo");
		
		Animal animal = new Animal();
		animal.setName(nome);
		animal.setSpecie(especie);
		animal.setBreed(pelo);
		
		DaoGeneric.getInstance().save(animal);
		
		PrintWriter out = response.getWriter();
		out.print("salvo");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome;
		String especie;
		String pelo;
		
		nome = request.getParameter("inputName");
		especie = request.getParameter("inputEspecie");
		pelo = request.getParameter("inputPelo");
		
		Animal animal = new Animal();
		animal.setName(nome);
		animal.setSpecie(especie);
		animal.setBreed(pelo);
		
		DaoGeneric.getInstance().save(animal);
		
		PrintWriter out = response.getWriter();
		out.print("salvo");
	}

}
