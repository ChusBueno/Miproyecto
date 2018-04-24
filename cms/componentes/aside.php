<aside class="col-3">

<?php



if($_SESSION['permiso'] == 'Administrador'){

	echo "<ul id='cmsMenu'>";
	echo "<a href='admin.php?option=usuarios' onmouseover='elemento()'><li>Usuarios</li></a>";
	echo "<a href='admin.php?option=noticias'><li>Noticias</li></a>";
	echo "<a href='admin.php?option=patrocinadores'><li>Patrocinadores</li></a>";
	echo "</ul>";
}else{
	echo "<ul id='cmsMenu'>";
	echo "<a href='admin.php?option=noticias'><li>Noticias</li></a>";
	echo "</ul>";
}




?>
</aside>