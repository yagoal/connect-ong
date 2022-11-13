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
<link rel="stylesheet" href="resources/styles/style_doacao.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<title>Doação</title>
</head>
<body>
	
    <%@ include file="Structs/NavBar.jsp"%>
    <main>
        <div class="perfil">  
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Olá, parceiro(a)!</h5>
                    <p class="card-text">
                        Estamos felizes em saber que você deseja realizar uma doação. <br>
        				Para ter acesso à lista de insumos que as ONGs estão precisando, clique em <b>Insumos.</b><br>
        				Caso você queira ajudar uma ONG financeiramente, clique em <b>Dinheiro</b>.                        
                </div>

                <div class="card-footer">
                    <a class="btn btn-primary" href="DoacaoInsumo.jsp" role="button">Insumos</a>
                    <a class="btn btn-primary" href="DoacaoPix.jsp" role="button">Dinheiro</a>
                </div>
            </div>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>