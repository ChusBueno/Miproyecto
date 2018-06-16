

function abrirModal(id){

	document.getElementById(id).style.display="block";

}


function cerrarModal(id){
	document.getElementById(id).style.display = 'none';
	//cambiar url
	location.href="index.php?option=main";
}

function cerrarHover(id){

	var icono = document.getElementById(id);
	icono.classList.remove("far");
	icono.classList.remove("fa-times-circle");
	icono.classList.add("fas");
	icono.classList.add("fa-times-circle");
}



function cerrarOut(id){

	var icono = document.getElementById(id);
	icono.classList.remove("fas");
	icono.classList.remove("fa-times-circle");
	icono.classList.add("far");
	icono.classList.add("fa-times-circle");


}


function snackbar(texto,color){

    // Get the snackbar DIV
    var x = document.getElementById("snackbar");

    // Add the "show" class to DIV
    x.className = "show";

    x.innerHTML = texto;

    x.style.backgroundColor = color;


    // After 3 seconds, remove the show class from DIV
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);


}

