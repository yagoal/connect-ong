<%@page import="model.User"%>
<%@page import="model.Address"%>
<%@page import="dao.DaoGeneric"%>
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
	User u = (User)DaoGeneric.getInstance().retrieveById(User.class, 3);
	DaoGeneric.getInstance().delete(u);
%>
</body>
</html>