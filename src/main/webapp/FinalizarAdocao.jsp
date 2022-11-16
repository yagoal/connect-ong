<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="apple-touch-icon" sizes="180x180" href="resources/components/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="resources/components/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="resources/components/favicon-16x16.png">
<link rel="manifest" href="resources/components/site.webmanifest">

<meta charset="ISO-8859-1">
<title>Finalizar Adoção</title>
<link rel="stylesheet" href="resources/styles/style_finalizar-adocao.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="Structs/NavBar.jsp"%>

    <main>
        <div class="perfil">  
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">MUITO OBRIGADO!</h5>
                    <p class="card-text">
                        Temos certeza que o animal escolhido por você ficará muito feliz e animado ao saber que existe algúem que quer tê-lo em sua família. <b>Muito obrigado por esse ato de amor.</b> <br> <br>
                        Entraremos em contato com você pelo email e número de celular fornecidos e combinaremos todos os detalhes sobre a adoção, incluindo endereço, data e horário. <br> <br>
                        <b>Por favor, não deixe de comparecer!</b> Somos flexíveis em relação a datas e horários. Então, tudo será combinado de forma que ambas as partes concordem.
                        Entraremos em contato com você, novamente, no dia marcado para confirmar que você irá comparecer. 
                        <b>Caso haja algum imprevisto, não deixe de nos informar.</b>
                        <br> <br>
                        <b>Lembre-se: há um animalzinho esperando por você!</b> <br>
                        <b>PARABÉNS PELO SEU GESTO! QUE DEUS TE ABENÇOE!</b>
                    </div>

                    <div class="card-footer">
                        <a class="btn btn-primary" href="MeuPerfil.jsp" role="button">Retornar ao Meu Perfil</a>
                        <a class="btn btn-primary" href="Login.jsp#perguntas-frequentes" role="button">Perguntas Frequentes</a>
                        <a class="btn btn-primary" href="Login.jsp#fale-conosco" role="button">Fale Conosco</a>
                    </div>
                </div>
            </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>