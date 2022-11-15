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
<link rel="stylesheet" href="resources/styles/style_doacao-pix.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<title>Doação: Pix</title>
</head>
<body>
	
    <%@ include file="Structs/NavBar.jsp"%>
    <main>          

 		<aside>
			<div class="card" style="text-align: center; width: 950px; margin: auto;">
  				<div class="card-body">  						
					Estamos felizes em saber que você deseja realizar uma doação. <br> <br>
                	Caso você deseje realizar uma doação em dinheiro e não sabe qual das ONGs escolher, 
                	você pode utilizar o QR Code abaixo para enviar um Pix com a quantia que você desejar doar 
                	e realizaremos a distribuição para as ONGs, de forma igualitária. <br> <br>
                	Você também pode doar 
                	através de nossa chave Pix: connect-ong@info.com (email).
				</div>
			</div> 
		</aside>
		
            <img class="qrcode" src="resources/components/qrcode-mariane.jpg" alt="QR Code" style="width: 200px; margin: auto;">
        
            <div class="card" style="text-align: center; width: 950px; margin: auto; margin-bottom: 30px;">
  				<div class="card-body">  	
  				
  				Caso você deseje realizar uma doação em dinheiro para uma ONG em específico, 
  				escolha uma das ONGs abaixo. <br>
  				Você poderá realizar a doação através das chaves Pix disponibilizadas por cada uma delas. <br> <br>
  									
			<% 
    			List<User> ongs = (List<User>)DaoGeneric.getInstance().retrieveUsersCnpj();		
    
				for (User ong: ongs) {
					String email = ong.getEmail();
					String cnpj = ong.getDocument();
			%>
		
			<h5><%= ong.getName() %></h5>
			<p>Chaves Pix: <br>
			Email: <%=email%> <br>
			CNPJ: <%=cnpj%>	
			<%}%>
			
				</div>
			</div>
		    
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>