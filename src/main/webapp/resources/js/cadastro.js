//script para verificar se todos os campos estão preenchidos corretamente para liberar o botão de submit
let form = document.querySelector('form')
        const botao = document.querySelector('#finalizarCadastro')
        form.addEventListener('input', function(){
			
            let libera = []
            const campos = document.querySelectorAll('input')
            const negados = document.querySelectorAll('.negado')
           
			console.log(negados)
			campos.forEach(e => {
	        	if(e.value){
	            	libera.push(true)
	            }          
            if(libera.length == campos.length && !negados.length){
                botao.removeAttribute('disabled','')
                    
            } else {
                botao.setAttribute('disabled','')
            }
           	})
        })


function validarCPF(input){
	$('#negadoCpf').remove()
	
    let cpf = input.value
    cpf = Array.from(cpf)
    let calculo = 0
    let calculo2 = 0
    let primeiroDCpf = parseInt(cpf[12])
    let segundoDCpf = parseInt(cpf[13])
    const tamanho = cpf.length
    // console.log(primeiroDCpf)
    
    for (let i = 0; i < cpf.length; i++) {
        if(cpf[i] === '.' || cpf[i] === '-'){ //remoção dos pontos e traço
            cpf.splice(i, 1)
        }
        cpf[i] = parseInt(cpf[i])
    }

    for(let i = 0, j = 10; i < cpf.length - 2; i++, j--) { //fazendo calculo para o primeiro digito
        calculo += cpf[i] * j
    }

    for(let i = 0, j = 11; i < cpf.length - 1; i++, j--) {  //fazendo calculo para o segundo digito
        calculo2 += cpf[i] * j
    }

    let primeiroDCalculado = (calculo * 10) % 11
    let segundoDCalculado = (calculo2 * 10) % 11

    if(primeiroDCalculado === 10){
        primeiroDCalculado = 0
    }
    if(segundoDCalculado === 10){
        segundoDCalculado = 0
    }

    if(tamanho == 14){
        if(primeiroDCpf == primeiroDCalculado && segundoDCpf == segundoDCalculado){
            console.log('cpf valido')
        } else {
            input.insertAdjacentHTML('afterend',`<p class="negado" id="negadoCpf">CPF invalido</p>`)

            console.log('cpf invalido')
        }
    }
}

function verificarSenhas(input){
            $('#negadoSenha').remove()
            
            let senha = document.getElementById('inputPassword')
            let confirmaSenha = document.getElementById('inputPasswordValid')
            //console.log(senha.value)
            
            if(input.value != confirmaSenha.value || input.value != senha.value ) {
                //console.log('senhas diferentes')
                confirmaSenha.insertAdjacentHTML('afterend',`<p class="negado" id="negadoSenha">Senhas diferentes</p>`)
            } else {
                console.log('senha correta')
            }
}


function mascararCPF(input){
    let entrada = input.value
    input.setAttribute('maxlength', '14')
    
    if(isNaN(entrada[entrada.length-1])){
        return input.value = entrada.substring(0, entrada.length-1)     
    }

    if(entrada.length == 3 || entrada.length == 7){
        input.value += '.'
    }
    if(entrada.length == 11) {
        input.value += '-'
    }
}

function buscarCep(input) {
	$('#negadoCep').remove()
    const cep = input.value
    const rua = document.querySelector('#inputRua')
    const bairro = document.querySelector('#inputBairro')
    const cidade = document.querySelector('#inputCity')
    const estado = document.querySelector('#inputEstado')

    fetch(`https://viacep.com.br/ws/${cep}/json/`)
    .then(data => data.json())
    .then(json => {
	
		if(!('erro' in json)) {
	        const cepRecebido = json.cep
	        const bairroRecebido = json.bairro
	        const ruaRecebida = json.logradouro
	        const cidadeRecebida = json.localidade
	        const estadoRecebido = json.uf
	
	        rua.value = ruaRecebida
	        bairro.value = bairroRecebido
	        cidade.value = cidadeRecebida
	        estado.value = estadoRecebido
	        input.value = cepRecebido
			
		} else {
			input.insertAdjacentHTML('afterend',`<p class="negado" id="negadoCep">CEP Inexistente</p>`)
			console.log('cep nao existe')
		}

        console.log(json)
    })
   }
   
function verificarEmail(input) {
	$('#negadoEmail').remove();
	
	$.ajax({
		method: 'GET',
		url: 'RegisterUserController',
		data:{email: input.value}
	}).done((data) => {
		console.log(data)
		input.insertAdjacentHTML('afterend',`<p class="negado" id="negadoEmail">Email ja esta em uso</p>`)
	}).fail(()=>{
		console.log('erro')
	})
	
}