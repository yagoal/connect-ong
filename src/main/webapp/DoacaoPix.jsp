<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Animal" %>
<%@ page import="dao.DaoGeneric" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>

<link rel="apple-touch-icon" sizes="180x180" href="resources/components/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="resources/components/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="resources/components/favicon-16x16.png">
<link rel="manifest" href="resources/components/site.webmanifest">

<meta charset="UTF-8">
<title>Doação: Pix</title>
<link rel="stylesheet" href="resources/styles/style_animais-disponiveis.css">

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</head>
<body>
	<%@ include file="Structs/NavBar.jsp"%>   	
    <main>
  
    <% 
    	List<User> ongs = (List<User>)DaoGeneric.getInstance().retrieveUsersCnpj();		
    	SimpleDateFormat dateFormated = new SimpleDateFormat("dd/MM/yyyy"); 
		SimpleDateFormat dateFormatedYear = new SimpleDateFormat("yyyy");  
		List<Animal> animaisDisponiveis = new ArrayList<Animal>();
     %>
	
     <div class="row p-5" align="center" >
		        <% for (User ong: ongs) {
		        			for(Animal animal : ong.getAnimals()){
		        				if(animal.getAvailability()){
		        					animaisDisponiveis.add(animal);
		        				}
		        			}
		        			String imgPath = ong.getImgPath() == null ? "resources/components/no-photo.jpeg" : ong.getImgPath();
							String companyName = ong.getDonate().getCompanyName();
							String branch = ong.getDonate().getBranch();
							String account = ong.getDonate().getAccount();
							String codeQR = ong.getDonate().getCodeQR();
							String key = ong.getDonate().getKey();
							String imgQRCode = ong.getDonate().getImgQRCode() == null ? "resources/components/no-photo.jpeg" : ong.getDonate().getImgQRCode();
							animaisDisponiveis.clear();
				%>
					
				<div class="col-sm-4 my-3">
	                <div class="card">
	                   <img class="card-img-top" width="300" height="250" src="<%= imgPath %>" alt="Imagem de capa do card">
	                     <div class="card-body">
		                    <h5 class="card-title"><%= ong.getName() %></h5>
							<p class="card-text">Razão Social: <%=companyName%></p>
		                    <p class="card-text">Agência: <%=branch %></p>
		                    <p class="card-text">Conta: <%=account%></p>
		                    <p class="card-text">Chave Pix: <%=key%></p>
	                 	 </div>
	                  	<div class="card-footer" align="center">
	                  		<img class="card-img-footer" width="300" height="250" src="<%= imgQRCode %>" alt="Imagem do QR Code">                    
	                 		<p class="card-text">Link/Código do QR Code: <%= codeQR %></p>
	                 	</div>
	               	</div>
	             </div>
                <% } %>

     </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>
  
</body>
<script src="resources/js/jquery.js"></script>
</html>