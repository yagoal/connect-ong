<%@ page language="java" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<header class="cabecalho">
		<div class="logotipo">
			<img class="img-logotipo" src="resources/components/img-temp.png"
				alt="Logotipo">
		</div>
		<div class="menu">
			<a href="Login.jsp"><li>Home</li></a> 
			<a href="Login.jsp#tela-dois"><li>Sobre</li></a>
			<a href="AnimaisDisponiveis.jsp"><li>Animais Disponíveis</li></a> 
			<%if(session.getAttribute("docType") != null) { %>
			<%if(session.getAttribute("docType").equals("cpf")){ %>
			<a href="MeuPerfil.jsp"><li>Meu Perfil</li></a> 
			<%} else { %>
			<a href="OngPerfil.jsp"><li>Meu Perfil</li></a> 
			<%}
			} else {%>
			<a href="MeuPerfil.jsp"><li>Meu Perfil</li></a> 
			<%} %>
			<a href="Login.jsp#perguntas-frequentes"><li>Perguntas Frequentes</li></a> 
			<a href="Login.jsp#fale-conosco"><li>Fale Conosco</li></a>
		</div>
	</header>
</body>
</html>
