<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ado��o</title>
<link rel="stylesheet" href="resources/styles/style_adocao.css">
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
                    Ra�a: SRD - Sem Ra�a Definida<br>
                    Peso: 900g<br>
                    Castra��o: Pendente<br><br>

                    <h6 class="card-title">Dados do(a) Candidato(a) � Tutor(a):</h6>
                    Nome completo: Mariane Milene Xavier Rocha <br>
                    CPF: 000.000.000-00 <br>
                    E-mail: marianemxr@gmail.com <br>
                    CEP: 48603-125 <br>
                    Telefone: (75) XXXX-XXXX <br>
                    Celular 1: (75) 9XXXX-XXXX <br>
                    Celular 2: (75) 9XXXX-XXXX <br> 
                </div>
            </div>

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
                            <input class="form-check-input" type="checkbox" id="gridCheck" required>
                            <label class="form-check-label" for="gridCheck">
                                Estou ciente da minha escolha e da responsabilidade de adotar um animal.
                            </label>
                        </div>
                    
                        <br>

                        <a class="btn btn-primary" href="FinalizarAdocao.jsp" role="button">Confirmar Solicita��o de Ado��o</a> <br><br>
                    </div>
                </div>
            </div>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>