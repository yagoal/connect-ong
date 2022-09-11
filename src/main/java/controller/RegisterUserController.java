package controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.DaoGeneric;
import model.User;
import model.Address;
import model.Phone;


/**
 * Servlet implementation class RegisterUserController
 */
@WebServlet("/RegisterUserController")
@MultipartConfig(
			fileSizeThreshold=1024*1024*10,  // 10 MB 
	        maxFileSize=1024*1024*50,       // 50 MB
	        maxRequestSize=1024*1024*100
		)
public class RegisterUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIR = "fotos-perfil"; // nome da pasta onde vai ser salvo
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DaoGeneric.getInstance().retrieveByEmail(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String appPath = request.getServletContext().getRealPath(""); // pegando o caminho absoluto da aplicação
		
		String uploadImgPath = appPath + UPLOAD_DIR; // caminho da pasta onde a imagem será salva
		System.out.println(uploadImgPath);
		
		File uploadDir = new File(uploadImgPath); 
		
		String timeStamp = Long.toString(System.currentTimeMillis()); //usando o timeStamp para se certificar que o arquivo será sempre diferente
		
		// criando a pasta onde será salvo as imagens caso ela não exista
		if(!uploadDir.exists()) {
			uploadDir.mkdirs();
		}
		
		System.out.println("caminho da pasta de upload: "+ uploadDir.getAbsolutePath());
		
		Part part = request.getPart("file");
		String imgName = getFilename(part);
		String savePath = uploadImgPath + File.separator + timeStamp + imgName ;
		String imgPath = UPLOAD_DIR + "/" + timeStamp + imgName;
		System.out.println(savePath);
		part.write(savePath);
		
		User user = new User();
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
		
		user.setImgPath(imgPath);
		user.setName(request.getParameter("inputName"));
		user.setEmail(request.getParameter("inputEmail"));
		user.setAddress(address);
		user.setPhone1(phone1);
		user.setPhone2(phone2);
		
		SimpleDateFormat dateFormated = new SimpleDateFormat("yyyy-MM-dd"); 
		
		Date birthDate;
		try {
			birthDate = dateFormated.parse(request.getParameter("inputBirthDate"));
			user.setBirthDate(birthDate);
		} catch (ParseException e) {
			user.setBirthDate(null);
			e.printStackTrace();
			
		}
		
		user.setDocument(request.getParameter("inputDocument"));
		user.setDocType();
		user.setGender( request.getParameter("inputGender"));
		user.setPassword(request.getParameter("inputPassword"));
		
		
		
		DaoGeneric.getInstance().save(user);
		
		response.sendRedirect("SucessoCadastro.jsp");
	}
	
	//metodo para pegar o nome do arquivo atraves do header da requisição
		private String getFilename(Part part) {
			String contentDisp = part.getHeader("content-disposition");
			System.out.println("content-disposition header= "+contentDisp);
			String[] tokens = contentDisp.split(";");
			 for (String token : tokens) {
		            if (token.trim().startsWith("filename")) {
		                return token.substring(token.indexOf("=") + 2, token.length()-1);
		            }
		        }
		        return "";
		}
}
