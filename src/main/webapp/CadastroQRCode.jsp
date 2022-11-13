<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="apple-touch-icon" sizes="180x180" href="resources/components/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="resources/components/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="resources/components/favicon-16x16.png">
<link rel="manifest" href="resources/components/site.webmanifest">

<meta charset="UTF-8">
<link rel="stylesheet" href="resources/styles/style_cadastro-qrcode.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<title>Cadastro de QR Code</title>
</head>
<body>
	<%@ include file="Structs/NavBar.jsp"%>
        
    <main>
        <div class="form-cadastro">
            <form class="caixa">             
                <form class="caixa" action="RegisterUserController" method="post" enctype="multipart/form-data">
					<div class="form-row justify-content-center">
						<div class="form-group col-md-4 justify-content-center text-center ">
						 	<label for="formFile" class="form-label">Anexe a foto do QR Code:</label>
						  	<input class="form-control" name="file" accept="image/*" type="file" id="formFile"> <br>
						  	<span class="preview"> <img src="<%=session.getAttribute("userId") == null ? "resources/components/no-photo.jpeg" : session.getAttribute("imgQRCode") %>" 
						  	id="preview" width="200px" border-radius="10px" margin-top="10px"/> </span>
						</div>  
					</div>    
					   
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="inputCompanyName">Razão Social</label>
                    	<input type="text" value="<%=session.getAttribute("razaoSocial") == null ? "" : session.getAttribute("razaoSocial") %>" class="form-control" id="inputCompanyName" name="inputCompanyName" placeholder="Digite a razão social/nome de registro da instituição" required>
                    </div>
                </div>           
                
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputBranch">Agência</label>
                        <input type="text" value="<%=session.getAttribute("agencia") == null ? "" : session.getAttribute("agencia") %>" class="form-control" id="inputBranch" name="inputBranch" placeholder="Exemplo: 0621-1" required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputAccount">Conta</label>
                        <input type="text" value="<%=session.getAttribute("conta") == null ? "" : session.getAttribute("conta") %>" class="form-control" id="inputAccount" name="inputAccount" placeholder="Exemplo: 10000-2" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label for="inputKey">Chave Pix</label>
                        <input type="text" value="<%=session.getAttribute("chave") == null ? "" : session.getAttribute("chave") %>" class="form-control" id="inputKey" name="inputKey" placeholder="E-mail, CNPJ, telefone, etc." required>
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="inputCodeQR">Link/Código do QR Code</label>
                        <input type="text" value="<%=session.getAttribute("codigoQR") == null ? "" : session.getAttribute("codigoQR") %>" class="form-control" id="inputCodeQR" name="inputCodeQR" placeholder="Digite o link/código do QR Code" required>
                    </div>
                </div>    

                <button type="submit" class="btn btn-primary">Finalizar Cadastro do QR Code</button>
              </form>
        </form>
        </div>
    </main>
	<%@ include file="Structs/Footer.jsp"%>

</body>
<script src="resources/js/preview.js"></script>
</html>