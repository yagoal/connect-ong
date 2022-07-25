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
		Telefone telefone = new Telefone("8888-7777", "75", "+001");
	%>
	<h1> Hello World <% out.print(telefone.getNumero()); %> </h1>
</body>
</html>