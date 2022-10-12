<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="apple-touch-icon" sizes="180x180" href="resources/components/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="resources/components/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="resources/components/favicon-16x16.png">
<link rel="manifest" href="resources/components/site.webmanifest">

<meta charset="UTF-8">
<link rel="stylesheet" href="resources/styles/style_cadastro.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<title>Cadastro de Animais</title>
</head>
<body>

    <%@ include file="Structs/NavBar.jsp"%>
    <% if(session.getAttribute("docType") == null) {
    	response.sendRedirect("Login.jsp");
    }
    
    
    %>
    <main>
        <div class="form-cadastro">
            <form class="caixa" action="RegisterAnimalController" method="post" enctype="multipart/form-data">    
            
                <div class="form-row justify-content-center">
						<div class="form-group col-md-4 justify-content-center text-center ">
						  <label for="formFile" class="form-label">Escolha uma foto do animal:</label>
						  <input class="form-control" name="file" accept="image/*" type="file" id="formFile">
							<span class="preview"></span>
						</div>  
					</div>           
                <div class="form-row">
                    <div class="form-group col-md-8">
                        <label for="inputName">Nome do animal</label>
                        <input type="text" class="form-control" id="inputName" name="inputName" placeholder="Digite o nome" required>
                    </div>

                    <div class="form-group col-md-2">
                        <label for="inputBirthYearDate">Ano de nascimento</label>
                        <input type="text" class="form-control"  name="inputBirthYearDate" id="inputBirthYearDate" placeholder="2018, 2019" required>
                    </div>

                    <div class="form-group col-md-2">
                        <label for="inputGender">Sexo</label>
                        <select id="inputGender" name="inputGender" class="form-control" required>
                          <option selected>Escolher...</option>
                          <option value="Fêmea">Fêmea</option>
                          <option value="Macho">Macho</option>
                        </select>
                    </div>
                </div>           
                
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputSpecie">Espécie</label>
                        <select id="inputSpecie" name="inputSpecie" class="form-control" required>
                          <option selected>Escolher...</option>
                          <option value="Canino">Canino</option>
                          <option value="Felino">Felino</option>
                          <option value="outro">Outro</option>
                        </select>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputBreed">Raça</label>
                        <input type="text" class="form-control" id="inputBreed" name="inputBreed" placeholder="SRD (Sem Raça Definida), Pinscher..." required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputWeight">Peso</label>
                        <input type="text" name="inputWeight" class="form-control" id="inputWeight"  placeholder="Em quilogramas" required>
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputRedempetionDate">Data do resgate</label>
                        <input type="date" class="form-control" name="inputRedempetionDate" id="inputRedempetionDate" required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputCastration">Castração</label>
                        <select id="inputCastration" name="inputCastration" class="form-control" required>
                            <option selected>Escolher...</option>
                            <option value="false">Pendente</option>
                            <option value="true">Realizada</option>
                          </select>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputAvailability">Adoção</label>
                        <select id="inputAvailability" name="inputAvailability" class="form-control" required>
                            <option selected>Escolher...</option>
                            <option value="true">Disponível</option>
                            <option value="false">Indisponível</option>
                          </select>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Finalizar Cadastro</button>
              </form>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
<script src="resources/js/preview.js"></script>
</html>