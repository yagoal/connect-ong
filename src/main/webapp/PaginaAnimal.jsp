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
                        Sexo: Fêmea<br>
                        Espécie: Gato<br>
                        Raça: SRD - Sem Raça Definida<br>
                        Peso: 900g<br>
                        Data do resgate: 03/04/2022<br>
                        Castração: Pendente<br>
                        Adoção: Disponível<br>
                    </div>
                </div>

                <div class="card">
                    <div class="card-2">
                        <div class="card-body">
                            <h5 class="card-title">+ Informações</h5>
                            <p class="card-text">Antes de decidir adotar um animal, converse com sua família/as pessoas que moram com você.
                            Lembre-se que animais fazem barulho e bagunça, têm necessidades fisiológicas, precisam passear... 
                            Assim como nós, seres humanos, ficamos doentes e precisamos ir ao hospital e comprar remédios, 
                            idas ao veterinário e compras de remédios podem ser necessárias para garantir a saúde do seu bichinho.<br><br>
                            A responsabilidade é enorme, é verdade! Porém, lembre-se, também, da felicidade que haverá em sua casa e do amor que você receberá.
                            Se você tiver condições de cuidar de um animalzinho, dê essa oportunidade a ele! Ele retribuirá todo o carinho que receber.</p>
                        </div>
    
                        <div class="card-footer">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck" required>
                                <label class="form-check-label" for="gridCheck">
                                    Estou ciente da minha escolha e da responsabilidade de adotar um animal.
                                </label>
                            </div>
                        
                            <br>
    
                            <a class="btn btn-primary" href="Adocao.jsp" role="button">Solicitar Adoção</a> <br><br>
                        </div>
                    </div>
                </div>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>