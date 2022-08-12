package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoGeneric;
import model.Employee;
import model.Occupation;
import model.Phone;
/**
 * Servlet implementation class CadastroEmployeeController
 */
@WebServlet("/CadastroEmployeeController")
public class CadastroEmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastroEmployeeController() {
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
		String nome;
		String document;
		Phone phone = new Phone("9888888888", "75", "+55");
		String occupationId;
		
		nome = request.getParameter("inputName");
		document = request.getParameter("inputEspecie");
		occupationId = request.getParameter("occupationId");
		phone.setCountryCode(request.getParameter("inputCountryCode"));
		
		
		Occupation occupation = (Occupation) DaoGeneric.getInstance().retrieveById(Occupation.class, Integer.parseInt(occupationId));
		Employee employee= new Employee();
		employee.setName(nome);
		employee.setOccupation(occupation);
		employee.setPhone1(phone);
		
		DaoGeneric.getInstance().save(employee);
		
		PrintWriter out = response.getWriter();
		out.print("salvo");
	}

}
