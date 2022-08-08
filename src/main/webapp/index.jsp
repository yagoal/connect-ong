<%@page import="model.Address"%>
<%@page import="dao.DaoGeneric"%>
<%@page import="model.Phone"%>
<%@page import="java.util.List"%>

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
		Address b = new Address();
		
 		List<Phone> lista = (List<Phone>)DaoGeneric.getInstance().retrieveAll(Phone.class); 
 		
	for(Phone p : lista) {
		out.print("<h1>"+ p.getNumber() +"</h1>");
	}
	
	
	%>
	
	<%
		//Phone a = (Phone)DaoGeneric.getInstance().retrieveById(Phone.class, 7);
		//out.print(a.getNumber());	
		
	%>
	
	<%
	//out.print(a);
	DaoGeneric.getInstance().delete(lista.get(0)); %>
	
	
	
			

</body>
</html>