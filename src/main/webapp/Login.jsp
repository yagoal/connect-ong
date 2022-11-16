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
<link rel="stylesheet" href="resources/styles/style_index.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<title>Connect-ONG</title>
</head>
<body>
   <%@ include file="Structs/NavBar.jsp"%>
    <main>
        <div class="mensagem">
            <div id="alerta" class="msg alert alert-info" role="alert" style="color: black;">
                Quer levar mais felicidade e diversão para sua casa? Que tal adotar um animal?<br>
                <strong>Cadastre-se e escolha um amiguinho para viver com você e sua família!</strong>
            </div>
        </div>
        
        <article class="img-index">
            <img class="animais" src="resources/components/index-laranja.svg" alt="Gatos e Cachorros: Adotar é um ato de amor!">
        </article>
	
		<%if (session.getAttribute("userId") == null) {  %>
        <aside>
            <div class="formulario">
                <h5>Bem-vindo(a) ao <a class="boas-vindas" href=#tela-dois style="text-decoration: none;"><b>Connect-ONG</b></a></h5>
                <form action="Login" method="post" class="form">
                    <div class="form-group">
                      <label for="exampleInputEmail1">E-mail</label>
                      <input type="email" name="inputLogin" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Digite seu e-mail">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Senha</label>
                      <input type="password" name="inputPassword" class="form-control" id="exampleInputPassword1" placeholder="Digite sua senha">

                      <div class="senha-variante">
                        <a href="RedefinirSenha.jsp">Esqueci a senha</a>
                      </div>
                    </div>

                    <button type="submit" class="btn btn-primary" role="button">ACESSAR</button>

                    <br><br>

                    <div class="senha-variante text-center">
                        Ainda não se cadastrou? <a href="Cadastro.jsp"><b>Clique aqui</b></a> <br>
                    </div>
                </form>
            </div>
        </aside>
       <% }else{%>
       		<script>
            window.location = "./IndexUser.jsp"
        </script>
       <% }%>

        <aside id="tela-dois">
            <div class="texto">
                <article>
                    <img id="connect-ong" src="resources/components/connect-ong.png" alt="Connect-ONG">
                </article>
                
                <p>Olá, tudo bem? Seja bem-vindo(a)! Somos uma plataforma destinada a ONGs e parceiros.
                <strong>Conectamos seres humanos e animais.</strong> <img alt="patinhas" src="resources/components/favicon-16x16.png"> <br> <br>

				<strong>ONG</strong> <br>
				Cadastre-se em nossa plataforma e facilite seu trabalho através do controle e do gerenciamento 
				de adoções de animais e de doações recebidas. <br> <br>

				<strong>Parceiro</strong> <br>
				Chamamos, carinhosamente, de parceiros aqueles que são amigos dos animais e que têm interesse 
				em adotar um amiguinho ou ajudar as ONGs, através de doações. Cadastre-se e tenha acesso a todas essas funcionalidades!</p>
                </div>
        </aside>
            
        <article class="segunda-imagem">
            <img class="gato-e-cachorro" src="resources/components/gato-e-cachorro.png" alt="Gato e cachorro">
        </article>
            
        <div id="perguntas-frequentes">

            <article>
                <img id="img-perguntas" src="resources/components/perguntas-frequentes.png" alt="Perguntas Frequentes"> <br><br>
            </article>

            <div class="perguntas">
                <div class="question">
                    <input type='checkbox' id='question-1'>
                    <label for='question-1'>
                        > Não estou conseguindo me cadastrar. O que devo fazer?
                    </label>
                    <div class='answer'>
                        Para realizar o cadastro, é necessário preencher todos os campos obrigatórios, bem como adicionar uma foto de perfil. 
                        Sendo assim, cheque se todos os campos necessários foram preenchidos corretamente. Lembre-se, também, que seu e-mail 
                        não deve ter sido utilizado para cadastrar outra conta de usuário.
                    </div>
                </div>
                
                <div class="question">
                    <input type='checkbox' id='question-2'>
                    <label for='question-2'>
                        > Já me cadastrei, porém não estou conseguindo acessar minha conta. O que fazer?
                    </label>
                    <div class='answer'>
                        Verifique se você digitou seu e-mail e sua senha corretamente. Caso você não se lembre qual senha utilizou no cadastro,
                        clique em "Esqueci a senha" para redefini-la.
                    </div>
                </div>
                
                <div class="question">
                    <input type='checkbox' id='question-3'>
                    <label for='question-3'>
                        > Como posso ter acesso à lista de animais disponíveis para adoção?
                    </label>
                        <div class='answer'>
                        No menu inicial, clique em "Animais Disponíveis". Você será redirecionado(a) a uma página contendo a lista de animais que
                        estão disponíveis para adoção e terá acesso a diversas informações sobre cada um deles. 
                    </div>
                </div>
                
                <div class="question">
                    <input type='checkbox' id='question-4'>
                    <label for='question-4'>
                        > Quero adotar um animal! Como solicitar a adoção?
                    </label>
                    <div class='answer'>
                        Na página "Animais Disponíveis", clique em "+ Informações", abaixo da foto do animal que você deseja adotar. Após isso, 
                        será exibido uma tela contendo seus dados e os dados do animal escolhido. Leia as informações adicionais e caso esteja
                        ciente da sua escolha e da responsabilidade de adotar um animal, clique em "Adotar". <br>
                        Outra possibilidade é ir até a página "Meu Perfil", clicar no menu para que sejam exibidas as opções e clicar em "Adotar".
                    </div>
                </div>

                <div class="question">
                    <input type='checkbox' id='question-5'>
                    <label for='question-5'>
                        > Não estou conseguindo adotar um animal. O que fazer?
                    </label>
                    <div class='answer'>
                        Verifique se você está logado em sua conta. Qualquer pessoa pode visualizar a lista de animais 
                        disponíveis, porém para solicitar uma adoção é necessário estar logado em uma conta.
                    </div>
                </div>

            </div>
        </div>

        <div id="fale-conosco">
            
            <article>
                <img id="img-perguntas" src="resources/components/fale-conosco.png" alt="Perguntas Frequentes"> <br><br>
            </article>
            
            <form class="formulario-mensagem">
                <div class="form-group">
                    <label for="exampleFormControlTextarea1"><h6>Por favor, digite sua mensagem no espaço abaixo:</h6></label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="4" required></textarea>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1"><h6>Informe seu e-mail:</h6></label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Digite seu e-mail" required>
                  </div>
            
                <label for="exampleFormControlFile1"><h6>Caso deseje, anexe um arquivo à mensagem:</h6></label> <br>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
                    </div>
                    <div class="custom-file">
                      <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                      <label class="custom-file-label" for="inputGroupFile01">Escolher arquivo</label>
                    </div>
                  </div>

                <button type="button" onClick="redirect()" class="btn btn-primary">Enviar mensagem</button>
            </form>
        </div>
        
    </main>
	<%@ include file="Structs/Footer.jsp"%>
	<script>
    	function redirect(){
      		alert("Sua mensagem foi enviada! Fique à vontade para nos contatar quando desejar. - Equipe Connect-ONG")
            	window.location = "./Login.jsp"
        }
    </script>
    
   	<script src="resources/app.js"></script>
    <noscript>You need to enable Javascript to view the full site.</noscript>
    
</body>
</html>