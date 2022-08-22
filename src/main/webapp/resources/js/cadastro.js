let form = document.querySelector('form')
        const botao = document.querySelector('#finalizarCadastro')
        form.addEventListener('change', function(){
            const campos = document.querySelectorAll('input')
            let libera = []
            console.log(campos)
            
            campos.forEach(e => {
                if(e.value){
                    libera.push(true)
                }
                console.log(libera)
            })
            if(libera.length == campos.length){
                $('#finalizarCadastro').removeAttr('disabled')
                console.log('adicionado')
                    
            } else {
                $('#finalizarCadastro').attr('disabled')
                console.log('removido')
            }
        })


function validarCPF(input){
	$('#negado').remove()
	
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
            input.insertAdjacentHTML('afterend',`<p id="negado">CPF invalido</p>`)

            console.log('cpf invalido')
        }
    }
}

function verificarSenhas(input){
            $('#negado').remove()
            input.removeAttribute('aria-invalid')
            
            let senha = document.getElementById('inputPassword')
            let confirmaSenha = input.value
            
            if(senha.value != confirmaSenha) {
                console.log('senhas diferentes')
                input.insertAdjacentHTML('afterend',`<p id="negado">Senhas diferentes</p>`)
                input.setAttribute("aria-invalid", "true")
                input.oninvalid(setCustomValidity('senha incorreta'))
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
			console.log('cep nao existe')
		}

        console.log(json)
    })
   }