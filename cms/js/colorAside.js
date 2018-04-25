
function colorAsideActivo(){


	//cogemos solo el search de php... ?
	var url = window.location.search;


	//acortamos la url 
	var urlCorrecta = url.substr(8);
	//alert(urlCorrecta);


	//switch en funcion de la pagina en la q estamos, para activar ese li 
	switch (urlCorrecta) {
		case "usuarios":
			
			document.getElementById("usuariosAside").style.backgroundColor = 'white';
			document.getElementById("usuariosAside").style.border = '1px solid gray';

			break;

		case "noticias":
			
			document.getElementById("noticiasAside").style.backgroundColor = 'white';
			document.getElementById("noticiasAside").style.border = '1px solid gray';

			break;

		case "patrocinadores":
			
			document.getElementById("patrocinadoresAside").style.backgroundColor = 'white';
			document.getElementById("patrocinadoresAside").style.border = '1px solid gray';

			break;
	}




}
