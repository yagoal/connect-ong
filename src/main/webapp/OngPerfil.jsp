<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfil Ong</title>
<link rel="stylesheet" href="resources/styles/style_meu-perfil.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="Structs/NavBar.jsp"%>

    <main>
        <div class="perfil">
            <img class="foto" src="<%=session.getAttribute("perfilImg") %>" alt="Foto do Usuário" style="width: 10vw;">        
    
                <div class="card">
                        <div class="card-body">
                            <p class="card-text">
                                <b>Nome da Instituição: </b> <%=session.getAttribute("nome") %> <br>
                                <b>CNPJ: </b> <%=session.getAttribute("cpf") %> <br>
                                <b>Animais Disponiveis: </b> <%=session.getAttribute("listaAnimais") %> <br>

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
                          <li><a class="d-flex justify-content-between dropdown-item d-flex align-items-center " href="CadastroAnimais.jsp">Cadastrar Animal<svg class=" mx-4" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hearts" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M4.931.481c1.627-1.671 5.692 1.254 0 5.015-5.692-3.76-1.626-6.686 0-5.015Zm6.84 1.794c1.084-1.114 3.795.836 0 3.343-3.795-2.507-1.084-4.457 0-3.343ZM7.84 7.642c2.71-2.786 9.486 2.09 0 8.358-9.487-6.268-2.71-11.144 0-8.358Z"/>
</svg> </a></li>
                          <li><a href="" class="text-success d-flex justify-content-between dropdown-item d-flex align-items-center" href="#">Gerenciar Doações<svg class=" mx-4" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash-stack" viewBox="0 0 16 16">
  <path d="M1 3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1H1zm7 8a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
  <path d="M0 5a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V5zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V7a2 2 0 0 1-2-2H3z"/>
</svg></a></li>
                          <li><a class= "text-danger d-flex justify-content-between dropdown-item d-flex align-items-center" href="Logout.jsp">Deslogar<svg class=" mx-4" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
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