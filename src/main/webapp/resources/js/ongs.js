const ongButtons = document.querySelectorAll('.modalButton');

ongButtons.forEach(() => {
	
	addEventListener('click', (e) => {
		const idOng = e.target.getAttribute('key');
		
		fetch(`OngAnimalsConstroller?id=${idOng}`)
		.then(resp => {
			console.log('ok', resp)
			window.location = './AnimaisDisponiveis.jsp'
		})
		.catch(err => console.error(err))
	
	})
})