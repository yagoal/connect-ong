<%@page import="java.util.List"%>
<%@page import="controller.DaoTelefone"%>
<%@page import="model.Telefone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		DaoTelefone daotel = new DaoTelefone();
		Telefone telefone = new Telefone("8888-7777", "75", "+001");
		List<Telefone> telDb = daotel.retrieveAll();
		
		for(Telefone tel : telDb) {
	%>
			<h2>Hello World From Database <% out.print(tel.getNumero()); %></h2>
			
		<%}%>
</body>
</html>