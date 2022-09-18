<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
	
		<%-- <%if (session.getAttribute("userId") == null) {  %> --%>
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
       <%--  <% } %> --%>

        <aside id="tela-dois">
            <div class="texto">
                <article>
                    <img id="connect-ong" src="resources/components/connect-ong.png" alt="Connect-ONG">
                </article>
                
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod at esse deleniti perspiciatis provident aut eos minus hic quia vitae ab praesentium similique repellat eveniet vero, 
                    vel voluptas distinctio quasi architecto ducimus ullam voluptatum. Error id placeat voluptatum optio reprehenderit excepturi voluptas nostrum quas fugit nam. 
                    Optio fugit molestias quia cum eveniet vitae voluptatem excepturi ipsam quidem placeat. Numquam quod impedit, mollitia dignissimos sunt laborum, 
                    cumque expedita aut architecto tenetur maxime voluptate beatae porro error delectus sapiente vitae blanditiis? Magnam sequi illo sunt aspernatur dolorum, repellendus saepe,
                    explicabo quaerat nulla autem soluta aliquam totam commodi cumque aperiam porro nisi, eligendi debitis accusamus obcaecati earum dignissimos! Reprehenderit qui hic, 
                    blanditiis sit eum laudantium est officia molestiae facere repellat quae velit maiores. Cupiditate, veniam. Voluptate ut fugiat expedita est ullam! 
                    Porro sit recusandae culpa fugit sint!</p>
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
                        > Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident magnam natus, eligendi voluptatibus reiciendis mollitia non?
                    </label>
                    <div class='answer'>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Id ratione, excepturi nulla officia quibusdam commodi!
                    </div>
                </div>
                
                <div class="question">
                    <input type='checkbox' id='question-2'>
                    <label for='question-2'>
                        > Reiciendis corporis laudantium aliquid excepturi eveniet, libero, rem hic, modi necessitatibus consequuntur iste suscipit?
                    </label>
                    <div class='answer'>
                        Cupiditate, veniam. Voluptate ut fugiat expedita est ullam! Porro sit recusandae culpa fugit sint!
                    </div>
                </div>
                
                <div class="question">
                    <input type='checkbox' id='question-3'>
                    <label for='question-3'>
                        > Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur, consequatur?
                    </label>
                        <div class='answer'>
                        Optio fugit molestias quia cum eveniet vitae voluptatem excepturi ipsam quidem placeat. 
                    </div>
                </div>
                
                <div class="question">
                    <input type='checkbox' id='question-4'>
                    <label for='question-4'>
                        > Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab quidem doloribus numquam fuga in ipsum iure, animi corporis tempore laboriosam alias distinctio sunt cupiditate?
                    </label>
                    <div class='answer'>
                        Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptate blanditiis inventore voluptas animi itaque distinctio!
                    </div>
                </div>

                <div class="question">
                    <input type='checkbox' id='question-5'>
                    <label for='question-5'>
                        > Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ea eum blanditiis incidunt aliquid facilis nesciunt eaque magni sapiente voluptatibus recusandae?
                    </label>
                    <div class='answer'>
                        Lorem ipsum dolor sit amet consectetur.
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