<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Animal</title>
<link rel="stylesheet" href="resources/styles/style_pagina-animal.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="Structs/NavBar.jsp"%>

    <main>
        <div class="perfil">  
                <div class="card">
                    <img class="card-img-top" src="resources/components/adocao-gato-1.png" alt="Imagem de capa do card">
                    <div class="card-body">
                        <h5 class="card-title">LILICA</h5>
                        Data de nascimento: 01/04/2022<br>
                        Sexo: F�mea<br>
                        Esp�cie: Gato<br>
                        Ra�a: SRD - Sem Ra�a Definida<br>
                        Peso: 900g<br>
                        Data do resgate: 03/04/2022<br>
                        Castra��o: Pendente<br>
                        Ado��o: Dispon�vel<br>
                    </div>
                </div>

                <div class="card">
                    <div class="card-2">
                        <div class="card-body">
                            <h5 class="card-title">+ Informa��es</h5>
                            <p class="card-text">Antes de decidir adotar um animal, converse com sua fam�lia/as pessoas que moram com voc�.
                            Lembre-se que animais fazem barulho e bagun�a, t�m necessidades fisiol�gicas, precisam passear... 
                            Assim como n�s, seres humanos, ficamos doentes e precisamos ir ao hospital e comprar rem�dios, 
                            idas ao veterin�rio e compras de rem�dios podem ser necess�rias para garantir a sa�de do seu bichinho.<br><br>
                            A responsabilidade � enorme, � verdade! Por�m, lembre-se, tamb�m, da felicidade que haver� em sua casa e do amor que voc� receber�.
                            Se voc� tiver condi��es de cuidar de um animalzinho, d� essa oportunidade a ele! Ele retribuir� todo o carinho que receber.</p>
                        </div>
    
                        <div class="card-footer">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck" required>
                                <label class="form-check-label" for="gridCheck">
                                    Estou ciente da minha escolha e da responsabilidade de adotar um animal.
                                </label>
                            </div>
                        
                            <br>
    
                            <a class="btn btn-primary" href="Adocao.jsp" role="button">Solicitar Ado��o</a> <br><br>
                        </div>
                    </div>
                </div>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>