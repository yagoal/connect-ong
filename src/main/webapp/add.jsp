<%@page import="model.User"%>
<%@page import="java.util.Date"%>
<%@page import="dao.DaoGeneric"%>
<%@page import="model.Address"%>
<%@page import="model.Collaborator"%>
<%@page import="model.Ong"%>
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
	User u3 = new User("altared", "jumenta12", 3);
	

	DaoGeneric.getInstance().save(u3);
%>
</body>
</html>