<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Animal" %>
<%@ page import="dao.DaoGeneric" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Animais Disponíveis</title>
<link rel="stylesheet" href="resources/styles/style_animais-disponiveis.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="Structs/NavBar.jsp"%>
    <main>
    <% 
    	List<Animal> animals = (List)DaoGeneric.getInstance().retrieveAll(Animal.class);
		SimpleDateFormat dateFormated = new SimpleDateFormat("dd/MM/yyyy"); 
		SimpleDateFormat dateFormatedYear = new SimpleDateFormat("yyyy");  

		  
     %>
     <div class="row p-5" align="center" >
		        <% for (Animal animal: animals) {
					Date dateYear = animal.getYearDate();
					String dateFromatedYearRender = dateFormatedYear.format(dateYear);
					Date redempetion = animal.getRedempetionDate();
					String dateFromatedRedempetionRender = dateFormated.format(redempetion);
					String castracao = animal.getCastration() == true ? "Realizada" : "Pendente";
					String imgPath = animal.getImgPath() == null ? "resources/components/no-photo.jpeg" : animal.getImgPath() ;
				%>
				<div class="col-sm-4 my-3">
	                <div class="card">
	                   <img class="card-img-top" src="<%= imgPath %>" alt="Imagem de capa do card">
	                     <div class="card-body">
		                    <h5 class="card-title"><%= animal.getName() %></h5>
							<p class="card-text">Ano de Nascimento: <%= dateFromatedYearRender %></p>
		                    <p class="card-text">Sexo: <%= animal.getGender() %></p>
		                    <p class="card-text">Raça: <%= animal.getBreed() %></p>
		                    <p class="card-text">Peso: <%= animal.getWeight() %> kg</p></p>
		                    <p class="card-text">Data do resgate: <%= dateFromatedRedempetionRender %></p>
		                    <p class="card-text">Castração: <%= castracao %></p>
	                 	 </div>
	                  	<div class="card-footer">
	                    	<a class="btn btn-primary" href="PaginaAnimal.jsp" role="button">+ Informações</a>
	                 	 </div>
	               	</div>
	             </div>
                <% } %>

     </div>
         
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>