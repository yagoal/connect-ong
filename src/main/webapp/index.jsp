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
		
 		List<Address> lista = (List<Address>)DaoGeneric.getInstance().retrieveAll(Address.class); 
 		
	for(Address p : lista) {
		out.print("<h1>"+ p.getCity() +"</h1>");
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