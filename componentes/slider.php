<section class="offset-3 col-10">

<!--pie de pagina-->
<?php 

$imagenes = modelMain::imgSlider();
 //var_dump($imagenes);
?>

<script type="text/javascript">


//SLIDER CON CONTROLES
			var marcha=false;
			var contador = 0;//contador

	//IMAGENES

			//var images = ['css/imagenes/slider/tirsolapaz.jpg','css/imagenes/slider/arsantirso.jpg','css/imagenes/slider/superdia.jpg','css/imagenes/slider/dmlapaz.jpg'];


			var images = <?php echo json_encode($imagenes);?>;

			console.log(images);
			


			
			//TITULOS

			var titulos = [];

			titulos[0] = "Tirso Igualatorio gana a la Paz 72-43";
			titulos[1] = "También a Ventanas Arsán 26-54";
			titulos[2] = "Superliga DIA en Cantabria";
			titulos[3] = "La Paz vence a Innobasket 61-57";






			var direccion = [];

			direccion[0] = "#";
			direccion[1] = "#";
			direccion[2] = "pdfs/superdiacantabria.pdf";
			direccion[3] = "pdfs/haztearbitro.pdf";




			function cambiarImagenes(){
				//console.log(images[contador].imagen);
				document.getElementById("slider").style.backgroundImage="url(css/imagenes/slider/"+images[contador].imagen+")";
				document.getElementById("h1").innerHTML=titulos[contador];
				document.getElementById("h1").href=direccion[contador];
				//document.getElementById("h3").innerHTML=subtitulos[contador];
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




			<div id="slider" class="col-9">

			<!-- SLIDER -->


				<div id="botonIz" class="col-1 col-1-p col-1-t" onclick="anterior()"></div>
				<div id="botonDe" class="col-1 col-1-p" onclick="siguiente()"></div>
				<h1><a id="h1"  href="#"></a></h1>
			</div>

		



</section>