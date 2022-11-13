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
<link rel="stylesheet" href="resources/styles/style_index-user-ong.css">
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
	
		<%-- <%if (session.getAttribute("userId") == null) {  %> --%>
        <aside>
            <div class="caixa">
                <h5>Bem-vindo(a) ao <a class="boas-vindas" href=#tela-dois style="text-decoration: none;"><b>Connect-ONG</b></a></h5>
                <div class="user">
                	<b>Você está logado como:</b> <br> <%=session.getAttribute("nome") %> <br> <br>
                	<b>Quantidade de animais cadastrados:</b> <%=session.getAttribute("listaAnimais") %> <br> <br>
                	
                        <a href="CadastroAnimais.jsp" class="btn btn-outline-primary">Cadastrar Animais<svg class=" mx-4" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hearts" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M4.931.481c1.627-1.671 5.692 1.254 0 5.015-5.692-3.76-1.626-6.686 0-5.015Zm6.84 1.794c1.084-1.114 3.795.836 0 3.343-3.795-2.507-1.084-4.457 0-3.343ZM7.84 7.642c2.71-2.786 9.486 2.09 0 8.358-9.487-6.268-2.71-11.144 0-8.358Z"/>
</svg>
						</a>
                        
                        <br> <br>
                        
                        <a href="" class="btn btn-outline-success">Gerenciar Doações <svg class=" mx-4" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash-stack" viewBox="0 0 16 16">
  <path d="M1 3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1H1zm7 8a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
  <path d="M0 5a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V5zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V7a2 2 0 0 1-2-2H3z"/>
</svg>
                        </a>
                        
                        <br> <br>
                        
                        <a href="Logout.jsp" class="btn btn-outline-danger">Deslogar <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
                            <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/></svg>
                        </a>             	
                </div>
            </div>
        </aside>
       <%--  <% } %> --%>

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
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="4"></textarea>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1"><h6>Informe seu e-mail:</h6></label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Digite seu e-mail">
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

                <a class="btn btn-primary" href="#" role="button">Enviar mensagem</a>
            </form>
        </div>
        
    </main>
	<%@ include file="Structs/Footer.jsp"%>

        <script src="resources/app.js"></script>
        <noscript>You need to enable Javascript to view the full site.</noscript>
</body>
</html>