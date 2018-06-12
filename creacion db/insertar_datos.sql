USE federacion;


-- INSERCION DATOS TABLA PERMISOS
INSERT INTO permisos (id, descripcion) VALUES
(null, 'Administrador'),
(null, 'Redactor Jefe'),
(null, 'Redactor'),
(null, 'Usuario');

-- INSERCION DATOS TABLA USUARIOS
INSERT INTO usuarios (id,nombreUsuario,nombre,apellido,contrasenia,telefono,id_permiso) VALUES 
(null, 'admin','Jesus','Bueno','admin',null,1),
(null,'redac','Redactor','Jefe','admin',null,2),
(null,'redacsen','Redactor','sencillo','admin',null,3),
(null,'redacsen2','Redactor2','sencillo2','admin',null,3),
(null,'usuar','Usuario','normal','admin',null,4),
(null,'usuar2','Prueba1','normal','admin',null,4);

-- INSERCION DATOS TABLA CATEGORIAS

INSERT INTO categorias (id, nombre) VALUES 
(null,"inicio"),
(null,"selecciones"),
(null,"clubes"),
(null,"entrevistas"),
(null,"arbitros"),
(null,"slider"),
(null,"agenda");


-- INSERCION DATOS TABLA SUBCATEGORIAS 

INSERT INTO subcategorias (id,id_categoria,nombre) VALUES
(null,1,"noticias_index"),
(null,2,"convocatorias_selecciones"),
(null,2,"cadetes_selecciones"),
(null,2,"infantiles_selecciones"),
(null,2,"alevines_selecciones"),
(null,3,"noticias_clubes"),
(null,3,"nuestros_clubes"),
(null,4,"entrenadores_entrevistas"),
(null,4,"jugadores_entrevistas"),
(null,5,"charlas_arbitros"),
(null,6,"noticias_slider"),
(null,7,"noticias_agenda");

-- INSERCION DATOS TABLA NOTICIAS

