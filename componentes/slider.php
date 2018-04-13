<section class="offset-3 col-6">

<?php 

$imagenes = modelMain::obtenNoticias('slider','noticias_slider');
 //var_dump($imagenes);
?>

<script type="text/javascript">


//SLIDER CON CONTROLES
			var marcha=false;
			var contador = 0;//contador

	//IMAGENES

			

			var images = <?php echo json_encode($imagenes);?>;

			//console.log(images);
			


			function cambiarImagenes(){
				//console.log(images[contador].imagen);
				document.getElementById("slider").style.backgroundImage="url(css/imagenes/slider/"+images[contador].imagen+")";
				document.getElementById("h1").innerHTML=images[contador].titulo;
				//document.getElementById("h1").href=direccion[contador];
			
							}

			function autoplay() {

				contador++;
				if(contador>images.length-1){
					contador=0;
				}

				cambiarImagenes();
			}

			function play(){
				if(!marcha){
						cambiarImagenes();// para que cargue la primera imagen y no haya q esperar 4000 milisegundos
						proxima=setInterval(autoplay,6000); //llamamos a autoplay y empieza
						marcha=true;
				}


			}
			function pausa(){
				if (marcha) {
						clearInterval(proxima);
						marcha=false;
				}

			}
			function principio(){
				 contador=0;
				cambiarImagenes();

			}
			function anterior(){

				pausa();
				contador--;
				if(contador<0){
					contador=images.length-1;
				}

				cambiarImagenes();
			}
			function siguiente(){

				 pausa();
				 autoplay();


			}

			function ultima(){

				 contador=images.length-1;

				cambiarImagenes();


			}

</script>




			<div id="slider" class="col-16">

			<!-- SLIDER -->


				<div id="botonIz" class="col-1" onclick="anterior()"></div>
				<div id="botonDe" class="col-1" onclick="siguiente()"></div>
				<h1><a id="h1"  href="#"></a></h1>
			</div>

		


</section>