
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



function abrirModal(id){

	document.getElementById(id).style.display="block";
	//document.getElementById("modal").style.marginTop = "100px";
	//document.getElementById("modal").style.left = ((document.body.clientWidth-350)/2)+"px";
	//cambiar color fondo de la pagina

	//document.body.style.backgroundColor = "red"; 
	//document.documentElement.style.backgroundColor = "rgba(0,0,0,.8)";

	//document.documentElement.style.opacity = "0.4";
	//document.documentElement.style.backgroundColor = "rgba(0,0,0,0.8)";
	//document.getElementById("modal").style.opacity = "1";



}



function cerrarModal(id,pagina){
	document.getElementById(id).style.display = 'none';
	//cambiar url
	location.href="admin.php?option="+pagina;
}


function cerrarHover(id){
	/*
	document.getElementById("cerrar").classList.remove("far");
	document.getElementById("cerrar").classList.remove("fa-times-circle");
	document.getElementById("cerrar").classList.add("fas");
	document.getElementById("cerrar").classList.add("fa-times-circle");
	*/

	var icono = document.getElementById(id);
	icono.classList.remove("far");
	icono.classList.remove("fa-times-circle");
	icono.classList.add("fas");
	icono.classList.add("fa-times-circle");
}



function cerrarOut(id){
	/*
	document.getElementById("cerrar").classList.remove("fas");
	document.getElementById("cerrar").classList.remove("fa-times-circle");
	document.getElementById("cerrar").classList.add("far");
	document.getElementById("cerrar").classList.add("fa-times-circle");
	*/

	var icono = document.getElementById(id);
	icono.classList.remove("fas");
	icono.classList.remove("fa-times-circle");
	icono.classList.add("far");
	icono.classList.add("fa-times-circle");


}

function solucionEditar(){

	var url = window.location.search;
	//alert(url);

	//Si acorto desde el final no siempre funcionara, cuando sea el numero 10, tendra q cortar mas
	//var acortada = url.substr(-24,22);

	var acortada = url.substr(8,22);

	//alert(acortada);
	//var cadena = "usuarios&editarUsuario";
	/*
	if (acortada == cadena){
		
		alert("estas en editar");
		
		document.getElementById("modalEditar").style.display="block";
	}
	*/
	switch(acortada){

		case "usuarios&editarUsuario":
			document.getElementById("modalEditar").style.display="block";
			break;


		case "noticias&editarNoticia":
			document.getElementById("modalEditar").style.display="block";
			break;

		case "patrocinadores&editar=":
			document.getElementById("modalEditar").style.display="block";
			break;


		case "usuarios&borrarUsuario":
			document.getElementById("modalBorrar").style.display="block";
			break;


		case "noticias&borrarNoticia":
			document.getElementById("modalBorrar").style.display="block";
			break;


		case "patrocinadores&borrar=":
			document.getElementById("modalBorrar").style.display="block";
			break;
	}
				
	
}



//funcion lanzadera, para lanzar las 2 funciones en el onload

function lanzadera(){
	colorAsideActivo();
	solucionEditar();
}

window.onload = lanzadera;