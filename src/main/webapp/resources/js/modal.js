let animais = []

fetch("http://localhost:8080/connect-ong/Animals")
.then(resp => resp.json())
.then(json => {
	json.forEach(data => animais.push(data))	
	console.log(animais)
})
.catch(err => console.log(err))




const modalButtons = document.querySelectorAll('.modalButton')

modalButtons.forEach(button => {
	
	button.addEventListener('click', preencherModalHandler)
})

function preencherModalHandler(e){
	const buttonKey = e.target.getAttribute('key')
	preencherModal(buttonKey)
}


const modalCheckBox = document.querySelector('#inputCheck')
modalCheckBox.addEventListener('click', (e) => {
	const adotarButton = document.querySelector('#adotarButton')
	adotarButton.toggleAttribute('disabled')
})


function preencherModal(id){
	limparModal()
	const nasc = document.querySelector('#nasc')
	const sexo = document.querySelector('#sexo')
	const raca = document.querySelector('#raca')
	const peso = document.querySelector('#peso')
	const castracao = document.querySelector('#castracao')
	const imgModal = document.querySelector('#imgModal')
	const nome = document.querySelector('#nome')
	
	animais.forEach(animal => {
		if(animal.id == id) {
			nome.innerHTML = animal.name
			imgModal.src = animal.imgPath? animal.imgPath : 'resources/components/adocao-gato-1.png'
			nasc.insertAdjacentHTML('beforeend',`<span>${animal.birthYearDate}</span>`)
			sexo.insertAdjacentHTML('beforeend',`<span>${animal.gender}</span>`)
			raca.insertAdjacentHTML('beforeend',`<span>${animal.breed}</span>`)
			peso.insertAdjacentHTML('beforeend',`<span>${animal.weight.toString()}</span>`)
			castracao.insertAdjacentHTML('beforeend',animal.castration ? 
			`<span >Realizada</span>` : `<span >Pendente</span>`)
		}
	})
}

function limparModal(){
	
	const nasc = document.querySelector('#nasc')
	const sexo = document.querySelector('#sexo')
	const raca = document.querySelector('#raca')
	const peso = document.querySelector('#peso')
	const castracao = document.querySelector('#castracao')
	
	nasc.removeChild(nasc.firstChild)
	sexo.removeChild(sexo.firstChild)
	raca.removeChild(raca.firstChild)
	peso.removeChild(peso.firstChild)
	castracao.removeChild(castracao.firstChild)
}

