function prueba(){

	alert("probando!!");
}

function abrirModal(){

	document.getElementById("modalBorrar").style.display="block";

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
