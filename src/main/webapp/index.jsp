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
		Telefone telDb = daotel.retrieveById(1);
	%>
	<h1> Hello World <% out.print(telefone.getNumero()); %> </h1>
	<h2>Hello World From Database <% out.print(telDb.getNumero()); %></h2>
</body>
</html>