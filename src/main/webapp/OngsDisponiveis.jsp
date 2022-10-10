<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
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

<link rel="apple-touch-icon" sizes="180x180" href="resources/components/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="resources/components/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="resources/components/favicon-16x16.png">
<link rel="manifest" href="resources/components/site.webmanifest">

<meta charset="ISO-8859-1">
<title>ONGs Disponíveis</title>
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
							Date dateYear = ong.getBirthDate();
							String dateFromatedYearRender = dateFormatedYear.format(dateYear);
							String location = ong.getAddress().getCity();
							Integer qtdAnimals = animaisDisponiveis.size(); 
							String imgPath = ong.getImgPath() == null ? "resources/components/no-photo.jpeg" : ong.getImgPath();
							animaisDisponiveis.clear();
				%>
				<div class="col-sm-4 my-3">
	                <div class="card">
	                   <img class="card-img-top" width="300" height="250" src="<%= imgPath %>" alt="Imagem de capa do card">
	                     <div class="card-body">
		                    <h5 class="card-title"><%= ong.getName() %></h5>
							<p class="card-text">Ano de Fundação: <%= dateFromatedYearRender %></p>
		                    <p class="card-text">Localização: <%=location %></p>
		                    <p class="card-text">Animais: <%= qtdAnimals %></p>
	                 	 </div>
	                  	<div class="card-footer" align="center">
	                    	<button type="button"  class="btn btn-primary modalButton" key="<%=ong.getId() %>">
	  							+Informações
							</button>
	                 	 </div>
	               	</div>
	             </div>
                <% }
			       %>

     </div>
      <%if (session.getAttribute("userId") == null) {  %>
        <script>
        function redirect(){
        	alert("Você precisa estar logado para saber mais informações")
            window.location = "./Login.jsp"
        }
        </script>
     <% } %>

    </main>
	<%@ include file="Structs/Footer.jsp"%>
    <script src="resources/js/ongs.js"></script> 
</body>
<script src="resources/js/jquery.js"></script>
</html>