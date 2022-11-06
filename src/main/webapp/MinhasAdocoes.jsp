<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Animal" %>
<%@ page import="model.User" %>
<%@ page import="model.Adoption" %>
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

<meta charset="ISO-8859-1">
<title>Minhas adoções</title>
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
    	Integer id = (Integer)session.getAttribute("userId");
    	User user = (User)DaoGeneric.getInstance().retrieveById(User.class, id);
    	List <Adoption> adoptions = user.getAdoptions();
    	SimpleDateFormat dateFormated = new SimpleDateFormat("dd/MM/yyyy"); 
		SimpleDateFormat dateFormatedYear = new SimpleDateFormat("yyyy");  
     %>
	<div class="mt-5 text-warning" align="center"><h2>Minhas Adoções</h2></div>
     <div class="row px-5" align="center" >
		        <% for (Adoption adoption: adoptions) {
		        		Animal animal = adoption.getAnimal();
						Date dateYear = animal.getYearDate();
						String dateFromatedYearRender = dateFormatedYear.format(dateYear);
						Date redempetion = animal.getRedempetionDate();
						String dateFromatedRedempetionRender = dateFormated.format(redempetion);
						Date adoptionDate = adoption.getDate();
						String dateFormatedAdoption = dateFormated.format(adoptionDate);
						String castracao = animal.getCastration() == true ? "Realizada" : "Pendente";
						String imgPath = animal.getImgPath() == null ? "resources/components/no-photo.jpeg" : animal.getImgPath() ;
				%>
				<div class="col-sm-4 my-3">
	                <div class="card">
	                   <img class="card-img-top" width="300px" height="250px" src="<%= imgPath %>" alt="Imagem de capa do card">
	                     <div class="card-body">
		                    <h5 class="card-title"><%= animal.getName() %></h5>
							<p class="card-text">Ano de Nascimento: <%= dateFromatedYearRender %></p>
		                    <p class="card-text">Sexo: <%= animal.getGender() %></p>
		                    <p class="card-text">Raça: <%= animal.getBreed() %></p>
		                    <p class="card-text">Peso: <%= animal.getWeight() %> kg</p></p>
		                    <p class="card-text">Data do resgate: <%= dateFromatedRedempetionRender %></p>
		                    <p class="card-text">Castração: <%= castracao %></p>
		                    <p class="card-text">Data da adoção: <%= dateFormatedAdoption %></p>
		                    
	                 	 </div>
	               	</div>
	             </div>
                <% } %>

     </div>

    </main>
    <script src="resources/js/modal.js"></script>
	<%@ include file="Structs/Footer.jsp"%>
</body>
</html>