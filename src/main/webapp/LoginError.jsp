<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="resources/styles/style_login-error.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<title>Login: Erro</title>
</head>
<body>
    <header class="cabecalho">
        <div class="logotipo">
            <img class="img-logotipo" src="resources/components/img-temp.png" alt="Logotipo">
        </div>

        <div class="menu">
            <a href="Login.jsp"><li>Home</li></a>
            <a href="Login.jsp#tela-dois"><li>Sobre</li></a>
            <a href="AnimaisDisponiveis.jsp"><li>Animais Disponíveis</li></a>
            <a href="MeuPerfil.jsp"><li>Meu Perfil</li></a>
            <a href="Login.jsp#perguntas-frequentes"><li>Perguntas Frequentes</li></a>
            <a href="Login.jsp#fale-conosco"><li>Fale Conosco</li></a>
        </div>
    </header>

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
                    <a class="btn btn-primary" href="Login.jsp" role="button">Tentar novamente</a>
                    <a class="btn btn-primary" href="RedefinirSenha.jsp" role="button">Redefinir senha</a>
                </div>
            </div>
        </div>
    </main>

        <footer>
            <div class="rodape">
                <p> Controle e Gerenciamento para ONGs ligadas à causa animal <br>
                Curso Técnico Subsequente em Informática - 3º Módulo <br>
                2022 - Mariane Milene Xavier Rocha - Todos os direitos reservados </p>
            </div>
        </footer>

</body>
</html>