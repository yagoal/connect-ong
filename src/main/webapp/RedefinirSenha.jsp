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
    <header class="cabecalho">
        <div class="logotipo">
            <img class="img-logotipo" src="resources/components/img-temp.png" alt="Logotipo" >
        </div>

        <div class="menu">
            <a href="Index.jsp"><li>Home</li></a>
            <a href="Index.jsp#tela-dois"><li>Sobre</li></a>
            <a href="AnimaisDisponiveis.jsp"><li>Animais Disponíveis</li></a>
            <a href="MeuPerfil.jsp"><li>Meu Perfil</li></a>
            <a href="Index.jsp#perguntas-frequentes"><li>Perguntas Frequentes</li></a>
            <a href="Index.jsp#fale-conosco"><li>Fale Conosco</li></a>
        </div>
    </header>

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

        <footer>
            <div class="rodape">
                <p> Controle e Gerenciamento para ONGs ligadas à causa animal <br>
                Curso Técnico Subsequente em Informática - 4º Módulo <br>
                2022 - Mariane Rocha, Valdemilson Lins e Yago Augusto - Todos os direitos reservados </p>
            </div>
        </footer>

</body>
</html>