<%@ page language="java" contentType="text/html; ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
						  <input class="form-control" name="file" accept="image/*" type="file" id="formFile">
							<span class="preview"></span>
						</div>  
					</div>
		                  
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="inputName">Nome completo</label>
                        <input type="text" class="form-control" id="inputName" name="inputName" required>
                    </div>	
                </div>

                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputCPF">CPF</label>
                        <input type="text" oninput="mascararCPF(this);validarCPF(this)" class="form-control" id="inputCPF" name="inputDocument" placeholder="000.000.000-00" required>
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
                        <label for="inputName">Data de nascimento</label>
                        <input type="date" class="form-control" id="inputBirthDate" name="inputBirthDate" required>
                    </div>
                </div>                

                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label for="inputEmail4">Email</label>
                    <input oninput="verificarEmail(this)"  type="email" class="form-control" id="inputEmail" name="inputEmail" placeholder="Email" required>
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

                <br> 

                <div class="form-row">
                	<div class="form-group col-md-2">
                      <label for="inputCEP">CEP</label>
                      <input oninput="buscarCep(this)" type="text" class="form-control" id="inputCEP" name="inputZipCode" required>
                    </div>
                    <div class="form-group col-md-5">
                        <label for="inputRua">Logradouro</label>
                        <input type="text" class="form-control" id="inputRua" name="inputStreet" placeholder="Avenida Marcondes Ferraz" required>
                    </div>

                    <div class="form-group col-md-5">
                        <label for="inputBairro">Bairro</label>
                        <input type="text" class="form-control" id="inputBairro" name="inputNeighborhood" placeholder="General Dutra" required>
                    </div>
                </div>     

                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="inputCity">Cidade</label>
                      <input type="text" class="form-control" id="inputCity" name="inputCity" required>
                    </div>
                    <div class="form-group col-md-4">
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
                    <div class="form-group col-md-2">
                        <label for="inputNumero">Númmero</label>
                        <input type="number" class="form-control" id="inputNumero" name="inputAddressNumber" required>
                    </div>
                  </div>

                
                <br> 

                <div class="form-row">
                    <div class="form-group col-md-1">
                        <label for="inputTelefone">DDD 1</label>
                        <input maxlength="2" type="tel" class="form-control" id="inputTelefone" name="inputDDD1">
                    </div>
                    <div class="form-group col-md-5">
                        <label for="inputTelefone">Telefone 1</label>
                        <input type="tel" class="form-control" id="inputDDD1" name="inputPhoneNumber1">
                    </div>

					<div class="form-group col-md-1">
                        <label for="inputCelular2">DDD 2</label>
                        <input maxlength="2" type="tel" class="form-control" id="inputDDD2" name="inputDDD2">
                    </div>
                    <div class="form-group col-md-5">
                        <label for="inputCelular2">Telefone 2</label>
                        <input type="tel" class="form-control" id="inputCelular2" name="inputPhoneNumber2">
                    </div>
                </div>   

                <br>

                <br>

                <button disabled type="submit" id="finalizarCadastro" class="btn btn-primary">Finalizar Cadastro</button>
              </form>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>
</body>
<script src="resources/js/preview.js"></script>
<script src="resources/js/cadastro.js"></script>
<script src="resources/js/jquery.js"></script>
</html>
