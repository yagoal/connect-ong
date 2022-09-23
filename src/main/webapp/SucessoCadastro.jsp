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
    <%@ include file="Structs/NavBar.jsp"%>
    <main>
        <div class="perfil">  
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">SUCESSO</h5>
                    <p class="card-text">
                        Parabéns! Seu cadastro foi realizado com sucesso! <br>
                        Agora, você é um parceiro da ONG! <br><br>
                        <b>Muito obrigado por estar conosco nessa caminhada.</b><br><br>
                        Para acessar seu perfil e a lista de animais disponívels, efetue o login em nossa plataforma, 
                        informando o e-mail e a senha utilizados durante o cadastro.
                        
                </div>

                <div class="card-footer">
                    <a class="btn btn-primary" href="Login.jsp" role="button">Fazer Login</a>
                </div>
            </div>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>