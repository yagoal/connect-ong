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
<link rel="stylesheet" href="resources/styles/style_login-error.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<title>Erro de Login</title>
</head>
<body>
	<%@ include file="Structs/NavBar.jsp"%>
    <main>
        <div class="perfil">  
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">ERRO</h5>
                    <p class="card-text">
                        Infelizmente, não foi possível acessar seu perfil.
                        Por favor, verifique se o e-mail e a senha foram preenchidos corretamente. <br><br>
                        Caso você ainda não seja cadastrado em nossa plataforma, clique <a href="Cadastro.jsp"><b>AQUI</b></a>.
                </div>

                <div class="card-footer">
                    <a class="btn btn-primary" href="Login.jsp" role="button">Tentar Novamente</a>
                    <a class="btn btn-primary" href="RedefinirSenha.jsp" role="button">Redefinir Senha</a>
                </div>
            </div>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>