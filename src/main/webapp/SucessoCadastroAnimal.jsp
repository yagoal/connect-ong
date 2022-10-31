<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="apple-touch-icon" sizes="180x180" href="resources/components/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="resources/components/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="resources/components/favicon-16x16.png">
<link rel="manifest" href="resources/components/site.webmanifest">

<meta charset="ISO-8859-1">
<link rel="stylesheet" href="resources/styles/style_saved.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<title>Cadastrado com sucesso</title>
</head>
<body>
	<%
		String docType = (String)session.getAttribute("docType");
	%>
    <%@ include file="Structs/NavBar.jsp"%>
    <main>
        <div class="perfil">  
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">SUCESSO</h5>
                    <p class="card-text">
                        Parabéns! O cadastro do nosso amiguinho foi realizado com sucesso! <br>
                        <br><br>
                        <b>Muito obrigado por estar aumentando nossa família.</b><br><br>
                        
                </div>

                <div class="card-footer">
                    <a class="btn btn-primary" href="<%=docType.equals("cnpj")? "OngPerfil.jsp" : "MeuPerfil.jsp" %>" role="button">Retornar para Meu perfil</a>
                </div>
            </div>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>