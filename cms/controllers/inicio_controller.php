<?php 

//controlar que al cerrar la sesion, no vuelvan atras en el navegador y vuelvan a entrar
if ( $_SESSION['idusuario'] == '' ){
	//echo "no estas logueado";
	//echo "<br>".$_SESSION['idusuario'];
	header("location: admin.php");
}
include 'cms/views/inicio_view.php';
?>