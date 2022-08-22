<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro</title>
<link rel="stylesheet" href="resources/styles/style_cadastro.css">
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
            <a href="AnimaisDisponiveis.jsp"><li>Animais Dispon�veis</li></a>
            <a href="MeuPerfil.jsp"><li>Meu Perfil</li></a>
            <a href="Index.jsp#perguntas-frequentes"><li>Perguntas Frequentes</li></a>
            <a href="Index.jsp#fale-conosco"><li>Fale Conosco</li></a>
            <a href="index.html"><li>Home</li></a>
            <a href="index.html#tela-dois"><li>Sobre</li></a>
            <a href="animais-disponiveis.html"><li>Animais Dispon?veis</li></a>
            <a href="meu-perfil.html"><li>Meu Perfil</li></a>
            <a href="index.html#perguntas-frequentes"><li>Perguntas Frequentes</li></a>
            <a href="index.html#fale-conosco"><li>Fale Conosco</li></a>
        </div>
    </header>

    <main>
        <div class="form-cadastro">
            <form class="caixa" action="RegisterUserController" method="post">               
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
                    <input type="email" class="form-control" id="inputEmail4" name="inputEmail" placeholder="Email" required>
                  </div>
                  <div class="form-group col-md-3">
                    <label for="inputPassword4">Senha</label>
                    <input minlength="8" type="password" class="form-control" id="inputPassword" name="inputPassword" placeholder="Senha" required>
                  </div>
                  <div class="form-group col-md-3">
                    <label for="inputPassword4">Verificar senha</label>
                    <input type="password" class="form-control" oninput="verificarSenhas(this)" id="inputPasswordValid" name="inputPasswordValid" placeholder="Verificar Senha" required>
                  </div>
                </div>

                <br> 

                <div class="form-row">
                    <div class="form-group col-md-5">
                        <label for="inputRua">Logradouro</label>
                        <input type="text" class="form-control" id="inputRua" name="inputStreet" placeholder="Avenida Marcondes Ferraz" required>
                    </div>

                    <div class="form-group col-md-2">
                        <label for="inputNumero">N?mero</label>
                        <input type="number" class="form-control" id="inputNumero" name="inputAddressNumber" required>
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
                      <label for="inputCEP">CEP</label>
                      <input type="text" class="form-control" id="inputCEP" name="inputZipCode" required>
                    </div>
                  </div>

                
                <br> 

                <div class="form-row">
                    <div class="form-group col-md-1">
                        <label for="inputTelefone">DDD 1</label>
                        <input type="tel" class="form-control" id="inputTelefone" name="inputDDD1">
                    </div>
                    <div class="form-group col-md-5">
                        <label for="inputTelefone">Telefone 1</label>
                        <input type="tel" class="form-control" id="inputDDD1" name="inputPhoneNumber1">
                    </div>

					<div class="form-group col-md-1">
                        <label for="inputCelular2">DDD 2</label>
                        <input type="tel" class="form-control" id="inputDDD2" name="inputDDD2">
                    </div>
                    <div class="form-group col-md-5">
                        <label for="inputCelular2">Telefone 2</label>
                        <input type="tel" class="form-control" id="inputCelular2" name="inputPhoneNumber2">
                    </div>
                </div>   
                
                <!--<label for="exampleFormControlFile1">Escolha uma foto sua:</label> <br>
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
                  </div>
                  <div class="custom-file">
                    <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                    <label class="custom-file-label" for="inputGroupFile01">Escolher arquivo</label>
                  </div>
                </div>  -->

                <br>

                <div class="form-group">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="gridCheck">
                    <label class="form-check-label" for="gridCheck">
                      Aceito receber mensagens e liga??es da Connect-ONG. 
                    </label>
                  </div>
                </div>

                <br>

                <button disabled type="submit" id="finalizarCadastro" class="btn btn-primary">Finalizar Cadastro</button>
              </form>
        </div>
    </main>
s
        <footer>
            <div class="rodape">
                <p> Controle e Gerenciamento para ONGs ligadas � causa animal <br>
                Curso T�cnico Subsequente em Inform�tica - 4� M�dulo <br>
                2022 - Mariane Rocha, Valdemilson Lins e Yago Augusto - Todos os direitos reservados </p>
                <p> Controle e Gerenciamento para ONGs ligadas ? causa animal <br>
                Curso T?cnico Subsequente em Inform?tica - 3? M?dulo <br>
                2022 - Mariane Milene Xavier Rocha - Todos os direitos reservados </p>
            </div>
        </footer>

</body>

<script src="resources/js/cadastro.js"></script>
<script src="resources/js/jquery.js"></script>
</html>
