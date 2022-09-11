<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
	String login = "valdemilson.lins@gmail.com";
	String password = "jumento";
	
	String cpf = "000.000.000-00";
	
	cpf = cpf.replace(".", "");
	cpf = cpf.replace("-", "");
	
	System.out.println(cpf);
	
 %>
</body>
</html>