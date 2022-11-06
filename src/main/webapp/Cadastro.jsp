<%@page import="dao.DaoGeneric"%>
<%@ page import="model.User" %>
<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="apple-touch-icon" sizes="180x180" href="resources/components/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="resources/components/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="resources/components/favicon-16x16.png">
<link rel="manifest" href="resources/components/site.webmanifest">

<meta charset="ISO-8859-1">
<title>Cadastro</title>
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="resources/styles/style_cadastro.css">

</head>
<body>
	<%@ include file="Structs/NavBar.jsp"%>

    <main>
        <div class="form-cadastro">
            <form class="caixa" action="RegisterUserController" method="post" enctype="multipart/form-data"> 
					<div class="form-row justify-content-center">
						<div class="form-group col-md-4 justify-content-center text-center ">
						  <label for="formFile" class="form-label">Escolha uma foto de perfil:</label>
						  <input class="form-control" name="file" accept="image/*" type="file" id="formFile"> <br>
						  <span class="preview"> <img src="<%=session.getAttribute("userId") == null ? "resources/components/no-photo.jpeg" : session.getAttribute("perfilImg") %>" 
						  	id="preview" width="200px" border-radius="10px" margin-top="10px"/> </span>
						</div>  
					</div>
		                  
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="inputName">Nome completo</label>
                        <input type="text" value="<%=session.getAttribute("nome") == null ? "" : session.getAttribute("nome") %>" class="form-control" id="inputName" name="inputName" required>
                    </div>	
                </div>

                  <%if(session.getAttribute("userId") == null){ %>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputCPF">CPF</label>
                        <input type="text" value="<%=session.getAttribute("cpf") == null ? "" : session.getAttribute("cpf") %>" onchange="verificarCPF(this)" oninput="mascararCPF(this);validarCPF(this)" class="form-control" id="inputCPF" name="inputDocument" placeholder="000.000.000-00" required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputSexo">Sexo</label>
                        <select id="inputSexo" name="inputGender" class="form-control" required>
                          <option selected>Escolher...</option>
                          <option value="F">Feminino</option>
                          <option value="M">Masculino</option>
                        </select>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputBirthDate">Data de nascimento</label>
                        <input value="<%=session.getAttribute("dataNasc") == null ? "" : session.getAttribute("dataNasc") %>" type="date" class="form-control" id="inputBirthDate" name="inputBirthDate" required>
                    </div>
                </div>                

                  
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label for="inputEmail4">Email</label>
                    <input value="<%=session.getAttribute("email") == null ? "" : session.getAttribute("email") %>" onchange="verificarEmail(this)"   type="email" class="form-control" id="inputEmail" name="inputEmail" placeholder="Email" required>
                </div>
                  <div class="form-group col-md-3">
                    <label for="inputPassword4">Senha</label>
                    <input minlength="8" oninput="verificarSenhas(this)" type="password" class="form-control" id="inputPassword" name="inputPassword" placeholder="Senha" required>
                  </div>
                  <div class="form-group col-md-3">
                    <label for="inputPassword4">Verificar senha</label>
                    <input type="password" class="form-control" oninput="verificarSenhas(this)" id="inputPasswordValid" name="inputPasswordValid" placeholder="Verificar Senha" required>
                  </div>
                </div>
				<%} %>
                <br> 

                <div class="form-row">
                	<div class="form-group col-md-2">
                      <label for="inputCEP">CEP</label>
                      <input value="<%=session.getAttribute("cep") == null ? "" : session.getAttribute("cep") %>" onchange="buscarCep(this)" type="text" class="form-control" id="inputCEP" name="inputZipCode" required>
                    </div>
                    <div class="form-group col-md-5">
                        <label for="inputRua">Logradouro</label>
                        <input value="<%= session.getAttribute("rua") == null ? "" : session.getAttribute("rua") %>" type="text" class="form-control" id="inputRua" name="inputStreet" placeholder="Avenida Marcondes Ferraz" required>
                    </div>
                    
                    <div class="form-group col-md-1">
                        <label for="inputNumero">Número</label>
                        <input value="<%=session.getAttribute("numero") == null ? "" : session.getAttribute("numero") %>" type="number" class="form-control" id="inputNumero" name="inputAddressNumber" required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputBairro">Bairro</label>
                        <input value="<%=session.getAttribute("bairro") == null ? "" : session.getAttribute("bairro") %>" type="text" class="form-control" id="inputBairro" name="inputNeighborhood" placeholder="General Dutra" required>
                    </div>
                </div>     

                <div class="form-row">
                    <div class="form-group col-md-3">
                      <label for="inputCity">Cidade</label>
                      <input value="<%=session.getAttribute("cidade") == null ? "" : session.getAttribute("cidade") %>" type="text" class="form-control" id="inputCity" name="inputCity" required>
                    </div>
                    <div class="form-group col-md-2">
                      <label for="inputEstado">Estado</label>
                      <select id="inputEstado" class="form-control" name="inputState" required>
                        <option selected>Escolher...</option>
                        <option value="AC">AC</option>
                        <option value="AL">AL</option>
                        <option value="AP">AP</option>
                        <option value="AM">AM</option>
                        <option value="BA">BA</option>
                        <option value="CE">CE</option>
                        <option value="DF">DF</option>
                        <option value="ES">ES</option>
                        <option value="GO">GO</option>
                        <option value="MA">MA</option>
                        <option value="MT">MT</option>
                        <option value="MS">MS</option>
                        <option value="MG">MG</option>
                        <option value="PA">PA</option>
                        <option value="PB">PB</option>
                        <option value="PR">PR</option>
                        <option value="PE">PE</option>
                        <option value="PI">PI</option>
                        <option value="RJ">RJ</option>
                        <option value="RN">RN</option>
                        <option value="RS">RS</option>
                        <option value="RO">RO</option>
                        <option value="RR">RR</option>
                        <option value="SC">SC</option>
                        <option value="SP">SP</option>
                        <option value="SE">SE</option>
                        <option value="TO">TO</option>
                      </select>
                    </div>
                    
                    <div class="form-group col-md-1">
                        <label for="inputTelefone">DDD</label>
                        <input value="<%=session.getAttribute("ddd") == null ? "" : session.getAttribute("ddd") %>" maxlength="2" type="text" class="form-control" id="inputTelefone" name="inputDDD1">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputTelefone">Telefone</label>
                        <input value="<%=session.getAttribute("telefone") == null ? "" : session.getAttribute("telefone") %>" type="text" class="form-control" id="inputDDD1" name="inputPhoneNumber1">
                    </div>
                  </div>

                <br>

                <button disabled type="submit" id="finalizarCadastro" class="btn btn-primary"><%=session.getAttribute("userId") == null ? "Finalizar Cadastro" : "Finalizar Edição" %></button>
              </form>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>
	
<%if(session.getAttribute("userId") != null){ 
	Integer id = Integer.parseInt((String)request.getParameter("id")); 
	User user = (User)DaoGeneric.getInstance().retrieveById(User.class, id);
	String estadoSelect = user.getAddress().getState();
%>
<script type="text/javascript">
	const estado = '<%=estadoSelect%>';
	const options = document.querySelectorAll('#inputEstado option');
	options[0].removeAttribute('selected');
	options.forEach(option => {
		if(option.value === estado){
			option.setAttribute('selected','');
		}
	})
	console.log(options);
</script>
<%} %>
</body>
<script src="resources/js/preview.js"></script>
<script src="resources/js/cadastro.js"></script>
<script src="resources/js/jquery.js"></script>
</html>
