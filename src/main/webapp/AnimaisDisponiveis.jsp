<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Animais Dispon�veis</title>
<link rel="stylesheet" href="resources/styles/style_animais-disponiveis.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="Structs/NavBar.jsp"%>
    <main>
        <div class="caixa">
            
            <div class="card-deck">
                <div class="card">
                  <img class="card-img-top" src="resources/components/adocao-gato-1.png" alt="Imagem de capa do card">
                  <div class="card-body">
                    <h5 class="card-title">LILICA</h5>
                    <p class="card-text">Data de nascimento: 01/04/2022</p>
                    <p class="card-text">Sexo: F�mea</p>
                    <p class="card-text">Ra�a: SRD</p>
                    <p class="card-text">Peso: 900g</p>
                    <p class="card-text">Data do resgate: 03/04/2022</p>
                    <p class="card-text">Castra��o: Pendente</p>
                  </div>
                  <div class="card-footer">
                    <a class="btn btn-primary" href="PaginaAnimal.jsp" role="button">+ Informa��es</a> <br><br>
                  </div>
                </div>

                <div class="card">
                  <img class="card-img-top" src="resources/components/adocao-cachorro-1.png" alt="Imagem de capa do card">
                  <div class="card-body">
                    <h5 class="card-title">PIPOCA</h5>
                    <p class="card-text">Data de nascimento: 31/12/2021</p>
                    <p class="card-text">Sexo: Macho</p>
                    <p class="card-text">Ra�a: Golden Retrivier</p>
                    <p class="card-text">Peso: 10kg</p>
                    <p class="card-text">Data do resgate: 03/01/2022</p>
                    <p class="card-text">Castra��o: Realizada</p>
                  </div>
                  <div class="card-footer">
                    <a class="btn btn-primary" href="PaginaAnimal.jsp" role="button">+ Informa��es</a> <br><br>
                  </div>
                </div>

                <div class="card">
                  <img class="card-img-top" src="resources/components/adocao-gato-2.png" alt="Imagem de capa do card">
                  <div class="card-body">
                    <h5 class="card-title">MILI</h5>
                    <p class="card-text">Data de nascimento: 25/04/2022</p>
                    <p class="card-text">Sexo: F�mea</p>
                    <p class="card-text">Ra�a: SRD</p>
                    <p class="card-text">Peso: 900g</p>
                    <p class="card-text">Data do resgate: 26/04/2022</p>
                    <p class="card-text">Castra��o: Pendente</p>
                  </div>
                  <div class="card-footer">
                    <a class="btn btn-primary" href="PaginaAnimal.jsp" role="button">+ Informa��es</a> <br><br>
                  </div>
                </div>

            </div>

            <div class="card-deck">
                <div class="card">
                  <img class="card-img-top" src="resources/components/adocao-cachorro-2.png" alt="Imagem de capa do card">
                  <div class="card-body">
                    <h5 class="card-title">NINA</h5>
                    <p class="card-text">Data de nascimento: 31/07/2021</p>
                    <p class="card-text">Sexo: F�mea</p>
                    <p class="card-text">Ra�a: SRD</p>
                    <p class="card-text">Peso: 8kg</p>
                    <p class="card-text">Data do resgate: 03/04/2022</p>
                    <p class="card-text">Castra��o: Realizada</p>
                  </div>
                  <div class="card-footer">
                    <a class="btn btn-primary" href="PaginaAnimal.jsp" role="button">+ Informa��es</a> <br><br>
                  </div>
                </div>

                <div class="card">
                  <img class="card-img-top" src="resources/components/adocao-gato-3.png" alt="Imagem de capa do card">
                  <div class="card-body">
                    <h5 class="card-title">CHURROS</h5>
                    <p class="card-text">Data de nascimento: 05/03/2018</p>
                    <p class="card-text">Sexo: Macho</p>
                    <p class="card-text">Ra�a: SRD</p>
                    <p class="card-text">Peso: 4kg</p>
                    <p class="card-text">Data do resgate: 30/03/2018</p>
                    <p class="card-text">Castra��o: Realizada</p>
                  </div>
                  <div class="card-footer">
                    <a class="btn btn-primary" href="PaginaAnimal.jsp" role="button">+ Informa��es</a> <br><br>
                  </div>
                </div>

                <div class="card">
                  <img class="card-img-top" src="resources/components/adocao-cachorro-3.png" alt="Imagem de capa do card">
                  <div class="card-body">
                    <h5 class="card-title">POPEYE</h5>
                    <p class="card-text">Data de nascimento: 19/03/2022</p>
                    <p class="card-text">Sexo: Macho</p>
                    <p class="card-text">Ra�a: SRD</p>
                    <p class="card-text">Peso: 4.5kg</p>
                    <p class="card-text">Data do resgate: 03/04/2022</p>
                    <p class="card-text">Castra��o: Pendente</p>
                  </div>
                  <div class="card-footer">
                    <a class="btn btn-primary" href="PaginaAnimal.jsp" role="button">+ Informa��es</a> <br><br>
                  </div>
                </div>

        </div>
        
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>