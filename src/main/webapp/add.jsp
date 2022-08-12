<%@page import="model.Adoption"%>
<%@page import="model.Phone"%>
<%@page import="java.util.List"%>
<%@page import="model.User"%>
<%@page import="java.util.Date"%>
<%@page import="dao.DaoGeneric"%>
<%@page import="model.Address"%>
<%@page import="model.Occupation"%>
<%@page import="model.Ong"%>
<%@page import="model.Donate"%>
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
	List<Address> aLista = (List<Address>) DaoGeneric.getInstance().retrieveAll(Address.class);
	out.print(aLista);
%>
</body>
</html>