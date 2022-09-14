const fileInput = document.querySelector('#formFile')
const preview = document.querySelector('.preview')

fileInput.addEventListener('change', () => {
	while(preview.firstChild) {
		preview.removeChild(preview.firstChild)
	}
	
	const currentFile = fileInput.files[0]
	const img = document.createElement('img')
	
	img.src = URL.createObjectURL(currentFile)
	img.id = 'preview'
	img.style.width = `${200}px`
	img.style.borderRadius = `${10}px`
	img.style.marginTop = `${10}px`
	
	preview.appendChild(img)
	
})