INSERT INTO noticias (id,id_usuario,id_categoria,id_subcategoria,titulo,subtitulo,texto,fecha,imagen) VALUES
(null,3,1,1,'ANÁLISIS DEL CAMPEONATO','Diego Celeizabal, Director Técnico','Tras meses y meses de trabajo, pasados unos días desde la finalización del Campeonato y después de reposar todas las sensaciones vividas a lo largo de una intensa semana, Diego Celeizabal, el Director Técnico de nuestras Selecciones analiza la actuación de los cuatro equipos, las cosas negativas que se deben mejorar y resaltando todo lo bueno que ha dejado la competición para los nuestros. Han sido cinco días en los que cada uno de nuestros deportistas, entrenadores y delegados han dado lo mejor de cada uno, para el beneficio de todos.',curdate(),"benji1.jpg"),
(null,4,1,1,'ASCENSO DE LOS INFANTILES','Buenos partidos de los cántabros','Gran victoria de los infantiles frente a Aragón (72-61) que consiguen el ascenso al grupo especial y juegan la final de la categoría preferente frente a Euskadi. Los equipos cadetes no pudieron ni con Baleares ellos, ni con Extremadura ellas. Acabó el Campeonato de España de selecciones en Valladolid. En la jornada final del Campeonato, los infantiles ganaron a La Rioja (57-47). El resumen final es una muy buena actuación de los equipos cántabros que compitieron en todos los encuentros a buen nivel con el gran ascenso del equipo infantil. En 2019 jugarán en el grupo especial con los mejores de España.',curdate(),"noticia1.jpg"),
(null,4,1,1,'TERCERA JORNADA EN VALLADOLID','Victorias de los chicos',' En la tercera jornada del Campeonato, los infantiles perdieron con Euskadi (63-78) y vencieron a Castilla La Mancha (59-53) y los cadetes ganaron a Murcia (78-61)  y fueron derrotados por Madrid (94-33). Las chicas cadetes doble derrota frente a Castilla León (59-67) y La Rioja (54-51) y las infantiles perdieron frente a Murcia (49-59). En la última jornada se juegan los puestos finales, el ascenso y la permanencia.',curdate(),"sel1.jpg"),
(null,3,1,1,'SEGUNDA JORNADA DEL CTO','Cinco victorias y una derrota','En la segunda jornada del Campeonato, han debutado las Seleccionas Cadete Femenina e Infantil Masculina, los cuales se han enfrentado a los mismo rivales, por la mañana contra Melilla, en el que ambos combinados han conseguido la victoria 49-22 y 67-46, respectivamente. Por la tarde, las dos Selecciones se han impuesto con claridad a Ceuta,16-93 para las chicas de Pablo Rodríguez y 27-77, para el equipo de Asier Gordo. Ceuta, también fue el rival de las chicas de Jesús Navamuel en su segundo partido del Cto. a las que ganaron sin excesivos apuros, 68-18. En el segundo partido del día, las Infantiles han perdido contra País Vasco, las cuales se han mostrado superiores a las cántabras,55-33.',curdate(),"benji1.jpg"),
(null,3,1,1,'PRIMERA VICTORIA DEL CTO','Doble jornada Cadete Masculina','La Selección Cadete Masculina, ha debutado en el Campeonato de España con doble jornada, a primera hora de la mañana se enfrentaron a Valencia un partido duro en el que los chicos de Amador, solo pudieron aguantar el primer periodo ante un rival superior, 53-87. Por la tarde, segunda derrota de nuestro equipo Cadete, que resultó incomodo durante muchas fases del partido a Aragón, pero que también finalizó con derrota, 83-61. La Selección Infantil Femenina, empezó titubeante en su primer partido del Campeonato, tras dejar los nervios en el vestuario, las chicas de Navamuel demostraron su superioridad y se impusieron 75-43 a Melilla.',curdate(),"benji1.jpg"),
(null,4,1,1,'REVISTA DIGITAL DE DICIEMBRE','Con ella cerramos el 2017','Se termina el 2017, un gran año para el baloncesto de Cantabria. Este mes, en la revista las noticias y clasificaciones de los equipos nacionales en diciembre, los de la Liga EBA, con Igualatorio Cantabria Estela que sigue en racha, con tan solo una derrota y además buenos resultados de Gallofa y de Pas Piélagos. CBT sumó su segunda victoria. En Primera Femenina DM Seguros Torrelavega venció en Astillero a Ventanas Arsán. También ganó al líder Coruña y suma ya seis victorias. Tirso sigue  de coolider de la liga. RD realiza una entrevista al entrenador Danid García.',curdate(),"RD5.jpg"),
(null,3,1,1,'TORNEO CANTABRIA','Los chicos ganan su Torneo','Por cuarto año consecutivo las Selecciones Cadetes e Infantiles de Cantabria, Asturias, La Rioja y Navarra, disputaron un torneo amistoso de preparación de los Campeonatos de España de Selecciones que se disputaran del 3 al 7 de Enero en Valladolid. Este año el Torneo se disputó en los Pabellones de La Cantabrica en Astillero,en el Pedro Velarde y Juan de Herrera de Maliaño,en Parbayón en el Enrique Tagle "El Moli" y en el Mies del Corro en Solares, los infantiles ganaron sus tres partidos, los cadetes y las infantiles vencieron en dos y las cadetes ganaron uno de sus encuentros.',curdate(),"sel1.jpg"),
(null,4,1,1,'CAMPEONES JÚNIOR 2017','Piélagos Parbayón y Carlomar Torrelavega','El entrenador torrelaveguense Dani García se proclama campeón Júnior Masculino y Femenino en la misma tarde. El Vicente Trueba fue el escenario de la Fase Final Júnior de Primera. Las chicas de Carlomar Torrelavega vencieron a Selaya Casa el Macho 65-50. Por su parte EM Piélagos Parbayón derrotó a Gallofa & CO en la final 69-61. CBT Jardín de Moneche ganó la Segunda Júnior Femenina disputada en Matamorosa frente a Baloncesto Solares por 79-51. ',curdate(),null),
(null,3,1,1,'PREMIOS LIBERTY JÚNIOR','Ya se conocen los júniors más valorados','Con motivo de las finales de Liga 2017 fueron entregados los Premios Liberty Seguros a los jugadores/as más valorados de acuerdo a las votaciones que han tenido lugar en los últimos meses, Alba Puente y Arturo Robertson como bases, Laura Portilla y Diego García, escoltas, como aleros Celia Carral y Alvaro Palazuelos, ala-pívots, Inés García y Joel San Martín y pívots Iara Torre y Adolfo Viadero. Inés García y Palazuelos fueron elegidos los MVPS del 2017',curdate(),null),
(null,4,1,1,'MARTA GUTIÉRREZ','Una conducción segura','Marta Gutiérrez, jugadora formada en una de las canteras del baloncesto femenino cántabro, como es Selaya, Campeona de Cantabria en varias categorías, protagoniza el gesto técnico de la Revista Digital de Diciembre. Su dribling desbordando a las rivales lo hace merecedor de formar parte de los destacados de nuestro baloncesto. Lo empezó a utilizar con frecuencia al enfrentarse a jugadoras más grandes que ella en categoría Sénior. Martita lo practica con maestría y anima a los más jovenes a realizarlo y aprovechar cada momento en las Selecciones Autonómicas, que los califica como inolvidables.',curdate(),null),
(null,3,1,1,'VENTANAS ARSÁN GANA EL DERBI','1ª Femenina 53-59 en Cueto al Grupo Tirso','Primer derbi de la temporada en 1ª Femenina en el Pabellón de Cueto de Santander, Grupo Tirso Igualatorio Cantabria recibía a Ventanas Arsan Astillero, en un partido que como se presumía resultó igualado en el marcador. El equipo de José Barquín venía con dos derrotas consecutivas ante rivales directospero en este caso impuso su experiencia en la categoría y dominó desde el inicio a las chicas de Luis Manuel Solana, que llegaban al derbi tras conseguir su segunda victoria de la temporada. Hubo un lleno en las gradas del pabellón santanderino en un partido emocionante que no defraudó a la afición cántabra.',curdate(),null),
(null,3,5,10,'NOTICIA SLIDER','subtitulo slider','texto slider',curdate(),"1.jpg"),
(null,3,5,10,'NOTICIA SLIDER2','subtitulo slider2','texto slider',curdate(),"calprifem.jpg"),
(null,3,5,10,'NOTICIA SLIDER3','subtitulo slider3','texto slider',curdate(),"carlomar.jpg"),
(null,3,5,10,'NOTICIA SLIDER4','subtitulo slider4','texto slider',curdate(),"copaaf18.jpg"),
(null,3,6,11,'NOTICIA AGENDA','subtitulo agenda','texto agenda',curdate(),null),
(null,3,6,11,'NOTICIA agenda2','subtitulo agenda2','texto agenda2',curdate(),null);


-- INSERCION DATOS TABLA PATROCINADORES

INSERT INTO patrocinadores (id,nombre,url,imagen) VALUES
(null,"patrocinador1","http://www.google.es","alega.png"),
(null,"patrocinador2","http://www.google.es","arsan.png"),
(null,"patrocinador3","http://www.google.es","austral.png"),
(null,"patrocinador4","http://www.google.es","baden.png"),
(null,"patrocinador5","http://www.google.es","cantabria.png"),
(null,"patrocinador6","http://www.google.es","dentomedic.png"),
(null,"patrocinador7","http://www.google.es","dromedario.png"),
(null,"patrocinador8","http://www.google.es","espaciojoven.png"),
(null,"patrocinador9","http://www.google.es","feb.png"),
(null,"patrocinador10","http://www.google.es","liberty.png"),
(null,"patrocinador11","http://www.google.es","lostal.png"),
(null,"patrocinador12","http://www.google.es","lupefer.png"),
(null,"patrocinador13","http://www.google.es","seur.png");

