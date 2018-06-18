<aside class="col-3 col-lg-3 col-md-3">

<?php



if($_SESSION['permiso'] == 'Administrador'){

	echo "<ul id='cmsMenu'>";
	echo "<a href='admin.php?option=usuarios'><li id='usuariosAside'>Usuarios</li></a>";
	echo "<a href='admin.php?option=noticias'><li id='noticiasAside'>Noticias</li></a>";
	echo "<a href='admin.php?option=patrocinadores'><li id='patrocinadoresAside'>Patrocinadores</li></a>";
	echo "</ul>";


}else{
	echo "<ul id='cmsMenu'>";
	echo "<a href='admin.php?option=noticias'><li>Noticias</li></a>";
	echo "</ul>";
}




?>
</aside>