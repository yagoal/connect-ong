<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Meu Perfil</title>
<link rel="stylesheet" href="resources/styles/style_meu-perfil.css">
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
            <a href="meuPerfil.jsp"><li>Meu Perfil</li></a>
            <a href="Index.jsp#perguntas-frequentes"><li>Perguntas Frequentes</li></a>
            <a href="Index.jsp#fale-conosco"><li>Fale Conosco</li></a>
        </div>
    </header>

    <main>
        <div class="perfil">
            <img class="foto" src="resources/components/foto.svg" alt="Foto do Usuário" style="width: 10vw;">        
    
                <div class="card">
                        <div class="card-body">
                            <p class="card-text">
                                <b>Nome completo: </b> <%=session.getAttribute("nome") %> <br>
                                <b>CPF: </b> <%=session.getAttribute("cpf") %> <br>
                                <b>Sexo: </b> <%=session.getAttribute("sexo") %> <br>
                                <b>Data de nascimento: </b> <%=session.getAttribute("dataNasc") %> <br>
                                <b>Animais adotados: </b> <%=session.getAttribute("listaAdo") %> <br> <br>

                                <b>Logradouro: </b> <%=session.getAttribute("rua") %> <br>
                                <b>Número: </b> <%=session.getAttribute("numero") %> <br>
                                <b>Bairro: </b> <%=session.getAttribute("bairro") %> <br>
                                <b>Cidade: </b> <%=session.getAttribute("cidade") %> <br>
                                <b>Estado: </b> <%=session.getAttribute("estado") %> <br>
                                <b>CEP: </b> <%=session.getAttribute("cep") %> <br> <br>

                                <b>E-mail: </b> <%=session.getAttribute("login") %>m <br>                 
                                <b>Telefone 1: </b> <%=session.getAttribute("telefone1") %> <br>
                                <b>Telefone 2: </b> <%=session.getAttribute("telefone2") %>
                            </p>
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