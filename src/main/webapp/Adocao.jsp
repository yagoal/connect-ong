<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adoção</title>
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
                    Sexo: Fêmea<br>
                    Raça: SRD - Sem Raça Definida<br>
                    Peso: 900g<br>
                    Castração: Pendente<br><br>

                    <h6 class="card-title">Dados do(a) Candidato(a) à Tutor(a):</h6>
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
                            Não se preocupe com a castração do animal. <br>
                            <b>A Connect-ONG se responsabiliza em castrá-lo.</b> A castração terá uma data marcada e você apenas precisará levá-lo à clínica veterinária indicada.
                            Após o procedimento, você receberá instruções sobre os cuidados para com o animal.
                            <b>A Connect-ONG também se responsabiliza pelos custos do animal durante o primeiro mês, desde que comprovados.</b> <br>
                            Também temos parceiros nessa caminhada pela causa animal. 
                            A médica e a clínica veterinária parceiras oferecem <b>15% de desconto em consultas, procedimentos cirúrgicos e produtos</b> para quem adota um animalzinho pela Connect-ONG.
                            Além disso, a X Rações também oferecerá <b>20% de desconto em seus produtos (alimentos, brinquedos, etc).</b> <br> <br>
                            Mas o maior presente ao realizar uma adoção é levar o novo companheiro para casa, ofertar e receber amor e carinho e conviver com ele todos os dias. <br> <br>
                            Caso você confirme o pedido de adoção, entraremos em contato com você para informarmos nosso endereço e conversaremos sobre a data na qual você deverá buscar o animal.
                            Além disso, serão informados quais são os documentos que você precisará apresentar no ato da adoção, no dia marcado.
                            Trata-se de <b>documentos pessoais</b>, para comprovar sua identidade, e <b>comprovante de renda e/ou de vínculo empregatício</b>.
                            Além disso, você assinará um <b>termo de responsabilidade</b>, comprovando seu desejo em adotar o animal.                 
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

                        <a class="btn btn-primary" href="FinalizarAdocao.jsp" role="button">Confirmar Solicitação de Adoção</a> <br><br>
                    </div>
                </div>
            </div>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
</html>