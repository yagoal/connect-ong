<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Animal" %>
<%@ page import="dao.DaoGeneric" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Animais Dispon�veis</title>
<link rel="stylesheet" href="resources/styles/style_animais-disponiveis.css">

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</head>
<body>
	<%@ include file="Structs/NavBar.jsp"%>
    <main>
    <% 
    	List<Animal> animals = (List)DaoGeneric.getInstance().retrieveAll(Animal.class);		
    	SimpleDateFormat dateFormated = new SimpleDateFormat("dd/MM/yyyy"); 
		SimpleDateFormat dateFormatedYear = new SimpleDateFormat("yyyy");  
     %>
     <!-- Button trigger modal -->
	

<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog modal-xl">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">Informa��es Adicionais</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	       <div class="infos card">
	       <div class="info-animal">
	       <img class="card-img-top" id="imgModal" src="resources/components/adocao-gato-1.png" alt="Imagem de capa do card">
	       		<h5 id="nome" class="card-title"></h5>
	       			<p ><span >Data de nascimento:</span ><span id="nasc"><span></span></span> </p>
                    <p ><span >Sexo:</span><span id="sexo" ><span></span></span> </p>
                    <p ><span >Ra�a:</span><span id="raca" ><span></span></span> </p>
                    <p ><span >Peso:</span><span id="peso" ><span></span></span> </p>
                    <p ><span >Castra��o:</span><span id="castracao" ><span></span></span> </p>
	       </div>
	       <div class="info-tutor">
	       		<h6 class="card-title">Dados do(a) Candidato(a) � Tutor(a):</h6>
                    <b>Nome completo:</b><%=session.getAttribute("nome") %> <br>
                    <b>CPF:</b> <%=session.getAttribute("cpf") %> <br>
                    <b>E-mail:</b> <%=session.getAttribute("login")%> <br>
                    <b>CEP:</b> <%=session.getAttribute("cep") %> <br>
                    <b>Telefone 1:</b> <%=session.getAttribute("telefone1") %> <br>
                    <b>Telefone 2:</b> <%=session.getAttribute("telefone2") %> <br> 
	       </div>
	       </div>
	       <div class="aviso">
	       		<div class="card">
                <div class="card-2">
                    <div class="card-body">
                        <h5 class="card-title">IMPORTANTE</h5>
                        <p class="card-text">
                            N�o se preocupe com a castra��o do animal. <br>
                            <b>A Connect-ONG se responsabiliza em castr�-lo.</b> A castra��o ter� uma data marcada e voc� apenas precisar� lev�-lo � cl�nica veterin�ria indicada.
                            Ap�s o procedimento, voc� receber� instru��es sobre os cuidados para com o animal.
                            <b>A Connect-ONG tamb�m se responsabiliza pelos custos do animal durante o primeiro m�s, desde que comprovados.</b> <br>
                            Tamb�m temos parceiros nessa caminhada pela causa animal. 
                            A m�dica e a cl�nica veterin�ria parceiras oferecem <b>15% de desconto em consultas, procedimentos cir�rgicos e produtos</b> para quem adota um animalzinho pela Connect-ONG.
                            Al�m disso, a X Ra��es tamb�m oferecer� <b>20% de desconto em seus produtos (alimentos, brinquedos, etc).</b> <br> <br>
                            Mas o maior presente ao realizar uma ado��o � levar o novo companheiro para casa, ofertar e receber amor e carinho e conviver com ele todos os dias. <br> <br>
                            Caso voc� confirme o pedido de ado��o, entraremos em contato com voc� para informarmos nosso endere�o e conversaremos sobre a data na qual voc� dever� buscar o animal.
                            Al�m disso, ser�o informados quais s�o os documentos que voc� precisar� apresentar no ato da ado��o, no dia marcado.
                            Trata-se de <b>documentos pessoais</b>, para comprovar sua identidade, e <b>comprovante de renda e/ou de v�nculo empregat�cio</b>.
                            Al�m disso, voc� assinar� um <b>termo de responsabilidade</b>, comprovando seu desejo em adotar o animal.                 
                        </p>
                    </div>

                    <div class="card-footer">
                        <div class="form-check">
                            <input id="inputCheck" class="form-check-input" type="checkbox" id="gridCheck" required>
                            <label class="form-check-label" for="gridCheck">
                                Estou ciente da minha escolha e da responsabilidade de adotar um animal.
                            </label>
                        </div>
                    </div>
                </div>
            </div>
	       </div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
	        <button disabled id="adotarButton"  type="button" data-bs-dismiss="modal" class="btn btn-primary">Adotar</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- onClick="redirectSucess()" -->
	
     <div class="row p-5" align="center" >
		        <% for (Animal animal: animals) {
		        		if (animal.getAvailability()) {
							Date dateYear = animal.getYearDate();
							String dateFromatedYearRender = dateFormatedYear.format(dateYear);
							Date redempetion = animal.getRedempetionDate();
							String dateFromatedRedempetionRender = dateFormated.format(redempetion);
							String castracao = animal.getCastration() == true ? "Realizada" : "Pendente";
							String imgPath = animal.getImgPath() == null ? "resources/components/no-photo.jpeg" : animal.getImgPath() ;
				%>
				<div class="col-sm-4 my-3">
	                <div class="card">
	                   <img class="card-img-top" width="300" height="250" src="<%= imgPath %>" alt="Imagem de capa do card">
	                     <div class="card-body">
		                    <h5 class="card-title"><%= animal.getName() %></h5>
							<p class="card-text">Ano de Nascimento: <%= dateFromatedYearRender %></p>
		                    <p class="card-text">Sexo: <%= animal.getGender() %></p>
		                    <p class="card-text">Ra�a: <%= animal.getBreed() %></p>
		                    <p class="card-text">Peso: <%= animal.getWeight() %> kg</p></p>
		                    <p class="card-text">Data do resgate: <%= dateFromatedRedempetionRender %></p>
		                    <p class="card-text">Castra��o: <%= castracao %></p>
	                 	 </div>
	                  	<div class="card-footer" align="center">
	                    	<button type="button" onClick="redirect()" class="btn btn-primary modalButton" data-bs-toggle="modal" data-bs-target="#staticBackdrop" key="<%=animal.getId() %>">
	  							+Informa��es
							</button>
	                 	 </div>
	               	</div>
	             </div>
                <% }
			      } %>

     </div>
      <%if (session.getAttribute("userId") == null) {  %>
        <script>
        function redirect(){
        	alert("Voc� precisa estar logado para saber mais informa��es")
            window.location = "http://localhost:8080/connect-ong/Login.jsp"
        }
        </script>
     <% } %>

    </main>
    <script src="resources/js/modal.js"></script>
	<%@ include file="Structs/Footer.jsp"%>
</body>
</html>