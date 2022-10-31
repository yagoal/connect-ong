const fileInput = document.querySelector('#formFile')
const preview = document.querySelector('#preview');
fileInput.addEventListener('change', () => {
	while(preview.src) {
		preview.removeAttribute('src');
	}
	
	const currentFile = fileInput.files[0]
	
	preview.setAttribute('src', URL.createObjectURL(currentFile))

})