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

function preencherModalHandler(e) {
	const buttonKey = e.target.getAttribute('key')
	preencherModal(buttonKey)
}


const modalCheckBox = document.querySelector('#inputCheck')
modalCheckBox.addEventListener('click', (e) => {
	const adotarButton = document.querySelector('#adotarButton')
	adotarButton.toggleAttribute('disabled')
})

function preencherModal(id) {
	limparModal()
	const nasc = document.querySelector('#nasc')
	const sexo = document.querySelector('#sexo')
	const raca = document.querySelector('#raca')
	const peso = document.querySelector('#peso')
	const castracao = document.querySelector('#castracao')
	const imgModal = document.querySelector('#imgModal')
	const nome = document.querySelector('#nome')

	const adotarButton = document.querySelector('#adotarButton')
	adotarButton.addEventListener('click', function() {
		fetch("http://localhost:8080/connect-ong/Animals", {
			method: 'POST',
			headers: {
				"Content-Type": "application/json",
			},
			body: JSON.stringify({ id: id }) 
		})
			.then((response) => response.json())
			.then((data) => {
				redirectSucess()
				console.log("Success:", data)
			})
			.catch(err => console.log(err))
	})

	animais.forEach(animal => {
		if (animal.id == id) {
			nome.innerHTML = animal.name
			imgModal.src = animal.imgPath ? animal.imgPath : 'resources/components/no-photo.jpeg'
			nasc.insertAdjacentText('beforeend', ` ${new Date(animal.birthYearDate).getFullYear().toString()}`)
			sexo.insertAdjacentText('beforeend', ` ${animal.gender}`)
			raca.insertAdjacentText('beforeend', ` ${animal.breed}`)
			peso.insertAdjacentText('beforeend', ` ${animal.weight.toString()}`)
			castracao.insertAdjacentText('beforeend', animal.castration ? ` Realizada` : ` Pendente`)
			return
		}
	})
}

function limparModal() {

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

function redirectSucess() {
	window.location = "http://localhost:8080/connect-ong/FinalizarAdocao.jsp"
}


