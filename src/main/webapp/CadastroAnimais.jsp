
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Animais</title>
<!-- CSS only -->
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
	<form action="RegisterSuccess" method="post">
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" placeholder="Nome..." name="inputName">
			  <label for="floatingInput">Nome</label>
			</div>
	
			
			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" placeholder="Especie..." name="inputEspecie">
			  <label for="floatingInput">Especie</label>
			</div>

			<div class="form-floating mb-3">
			  <input type="text" class="form-control" id="floatingInput" placeholder="Pelo..." name="inputPelo">
			  <label for="floatingInput">Pelo</label>
			</div>
			
			<button type="submit" class="btn btn-primary">Enviar</button>

	</form>
</body>
</html>