<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Redefinir Senha</title>
<link rel="stylesheet" href="resources/styles/style_redefinir-senha.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
</head>
<body>
   <%@ include file="Structs/NavBar.jsp"%>

    <main>
        <div class="perfil">  
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">REDEFINIR SENHA</h5>
                    <p class="card-text">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Por favor, informe o email utilizado quando você se cadastrou na Connect-ONG:</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"> <br>
                            <label for="exampleInputEmail1">Por favor, digite seu email novamente:</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        </div>

                <small>OBS: A Connect-ONG enviará um link para seu email. Você deve clicar nele e definir uma nova senha para seu cadastro, seguindo o passo a passo.</small>
                </div>

                <div class="card-footer">
                    <a class="btn btn-primary" href="Index.jsp" role="button">Enviar</a>
                </div>
            </div>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>