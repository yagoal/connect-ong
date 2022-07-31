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
		Phone b = new Phone();
		b.setNumber("irru");
 		 		
		
		
		DaoGeneric.getInstance().save(b);
	%>
			

</body>
</html>