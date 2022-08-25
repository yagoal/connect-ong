<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="resources/styles/style_saved.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<title>Cadastrado com sucesso</title>
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

        <footer>
            <div class="rodape">
                <p> Controle e Gerenciamento para ONGs ligadas à causa animal <br>
                Curso Técnico Subsequente em Informática - 3º Módulo <br>
                2022 - Mariane Milene Xavier Rocha - Todos os direitos reservados </p>
            </div>
        </footer>

</body>
</html>