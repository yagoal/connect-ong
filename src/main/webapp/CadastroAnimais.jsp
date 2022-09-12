<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="resources/styles/style_cadastro.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<title>Cadastro de Animais</title>
</head>
<body>
    <%@ include file="Structs/NavBar.jsp"%>
    
    <main>
        <div class="form-cadastro">
            <form class="caixa" action="RegisterAnimalController" method="post" enctype="multipart/form-data">               
                <div class="form-row">
                    <div class="form-group col-md-8">
                        <label for="inputName">Nome do animal</label>
                        <input type="text" class="form-control" id="inputName" name="inputName" placeholder="Digite o nome" required>
                    </div>

                    <div class="form-group col-md-2">
                        <label for="inputBirthYearDate">Ano de nascimento</label>
                        <input type="text" class="form-control"  name="inputBirthYearDate" id="inputBirthYearDate" placeholder="2018..., 2019..." required>
                    </div>

                    <div class="form-group col-md-2">
                        <label for="inputGender">Sexo</label>
                        <select id="inputGender" name="inputGender" class="form-control" required>
                          <option selected>Escolher...</option>
                          <option value="F�mea">F�mea</option>
                          <option value="Macho">Macho</option>
                        </select>
                    </div>
                </div>           
                
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputSpecie">Esp�cie</label>
                        <select id="inputSpecie" name="inputSpecie" class="form-control" required>
                          <option selected>Escolher...</option>
                          <option value="Canino">Canino</option>
                          <option value="Felino">Felino</option>
                          <option value="outro">Outro</option>
                        </select>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputBreed">Ra�a</label>
                        <input type="text" class="form-control" id="inputBreed" name="inputBreed" placeholder="SRD (Sem Ra�a Definida), Pinscher..." required>
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
                        <label for="inputCastration">Castra��o</label>
                        <select id="inputCastration" name="inputCastration" class="form-control" required>
                            <option selected>Escolher...</option>
                            <option value="false">Pendente</option>
                            <option value="true">Realizada</option>
                          </select>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputAvailability">Ado��o</label>
                        <select id="inputAvailability" name="inputAvailability" class="form-control" required>
                            <option selected>Escolher...</option>
                            <option value="true">Dispon�vel</option>
                            <option value="false">Adotado</option>
                          </select>
                    </div>
                </div>
                
                <label for="exampleFormControlFile1">Escolha uma foto do animal:</label> <br>
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
                  </div>
                  <div class="custom-file">
                    <input type="file" class="custom-file-input" name="file" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                    <label class="custom-file-label" for="inputGroupFile01">Escolher arquivo</label>
                  </div>
                </div>

                <br>

                <button type="submit" class="btn btn-primary">Finalizar Cadastro</button>
              </form>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>