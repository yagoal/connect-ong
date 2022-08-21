function validarCPF(input){
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
            document.querySelector('#inputCPF').setAttribute("aria-invalid", "true");
            document.querySelector('#inputCPF').setCustomValidity('Preencha com um CPF valido');

            console.log('cpf invalido')
        }
    }
}

function rgSomentenumeros(input){
    let entrada = input.value

    if(isNaN(entrada[entrada.length-1])){
        return input.value = entrada.substring(0, entrada.length-1)
    }

}

function verificarSenhas(input){
            $('#negado').remove()
            let senha = document.getElementById('senha')
            let confirmaSenha = input.value
            
            if(senha.value != confirmaSenha) {
                console.log('senhas diferentes')
                input.insertAdjacentHTML('afterend',`<p id="negado">Senhas diferentes</p>`)
            } else {
                console.log('senha correta')
            }
}

function mascararData(input){
    let entrada = input.value
    input.setAttribute('maxlength', '10')

    if(isNaN(entrada[entrada.length-1])){
        return input.value = entrada.substring(0, entrada.length-1)
    }

    if(entrada.length == 2 || entrada.length == 5 ){
        input.value += '/'
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