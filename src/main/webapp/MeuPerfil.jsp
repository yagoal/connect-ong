<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meu Perfil</title>
<link rel="stylesheet" href="resources/styles/style_meu-perfil.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
   <%@ include file="Structs/NavBar.jsp"%>

    <main>
        <div class="perfil">
        <%if (session.getAttribute("userId") == null) {  %>
        <script>
            window.location = "http://localhost:8080/connect-ong/Login.jsp"
        </script>
        <% } %>
            <img class="foto" src="<%=session.getAttribute("perfilImg") %>" alt="Foto do Usuário" style="width: 10vw;">        
    
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

                                <b>E-mail: </b> <%=session.getAttribute("login") %><br>                 
                                <b>Telefone 1: </b> <%=session.getAttribute("telefone1") %> <br>
                                <b>Telefone 2: </b> <%=session.getAttribute("telefone2") %>
                            </p>
                            <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Menu
                        </button>
                        <ul class="dropdown-menu">
                          <li><a href="AnimaisDisponiveis.jsp" class="d-flex justify-content-between dropdown-item d-flex align-items-center " href="#">Adotar<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-balloon-heart" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="m8 2.42-.717-.737c-1.13-1.161-3.243-.777-4.01.72-.35.685-.451 1.707.236 3.062C4.16 6.753 5.52 8.32 8 10.042c2.479-1.723 3.839-3.29 4.491-4.577.687-1.355.587-2.377.236-3.061-.767-1.498-2.88-1.882-4.01-.721L8 2.42Zm-.49 8.5c-10.78-7.44-3-13.155.359-10.063.045.041.089.084.132.129.043-.045.087-.088.132-.129 3.36-3.092 11.137 2.624.357 10.063l.235.468a.25.25 0 1 1-.448.224l-.008-.017c.008.11.02.202.037.29.054.27.161.488.419 1.003.288.578.235 1.15.076 1.629-.157.469-.422.867-.588 1.115l-.004.007a.25.25 0 1 1-.416-.278c.168-.252.4-.6.533-1.003.133-.396.163-.824-.049-1.246l-.013-.028c-.24-.48-.38-.758-.448-1.102a3.177 3.177 0 0 1-.052-.45l-.04.08a.25.25 0 1 1-.447-.224l.235-.468ZM6.013 2.06c-.649-.18-1.483.083-1.85.798-.131.258-.245.689-.08 1.335.063.244.414.198.487-.043.21-.697.627-1.447 1.359-1.692.217-.073.304-.337.084-.398Z"/>
                          </svg> </a></li>
                          <li><a href="" class="text-success d-flex justify-content-between dropdown-item d-flex align-items-center" href="#">Doar<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-coin" viewBox="0 0 16 16">
                            <path d="M5.5 9.511c.076.954.83 1.697 2.182 1.785V12h.6v-.709c1.4-.098 2.218-.846 2.218-1.932 0-.987-.626-1.496-1.745-1.76l-.473-.112V5.57c.6.068.982.396 1.074.85h1.052c-.076-.919-.864-1.638-2.126-1.716V4h-.6v.719c-1.195.117-2.01.836-2.01 1.853 0 .9.606 1.472 1.613 1.707l.397.098v2.034c-.615-.093-1.022-.43-1.114-.9H5.5zm2.177-2.166c-.59-.137-.91-.416-.91-.836 0-.47.345-.822.915-.925v1.76h-.005zm.692 1.193c.717.166 1.048.435 1.048.91 0 .542-.412.914-1.135.982V8.518l.087.02z"/>
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                            <path d="M8 13.5a5.5 5.5 0 1 1 0-11 5.5 5.5 0 0 1 0 11zm0 .5A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"/>
                          </svg></a></li>
                          <li><a class= "text-danger d-flex justify-content-between dropdown-item d-flex align-items-center" href="Logout.jsp">Deslogar<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
                            <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                          </svg></a></li>
                        </ul>
                      </div>
                        </div>
                </div>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>
</body>
</html>
