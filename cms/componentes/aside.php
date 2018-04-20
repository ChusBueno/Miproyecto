<aside class="col-3">


<?php

if($_SESSION['permiso'] == 'Administrador'){

	echo "<ul id='cmsMenu'>";
	echo "<a href='admin.php?option=usuarios'><li>Usuarios</li></a>";
	echo "<a href='#'><li>Noticias</li></a>";
	echo "<a href='#'><li>Patrocinadores</li></a>";
	echo "</ul>";
}else{
	echo "<ul id='cmsMenu'>";
	echo "<a href='#'><li>Noticias</li></a>";
	echo "</ul>";
}




?>
</aside>