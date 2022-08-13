package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoGeneric;
import model.User;
import model.Address;
import model.Partner;
import model.Phone;


/**
 * Servlet implementation class RegisterUserController
 */
@WebServlet("/RegisterUserController")
public class RegisterUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Partner partner = new Partner();
		Address address = new Address();
		Phone phone1 = new Phone();
		Phone phone2 = new Phone();
		
		address.setCity(request.getParameter("inputCity"));
		address.setNeighborhood(request.getParameter("inputNeighborhood"));
		address.setNumber(request.getParameter("inputAddressNumber"));
		address.setState(request.getParameter("inputState"));
		address.setStreet(request.getParameter("inputStreet"));
		address.setZipCode(request.getParameter("inputZipCode"));
		
		phone1.setDdd(request.getParameter("inputDDD1"));
		phone1.setNumber(request.getParameter("inputPhoneNumber1"));
		
		phone2.setDdd(request.getParameter("inputDDD2"));
		phone2.setNumber(request.getParameter("inputPhoneNumber2"));
		
		
		partner.setName(request.getParameter("inputName"));
		partner.setEmail(request.getParameter("inputEmail"));
		partner.setAddress(address);
		partner.setPhone1(phone1);
		partner.setPhone2(phone2);
		
		SimpleDateFormat dateFormated = new SimpleDateFormat("yyyy-MM-dd"); 
		
		Date birthDate;
		try {
			birthDate = dateFormated.parse(request.getParameter("inputBirthDate"));
			partner.setBirthDate(birthDate);
		} catch (ParseException e) {
			partner.setBirthDate(null);
			e.printStackTrace();
			
		}
		
		partner.setDocument(request.getParameter("inputDocument"));
		partner.setGender( request.getParameter("inputGender"));
		
		String password = request.getParameter("inputPassword");
		
		User user = new User(partner, partner.getEmail(), password);
		
		DaoGeneric.getInstance().save(user);
		
		PrintWriter out = response.getWriter();
		out.print("salvo");
	}

}
