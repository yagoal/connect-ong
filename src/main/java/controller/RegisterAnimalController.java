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
import model.Animal;


/**
 * Servlet implementation class RegisterUserController
 */
@WebServlet("/RegisterAnimalController")
@MultipartConfig(
			fileSizeThreshold=1024*1024*10,  // 10 MB 
	        maxFileSize=1024*1024*50,       // 50 MB
	        maxRequestSize=1024*1024*100
		)
public class RegisterAnimalController extends HttpServlet {
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
		
		Animal animal = new Animal();
	
		animal.setName(request.getParameter("inputName"));
		animal.setImgPath(imgPath);
		animal.setGender(request.getParameter("inputGender"));
		animal.setSpecie(request.getParameter("inputSpecie"));
		animal.setBreed(request.getParameter("inputBreed"));
		animal.setWeight(Double.parseDouble(request.getParameter("inputWeight")));
		animal.setCastration(Boolean.parseBoolean(request.getParameter("inputCastration")));
		animal.setAvailability(Boolean.parseBoolean(request.getParameter("inputAvailability")));
		
		
		SimpleDateFormat dateFormated = new SimpleDateFormat("yyyy-MM-dd");  
		String birthYear = request.getParameter("inputBirthYearDate")+"-01-01";
		Date redempetionDate;
		Date birth;
		try {
			redempetionDate = dateFormated.parse(request.getParameter("inputRedempetionDate"));
			animal.setRedempetionDate(redempetionDate);
			birth = dateFormated.parse(birthYear);
			animal.setYearDate(birth);
		} catch (ParseException e) {
			animal.setRedempetionDate(new Date());
			animal.setYearDate(new Date());
			e.printStackTrace();
			
		}

		DaoGeneric.getInstance().save(animal);
		
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
