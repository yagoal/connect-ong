<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="resources/styles/style_cadastro.css">
<link rel="stylesheet" href="resources/Bootstrap/css/bootstrap.min.css">
<title>Cadastro de Animais</title>
</head>
<body>
    <header class="cabecalho">
        <div class="logotipo">
            <img class="img-logotipo" src="resources/components/img-temp.png" alt="Logotipo" >
        </div>

        <div class="menu">
            <a href="Index.jsp"><li>Home</li></a>
            <a href="Index.jsp#tela-dois"><li>Sobre</li></a>
            <a href="AnimaisDisponiveis.jsp"><li>Animais Disponíveis</li></a>
            <a href="MeuPerfil.jsp"><li>Meu Perfil</li></a>
            <a href="Index.jsp#perguntas-frequentes"><li>Perguntas Frequentes</li></a>
            <a href="Index.jsp#fale-conosco"><li>Fale Conosco</li></a>
        </div>
    </header>

    <main>
        <div class="form-cadastro">
            <form class="caixa">               
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputName">Nome do animal</label>
                        <input type="text" class="form-control" id="inputName" placeholder="Digite o nome" required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputDataNasc">Data de nascimento</label>
                        <input type="date" class="form-control" id="inputDataNasc" required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputSexo">Sexo</label>
                        <select id="inputSexo" class="form-control" required>
                          <option selected>Escolher...</option>
                          <option>Fêmea</option>
                          <option>Macho</option>
                        </select>
                    </div>
                </div>           
                
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputEspecie">Espécie</label>
                        <input type="text" class="form-control" id="inputEspecie" placeholder="Gato, cachorro..." required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputRaca">Raça</label>
                        <input type="text" class="form-control" id="inputRaca" placeholder="SRD (Sem Raça Definida), Pinscher..." required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputPeso">Peso</label>
                        <input type="number" class="form-control" id="inputPeso"  placeholder="Em gramas" required>
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputDataResg">Data do resgate</label>
                        <input type="date" class="form-control" id="inputDataResg" required>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputCastracao">Castração</label>
                        <select id="inputCastracao" class="form-control" required>
                            <option selected>Escolher...</option>
                            <option>Pendente</option>
                            <option>Realizada</option>
                          </select>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="inputAdocao">Adoção</label>
                        <select id="inputAdocao" class="form-control" required>
                            <option selected>Escolher...</option>
                            <option>Disponível</option>
                            <option>Adotado</option>
                          </select>
                    </div>
                </div>
                
                <label for="exampleFormControlFile1">Escolha uma foto do animal:</label> <br>
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
                  </div>
                  <div class="custom-file">
                    <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                    <label class="custom-file-label" for="inputGroupFile01">Escolher arquivo</label>
                  </div>
                </div>

                <br>

                <button type="submit" class="btn btn-primary">Finalizar Cadastro</button>
              </form>
        </div>
    </main>

        <footer>
            <div class="rodape">
                <p> Controle e Gerenciamento para ONGs ligadas à causa animal <br>
                Curso Técnico Subsequente em Informática - 4º Módulo <br>
                2022 - Mariane Rocha, Valdemilson Lins e Yago Augusto - Todos os direitos reservados </p>
            </div>
        </footer>

</body>
</html>