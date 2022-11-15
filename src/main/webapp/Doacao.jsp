<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.User"%>
<%@ page import="dao.DaoGeneric" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>

<link rel="apple-touch-icon" sizes="180x180" href="resources/components/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="resources/components/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="resources/components/favicon-16x16.png">
<link rel="manifest" href="resources/components/site.webmanifest">

<meta charset="ISO-8859-1">
<link rel="stylesheet" href="resources/styles/style_doacao.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<title>Doação</title>
</head>
<body>
	
    <%@ include file="Structs/NavBar.jsp"%>
    <main>          
        	<br> <br> 
        	<div class="container">
			<div class="card" style="text-align: center; width: 800px; margin: auto;">
  				<div class="card-body">  						
					Estamos felizes em saber que você deseja realizar uma doação. <br> <br>
                	Caso você queira ajudar uma das ONGs financeiramente, clique <a href="DoacaoPix.jsp"><b>aqui</b></a>.<br> <br>
        			Caso você deseje doar insumos, escolha os itens que você deseja doar e a ONG que irá receber a doação e 
        			dirija-se até o endereço disponibilizado por ela.
				</div>
			</div> 

			<div>
	            <img class="insumos justify-content-center" src="resources/components/insumos.png" alt="Insumos" style="width: 800px; margin: 20px;">
	        </div>
	        
	            <div class="card" style="text-align: center; width: 800px; margin: auto; margin-bottom: 30px;">
	  				<div class="card-body">  						
				<% 
	    			List<User> ongs = (List<User>)DaoGeneric.getInstance().retrieveUsersCnpj();		
	    
					for (User ong: ongs) {
						String street = ong.getAddress().getStreet();
						String neighborhood = ong.getAddress().getNeighborhood();
						String number = ong.getAddress().getNumber();
						String city = ong.getAddress().getCity();
						String state = ong.getAddress().getState();
						String zipCode = ong.getAddress().getZipCode();
				%>
	
				<h5><%= ong.getName() %></h5>
				<p><%=street%>, número <%=number%>, Bairro <%=neighborhood%>, <%=city%> - <%=state%>. CEP: <%=zipCode%>.</p>
		
				<%}%>
		
					</div>
				</div>
		</div>
		    
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>