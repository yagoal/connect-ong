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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.DaoGeneric;
import model.User;
import model.Address;
import model.Donate;
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
	private static final String UPLOAD_DIR = "fotos-perfil"; // nome da pasta onde vai ser salvo //IMG DO PERFIL
	private static final String UPLOAD_DIRQR = "fotos-QRCODE"; // nome da pasta onde vai ser salvo //IMG DO QR CODE
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DaoGeneric.getInstance().retrieveByEmail(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession httpSession = request.getSession(false);
		
		User user = new User();
		Address address = new Address();
		Phone phone1 = new Phone();
		Donate donate = new Donate();
		Integer id = null;
		String imgPath = null;
		String imgQRCode = null; //IMG DO QR CODE
		
		if(httpSession.getAttribute("userId") != null) {
			id = (Integer) httpSession.getAttribute("userId");
			user = (User) DaoGeneric.getInstance().retrieveById(User.class, id);
			imgPath = user.getImgPath();
		} else {
			user.setPassword(request.getParameter("inputPassword"));
			user.setEmail(request.getParameter("inputEmail"));
			user.setDocument(request.getParameter("inputDocument"));
			user.setDocType();
			user.setGender( request.getParameter("inputGender"));
			
			SimpleDateFormat dateFormated = new SimpleDateFormat("yyyy-MM-dd"); 
			Date birthDate;
			
			try {
				birthDate = dateFormated.parse(request.getParameter("inputBirthDate"));
				user.setBirthDate(birthDate);
			} catch (ParseException e) {
				user.setBirthDate(null);
				e.printStackTrace();
				
			}
		}
		
		address.setCity(request.getParameter("inputCity"));
		address.setNeighborhood(request.getParameter("inputNeighborhood"));
		address.setNumber(request.getParameter("inputAddressNumber"));
		address.setState(request.getParameter("inputState"));
		address.setStreet(request.getParameter("inputStreet"));
		address.setZipCode(request.getParameter("inputZipCode"));
		
		phone1.setDdd(request.getParameter("inputDDD1"));
		phone1.setNumber(request.getParameter("inputPhoneNumber1"));
		
		donate.setCompanyName(request.getParameter("inputCompanyName"));
		donate.setBranch(request.getParameter("inputBranch"));
		donate.setAccount(request.getParameter("inputAccount"));
		donate.setCodeQR(request.getParameter("inputCodeQR"));
		donate.setKey(request.getParameter("inputKey"));
		donate.setImgQRCode(request.getParameter("inputImgQRCode"));
	
		user.setName(request.getParameter("inputName"));
		user.setAddress(address);
		user.setPhone1(phone1);
		user.setDonate(donate);
		user.setId(id);
		

		Part part = request.getPart("file");
		String imgName;
		String savePath;
		
		if(!part.getSubmittedFileName().equals("")) {
			String appPath = request.getServletContext().getRealPath(""); // pegando o caminho absoluto da aplicação
			
			String uploadImgPath = appPath + UPLOAD_DIR; // caminho da pasta onde a imagem será salva //IMG DO PERFIL
			System.out.println(uploadImgPath);
			
			String uploadImgQRCode = appPath + UPLOAD_DIRQR; // caminho da pasta onde a imagem será salva //IMG DO QR CODE
			System.out.println(uploadImgQRCode);
			
			File uploadDir = new File(uploadImgPath); //IMG DO PERFIL
			File uploadDirQR = new File(uploadImgQRCode); //IMG DO QR CODE
			
			String timeStamp = Long.toString(System.currentTimeMillis()); //usando o timeStamp para se certificar que o arquivo será sempre diferente
			
			// criando a pasta onde será salvo as imagens caso ela não exista //IMG DO PERFIL
			if(!uploadDir.exists()) {
				uploadDir.mkdirs();
			}
			
			// criando a pasta onde será salvo as imagens caso ela não exista //IMG DO QR CODE
			if(!uploadDirQR.exists()) {
				uploadDirQR.mkdirs();
			}
			
			System.out.println("caminho da pasta de upload: "+ uploadDir.getAbsolutePath()); //IMG DO PERFIL
			
			System.out.println("caminho da pasta de upload: "+ uploadDirQR.getAbsolutePath()); //IMG DO QR CODE
			
			imgName = getFilename(part);
			savePath = uploadImgPath + File.separator + timeStamp + imgName ; //IMG DO PERFIL
			savePath = uploadImgQRCode + File.separator + timeStamp + imgName ; //IMG DO QR CODE
			imgPath = UPLOAD_DIR + "/" + timeStamp + imgName; //IMG DO PERFIL
			imgQRCode = UPLOAD_DIRQR + "/" + timeStamp + imgName; //IMG DO QR CODE
			System.out.println(savePath);
			part.write(savePath);
		}
		
		user.setImgPath(imgPath);
		user.setDonate(donate); //PARA SALVAR AS INFORMAÇÕES DE DOAÇÃO
		
		DaoGeneric.getInstance().save(user);
		
		if(httpSession.getAttribute("userId") != null) {
			response.sendRedirect("SucessoAlteracao.jsp");
		} else {
			response.sendRedirect("SucessoCadastro.jsp");	
		}
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
