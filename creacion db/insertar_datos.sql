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
(null,3,6,11,'NOTICIA SLIDER','subtitulo slider','texto slider',curdate(),"1.jpg"),
(null,3,6,11,'NOTICIA SLIDER2','subtitulo slider2','texto slider',curdate(),"calprifem.jpg"),
(null,3,6,11,'NOTICIA SLIDER3','subtitulo slider3','texto slider',curdate(),"carlomar.jpg"),
(null,3,6,11,'NOTICIA SLIDER4','subtitulo slider4','texto slider',curdate(),"copaaf18.jpg"),
(null,3,7,12,'NOTICIA AGENDA','subtitulo agenda','texto agenda',curdate(),null),
(null,3,7,12,'NOTICIA agenda2','subtitulo agenda2','texto agenda2',curdate(),null);


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



-- INSERCION DATOS ANUARIO --------------------------------


-- TABLA CLUBES 

INSERT INTO anuario_clubes (id, responsable, nombreclub, imagen, localidad) VALUES
(null, 'Daniel Celorrio', 'Cantbasket 04', 'cantbasket.png', 'Santander'),
(null, 'Julio', 'Calasanz', 'calasanz.png', 'Santander'),
(null, 'Panta', 'Solares', 'solares.jpg', 'Solares'),
(null, 'Pepito', 'CBT Torrelavega', 'cbt.png', 'Torrelavega'),
(null, 'Nacho', 'Pielagos', 'pielagos.jpg', 'Renedo de Pielagos'),
(null, 'Pepito', 'Amide', 'amide.jpeg', 'Maliaño'),
(null, 'Raul', 'Castrobasket', 'castrobasket.png', 'Castro-Urdiales'),
(null, 'Pepito', 'La Paz', 'lapaz.png', 'Torrelavega'),
(null, 'Pepito', 'Ventanas Arsan', 'ventanasarsan.png', 'Maliaño'),
(null, 'Pepito', 'Tirso Igualatorio', 'tirso.jpeg', 'Santander'),
(null, 'Pepito', 'Daygon', 'daygon.jpg', 'Santander'),
(null, 'Maria', 'Bezana', 'bezana.jpg', 'Bezana');

-- TABLA CATEGORIAS 

INSERT INTO anuario_categorias (id, nombre) VALUES
(null, 'Senior'),
(null, 'Junior'),
(null, 'Cadete'),
(null, 'Infantil'),
(null, 'Alevin'),
(null, 'Benjamin');

-- TABLA LIGAS 

INSERT INTO anuario_ligas (id, nombre) VALUES
(null, 'Primera'),
(null, 'Segunda'),
(null, 'Tercera');

-- TABLA RELACION 

INSERT INTO anuario_relacion (id, id_categoria, id_liga, nombre,genero) VALUES
(null, 1,1,'Primera Senior', 'masculino'),
(null, 1,2,'Segunda Senior', 'masculino'),
(null, 1,3,'Tercera Senior', 'masculino'),
(null, 1,1,'Primera Senior', 'femenino'),
(null, 1,2,'Segunda Senior', 'femenino'),

(null, 2,1,'Primera junior', 'masculino'),
(null, 2,2,'Segunda junior', 'masculino'),
(null, 2,3,'Tercera junior', 'masculino'),
(null, 2,1,'Primera junior', 'femenino'),
(null, 2,2,'Segunda junior', 'femenino'),
(null, 2,3,'Tercera junior', 'femenino'),

(null, 3,1,'Primera cadete', 'masculino'),
(null, 3,2,'Segunda cadete', 'masculino'),
(null, 3,3,'Tercera cadete', 'masculino'),
(null, 3,1,'Primera cadete', 'femenino'),
(null, 3,2,'Segunda cadete', 'femenino'),
(null, 3,3,'Tercera cadete', 'femenino'),

(null, 4,1,'Primera infantil', 'masculino'),
(null, 4,2,'Segunda infantil', 'masculino'),
(null, 4,3,'Tercera infantil', 'masculino'),
(null, 4,1,'Primera infantil', 'femenino'),
(null, 4,2,'Segunda infantil', 'femenino'),
(null, 4,3,'Tercera infantil', 'femenino'),

(null, 5,1,'Primera alevin', 'masculino'),
(null, 5,2,'Segunda alevin', 'masculino'),
(null, 5,3,'Tercera alevin', 'masculino'),
(null, 5,1,'Primera alevin', 'femenino'),
(null, 5,2,'Segunda alevin', 'femenino'),
(null, 5,3,'Tercera alevin', 'femenino'),

(null, 6,1,'Primera benjamin', 'masculino'),
(null, 6,2,'Segunda benjamin', 'masculino'),
(null, 6,3,'Tercera benjamin', 'masculino'),
(null, 6,1,'Primera benjamin', 'femenino'),
(null, 6,2,'Segunda benjamin', 'femenino'),
(null, 6,3,'Tercera benjamin', 'femenino');



-- TABLA EQUIPOS 

INSERT INTO anuario_equipos (id,id_club,id_relacion,entrenador,nombre,imagen,pabellon) VALUES
(null, 1,1,'Amador','Uc gallofa sub22','equipo.jpg','Manuel Llano'),
(null, 1,1,'Joaquin','Uc gallofa 04','equipo.jpg','Universidad de Cantabria'),
(null, 3,1,'Pablo','Cb solares','equipo.jpg','Mies del corro'),
(null, 4,1,'Javier','Cbt Torrelavega A','equipo.jpg','Vicente Trueba'),
(null, 8,1,'David','La paz torrelavega','equipo.jpg','Vicente Trueba'),
(null, 11,1,'Mario','Daygon Baloncesto Santander A','equipo.jpg','Cueto'),

-- PRIMERA SEN FE --

(null, 8,4,'Dani','La paz torrelavega','equipo.jpg','Maria Pardo'),
(null, 10,4,'Juan','Tirso Igualatorio','equipo.jpg','Cueto'),
(null, 9,4,'Jose','Ventanas Arsan Astillero','equipo.jpg','La cantabrica'),

-- SEGUNDA SENIOR MAS --
(null, 6,2,'Aitor','Sayme Amide','equipo.jpg','Matilde de la Torre'),
(null, 11,2,'Jesus','Daygon Baloncesto Santander b','equipo.jpg','Numancia'),
(null, 4,2,'Francisco','Cbt Torrelavega B','equipo.jpg','Vicente Trueba'),
(null, 7,2,'Alvaro','Cbcastro.com','equipo.jpg','Pachi Torre'),
(null, 3,2,'Marcos','Cb solares B','equipo.jpg','Mies del corro'),


-- SEGUNDA SENIOR FEM --

(null, 9,5,'Jose','Ventanas Arsan Astillero','equipo.jpg','La cantabrica'),
(null, 11,5,'Gonzalo','Daygon Pub la pecera','equipo.jpg','Numancia'),
(null, 3,5,'Marcos','CB Solares','equipo.jpg','Mies del Corro'),
(null, 4,5,'Luis','CBT winchester saloon','equipo.jpg','Habana Vieja'),


-- PRIMERA JUN MAS --
(null, 12,6,'Jesus','Animallago bezana','equipo.jpg','Pabellon bezana'),
(null, 4,6,'Samuel','CBT Torrelavega A','equipo.jpg','Habana Vieja'),
(null, 1,6,'Alvaro','Gallofa A','equipo.jpg','Cueto'),
(null, 5,6,'Antonio','Em Pielagos Parbayon','equipo.jpg','Parbayon'),
(null, 3,6,'Angel','Cb Solares A','equipo.jpg','Mies del Corro'),
(null, 2,6,'Vicente','Calasanz A','equipo.jpg','Calasanz'),


-- SEGUNDA JUN MAS --

(null, 5,7,'Pedro','Em Pielagos Renedo','equipo.jpg','Fernando Exposito'),
(null, 1,7,'Pedro','Gallofa B','equipo.jpg','Cueto'),
(null, 2,7,'Julio','Calasanz B','equipo.jpg','Calasanz'),
(null, 12,7,'Hugo','Bezana B','equipo.jpg','Pabellon bezana'),
(null, 5,7,'Jose','Em Pielagos Liencres','equipo.jpg','Pabellon Liencres'),
(null, 7,7,'Arturo','Castrobasket','equipo.jpg','Pachi Torre'),



-- PRIMERA JUN FEM --

(null, 2,9,'Ana','Calasanz','equipo.jpg','Calasanz'),
(null, 8,9,'Saul','La paz torrelavega','equipo.jpg','Maria Pardo'),
(null, 4,9,'Alejandro','CBT jardin de moneche','equipo.jpg','Habana Vieja'),
(null, 9,9,'Pablo','Ventanas Arsan Astillero','equipo.jpg','La cantabrica'),


-- SEGUNDA JUN FEM --
(null, 2,10,'Diego','Calasanz B','equipo.jpg','Calasanz'),
(null, 8,10,'Saul','La paz torrelavega B ','equipo.jpg','Maria Pardo'),
(null, 4,10,'Alejandro','CBT jardin de moneche B','equipo.jpg','Habana Vieja'),
(null, 9,10,'Pablo','Ventanas Arsan Astillero B','equipo.jpg','La cantabrica'),



-- ------------------------------------------------- 

-- PRIMERA CAD MAS --

(null, 12,12,'Jesus','Animallago bezana','equipo.jpg','Pabellon bezana'),
(null, 4,12,'Samuel','CBT Torrelavega A','equipo.jpg','Habana Vieja'),
(null, 1,12,'Alvaro','Gallofa A','equipo.jpg','Cueto'),
(null, 5,12,'Antonio','Em Pielagos Parbayon','equipo.jpg','Parbayon'),
(null, 3,12,'Angel','Cb Solares A','equipo.jpg','Mies del Corro'),
(null, 2,12,'Vicente','Calasanz A','equipo.jpg','Calasanz'),


-- SEGUNDA CAD MAS --
(null, 5,13,'Pedro','Em Pielagos Renedo','equipo.jpg','Fernando Exposito'),
(null, 1,13,'Pedro','Gallofa B','equipo.jpg','Cueto'),
(null, 2,13,'Julio','Calasanz B','equipo.jpg','Calasanz'),
(null, 12,13,'Hugo','Bezana B','equipo.jpg','Pabellon bezana'),
(null, 5,13,'Jose','Em Pielagos Liencres','equipo.jpg','Pabellon Liencres'),
(null, 7,13,'Arturo','Castrobasket','equipo.jpg','Pachi Torre'),



-- PRIMERA CAD FEM --

(null, 2,15,'Ana','Calasanz','equipo.jpg','Calasanz'),
(null, 8,15,'Saul','La paz torrelavega','equipo.jpg','Maria Pardo'),
(null, 4,15,'Alejandro','CBT jardin de moneche','equipo.jpg','Habana Vieja'),
(null, 9,15,'Pablo','Ventanas Arsan Astillero','equipo.jpg','La cantabrica'),


-- SEGUNDA CAD FEM --
(null, 2,16,'Diego','Calasanz B','equipo.jpg','Calasanz'),
(null, 8,16,'Saul','La paz torrelavega B ','equipo.jpg','Maria Pardo'),
(null, 4,16,'Alejandro','CBT jardin de moneche B','equipo.jpg','Habana Vieja'),
(null, 9,16,'Pablo','Ventanas Arsan Astillero B','equipo.jpg','La cantabrica'),



-- PRIMERA INF MAS -- 
(null, 12,18,'Jesus','Animallago bezana','equipo.jpg','Pabellon bezana'),
(null, 4,18,'Samuel','CBT Torrelavega A','equipo.jpg','Habana Vieja'),
(null, 1,18,'Alvaro','Gallofa A','equipo.jpg','Cueto'),
(null, 5,18,'Antonio','Em Pielagos Parbayon','equipo.jpg','Parbayon'),
(null, 3,18,'Angel','Cb Solares A','equipo.jpg','Mies del Corro'),
(null, 2,18,'Vicente','Calasanz A','equipo.jpg','Calasanz'),


-- SEGUNDA INF MAS -- 
(null, 5,19,'Pedro','Em Pielagos Renedo','equipo.jpg','Fernando Exposito'),
(null, 1,19,'Pedro','Gallofa B','equipo.jpg','Cueto'),
(null, 2,19,'Julio','Calasanz B','equipo.jpg','Calasanz'),
(null, 12,19,'Hugo','Bezana B','equipo.jpg','Pabellon bezana'),
(null, 5,19,'Jose','Em Pielagos Liencres','equipo.jpg','Pabellon Liencres'),
(null, 7,19,'Arturo','Castrobasket','equipo.jpg','Pachi Torre'),


-- PRIMERA INF FEM --
(null, 2,21,'Ana','Calasanz','equipo.jpg','Calasanz'),
(null, 8,21,'Saul','La paz torrelavega','equipo.jpg','Maria Pardo'),
(null, 4,21,'Alejandro','CBT jardin de moneche','equipo.jpg','Habana Vieja'),
(null, 9,21,'Pablo','Ventanas Arsan Astillero','equipo.jpg','La cantabrica'),


-- SEGUNDA INF FEM
(null, 2,22,'Diego','Calasanz B','equipo.jpg','Calasanz'),
(null, 8,22,'Saul','La paz torrelavega B ','equipo.jpg','Maria Pardo'),
(null, 4,22,'Alejandro','CBT jardin de moneche B','equipo.jpg','Habana Vieja'),
(null, 9,22,'Pablo','Ventanas Arsan Astillero B','equipo.jpg','La cantabrica'),


-- PRIMERA ALEV MAS -- 
(null, 12,24,'Jesus','Animallago bezana','equipo.jpg','Pabellon bezana'),
(null, 4,24,'Samuel','CBT Torrelavega A','equipo.jpg','Habana Vieja'),
(null, 1,24,'Alvaro','Gallofa A','equipo.jpg','Cueto'),
(null, 5,24,'Antonio','Em Pielagos Parbayon','equipo.jpg','Parbayon'),
(null, 3,24,'Angel','Cb Solares A','equipo.jpg','Mies del Corro'),
(null, 2,24,'Vicente','Calasanz A','equipo.jpg','Calasanz'),


-- SEGUNDA ALEV MAS --
(null, 5,25,'Pedro','Em Pielagos Renedo','equipo.jpg','Fernando Exposito'),
(null, 1,25,'Pedro','Gallofa B','equipo.jpg','Cueto'),
(null, 2,25,'Julio','Calasanz B','equipo.jpg','Calasanz'),
(null, 12,25,'Hugo','Bezana B','equipo.jpg','Pabellon bezana'),
(null, 5,25,'Jose','Em Pielagos Liencres','equipo.jpg','Pabellon Liencres'),
(null, 7,25,'Arturo','Castrobasket','equipo.jpg','Pachi Torre'),



-- PIMERA ALEV FEM --
(null, 2,27,'Ana','Calasanz','equipo.jpg','Calasanz'),
(null, 8,27,'Saul','La paz torrelavega','equipo.jpg','Maria Pardo'),
(null, 4,27,'Alejandro','CBT jardin de moneche','equipo.jpg','Habana Vieja'),
(null, 9,27,'Pablo','Ventanas Arsan Astillero','equipo.jpg','La cantabrica'),


-- SEGUNDA ALEV FEM --
(null, 2,28,'Diego','Calasanz B','equipo.jpg','Calasanz'),
(null, 8,28,'Saul','La paz torrelavega B ','equipo.jpg','Maria Pardo'),
(null, 4,28,'Alejandro','CBT jardin de moneche B','equipo.jpg','Habana Vieja'),
(null, 9,28,'Pablo','Ventanas Arsan Astillero B','equipo.jpg','La cantabrica'),


-- PRIMERA BEN MAS --
(null, 12,30,'Jesus','Animallago bezana','equipo.jpg','Pabellon bezana'),
(null, 4,30,'Samuel','CBT Torrelavega A','equipo.jpg','Habana Vieja'),
(null, 1,30,'Alvaro','Gallofa A','equipo.jpg','Cueto'),
(null, 5,30,'Antonio','Em Pielagos Parbayon','equipo.jpg','Parbayon'),
(null, 3,30,'Angel','Cb Solares A','equipo.jpg','Mies del Corro'),
(null, 2,30,'Vicente','Calasanz A','equipo.jpg','Calasanz'),


-- SEGUNDA BEN MAS --
(null, 5,31,'Pedro','Em Pielagos Renedo','equipo.jpg','Fernando Exposito'),
(null, 1,31,'Pedro','Gallofa B','equipo.jpg','Cueto'),
(null, 2,31,'Julio','Calasanz B','equipo.jpg','Calasanz'),
(null, 12,31,'Hugo','Bezana B','equipo.jpg','Pabellon bezana'),
(null, 5,31,'Jose','Em Pielagos Liencres','equipo.jpg','Pabellon Liencres'),
(null, 7,31,'Arturo','Castrobasket','equipo.jpg','Pachi Torre'),


-- PIMERA BEN FEM --
(null, 2,33,'Ana','Calasanz','equipo.jpg','Calasanz'),
(null, 8,33,'Saul','La paz torrelavega','equipo.jpg','Maria Pardo'),
(null, 4,33,'Alejandro','CBT jardin de moneche','equipo.jpg','Habana Vieja'),
(null, 9,33,'Pablo','Ventanas Arsan Astillero','equipo.jpg','La cantabrica'),


-- SEGUNDA BEN FEM --
(null, 2,34,'Diego','Calasanz B','equipo.jpg','Calasanz'),
(null, 8,34,'Saul','La paz torrelavega B ','equipo.jpg','Maria Pardo'),
(null, 4,34,'Alejandro','CBT jardin de moneche B','equipo.jpg','Habana Vieja'),
(null, 9,34,'Pablo','Ventanas Arsan Astillero B','equipo.jpg','La cantabrica');








-- TABLA JUGADORES 

INSERT INTO anuario_jugadores (id, id_equipo, nombre, apellidos, fecha, imagen) VALUES

-- JUGADORES INVENTADOS, SOLO CAMBIA EL EQUIPO AL QUE PERTENECEN -- 
(null,1,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,1,"Jugador", "Inventado2", curdate(),'llul.jpg'),
(null,1,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,1,"Jugador", "Inventado4", curdate(),'marc.jpg'),
(null,1,"Jugador", "Inventado5", curdate(),'llul.jpg'),
(null,1,"Jugador", "Inventado6", curdate(),'pau.jpg'),
(null,1,"Jugador", "Inventado7", curdate(),'marc.jpg'),
(null,1,"Jugador", "Inventado8", curdate(),'llul.jpg'),
(null,1,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,1,"Jugador", "Inventado10", curdate(),'sanemeterio.jpg'),
(null,1,"Jugador", "Inventado11", curdate(),'marc.jpg'),
(null,1,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,2,"Jugador", "Inventado1", curdate(),'sanemeterio.jpg'),
(null,2,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,2,"Jugador", "Inventado3", curdate(),'llul.jpg'),
(null,2,"Jugador", "Inventado4", curdate(),'sanemeterio.jpg'),
(null,2,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,2,"Jugador", "Inventado6", curdate(),'llul.jpg'),
(null,2,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,2,"Jugador", "Inventado8", curdate(),'marc.jpg'),
(null,2,"Jugador", "Inventado9", curdate(),'llul.jpg'),
(null,2,"Jugador", "Inventado10", curdate(),'sanemeterio.jpg'),
(null,2,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,2,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,3,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,3,"Jugador", "Inventado2", curdate(),'llul.jpg'),
(null,3,"Jugador", "Inventado3", curdate(),'marc.jpg'),
(null,3,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,3,"Jugador", "Inventado5", curdate(),'llul.jpg'),
(null,3,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,3,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,3,"Jugador", "Inventado8", curdate(),'llul.jpg'),
(null,3,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,3,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,3,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,3,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,4,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,4,"Jugador", "Inventado2", curdate(),'llul.jpg'),
(null,4,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,4,"Jugador", "Inventado4", curdate(),'llul.jpg'),
(null,4,"Jugador", "Inventado5", curdate(),'sanemeterio.jpg'),
(null,4,"Jugador", "Inventado6", curdate(),'pau.jpg'),
(null,4,"Jugador", "Inventado7", curdate(),'llul.jpg'),
(null,4,"Jugador", "Inventado8", curdate(),'sanemeterio.jpg'),
(null,4,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,4,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,4,"Jugador", "Inventado11", curdate(),'sanemeterio.jpg'),
(null,4,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,5,"Jugador", "Inventado1", curdate(),'sanemeterio.jpg'),
(null,5,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,5,"Jugador", "Inventado3", curdate(),'marc.jpg'),
(null,5,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,5,"Jugador", "Inventado5", curdate(),'llul.jpg'),
(null,5,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,5,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,5,"Jugador", "Inventado8", curdate(),'marc.jpg'),
(null,5,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,5,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,5,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,5,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,6,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,6,"Jugador", "Inventado2", curdate(),'llul.jpg'),
(null,6,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,6,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,6,"Jugador", "Inventado5", curdate(),'llul.jpg'),
(null,6,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,6,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,6,"Jugador", "Inventado8", curdate(),'sanemeterio.jpg'),
(null,6,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,6,"Jugador", "Inventado10", curdate(),'llul.jpg'),
(null,6,"Jugador", "Inventado11", curdate(),'sanemeterio.jpg'),
(null,6,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,7,"Jugador", "Inventado1", curdate(),'marc.jpg'),
(null,7,"Jugador", "Inventado2", curdate(),'llul.jpg'),
(null,7,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,7,"Jugador", "Inventado4", curdate(),'sanemeterio.jpg'),
(null,7,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,7,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,7,"Jugador", "Inventado7", curdate(),'sanemeterio.jpg'),
(null,7,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,7,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,7,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,7,"Jugador", "Inventado11", curdate(),'marc.jpg'),
(null,7,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,8,"Jugador", "Inventado1", curdate(),'sanemeterio.jpg'),
(null,8,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,8,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,8,"Jugador", "Inventado4", curdate(),'llul.jpg'),
(null,8,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,8,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,8,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,8,"Jugador", "Inventado8", curdate(),'sanemeterio.jpg'),
(null,8,"Jugador", "Inventado9", curdate(),'llul.jpg'),
(null,8,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,8,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,8,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,9,"Jugador", "Inventado1", curdate(),'marc.jpg'),
(null,9,"Jugador", "Inventado2", curdate(),'llul.jpg'),
(null,9,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,9,"Jugador", "Inventado4", curdate(),'sanemeterio.jpg'),
(null,9,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,9,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,9,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,9,"Jugador", "Inventado8", curdate(),'sanemeterio.jpg'),
(null,9,"Jugador", "Inventado9", curdate(),'llul.jpg'),
(null,9,"Jugador", "Inventado10", curdate(),'sanemeterio.jpg'),
(null,9,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,9,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,10,"Jugador", "Inventado1", curdate(),'sanemeterio.jpg'),
(null,10,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,10,"Jugador", "Inventado3", curdate(),'marc.jpg'),
(null,10,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,10,"Jugador", "Inventado5", curdate(),'llul.jpg'),
(null,10,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,10,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,10,"Jugador", "Inventado8", curdate(),'marc.jpg'),
(null,10,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,10,"Jugador", "Inventado10", curdate(),'llul.jpg'),
(null,10,"Jugador", "Inventado11", curdate(),'sanemeterio.jpg'),
(null,10,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,11,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,11,"Jugador", "Inventado2", curdate(),'marc.jpg'),
(null,11,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,11,"Jugador", "Inventado4", curdate(),'sanemeterio.jpg'),
(null,11,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,11,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,11,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,11,"Jugador", "Inventado8", curdate(),'marc.jpg'),
(null,11,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,11,"Jugador", "Inventado10", curdate(),'llul.jpg'),
(null,11,"Jugador", "Inventado11", curdate(),'sanemeterio.jpg'),
(null,11,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,12,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,12,"Jugador", "Inventado2", curdate(),'sanemeterio.jpg'),
(null,12,"Jugador", "Inventado3", curdate(),'llul.jpg'),
(null,12,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,12,"Jugador", "Inventado5", curdate(),'llul.jpg'),
(null,12,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,12,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,12,"Jugador", "Inventado8", curdate(),'marc.jpg'),
(null,12,"Jugador", "Inventado9", curdate(),'llul.jpg'),
(null,12,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,12,"Jugador", "Inventado11", curdate(),'sanemeterio.jpg'),
(null,12,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,13,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,13,"Jugador", "Inventado2", curdate(),'marc.jpg'),
(null,13,"Jugador", "Inventado3", curdate(),'llul.jpg'),
(null,13,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,13,"Jugador", "Inventado5", curdate(),'marc.jpg'),
(null,13,"Jugador", "Inventado6", curdate(),'pau.jpg'),
(null,13,"Jugador", "Inventado7", curdate(),'sanemeterio.jpg'),
(null,13,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,13,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,13,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,13,"Jugador", "Inventado11", curdate(),'llul.jpg'),
(null,13,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,14,"Jugador", "Inventado1", curdate(),'sanemeterio.jpg'),
(null,14,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,14,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,14,"Jugador", "Inventado4", curdate(),'marc.jpg'),
(null,14,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,14,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,14,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,14,"Jugador", "Inventado8", curdate(),'llul.jpg'),
(null,14,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,14,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,14,"Jugador", "Inventado11", curdate(),'marc.jpg'),
(null,14,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,15,"Jugador", "Inventado1", curdate(),'sanemeterio.jpg'),
(null,15,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,15,"Jugador", "Inventado3", curdate(),'marc.jpg'),
(null,15,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,15,"Jugador", "Inventado5", curdate(),'sanemeterio.jpg'),
(null,15,"Jugador", "Inventado6", curdate(),'pau.jpg'),
(null,15,"Jugador", "Inventado7", curdate(),'sanemeterio.jpg'),
(null,15,"Jugador", "Inventado8", curdate(),'llul.jpg'),
(null,15,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,15,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,15,"Jugador", "Inventado11", curdate(),'llul.jpg'),
(null,15,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,16,"Jugador", "Inventado1", curdate(),'sanemeterio.jpg'),
(null,16,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,16,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,16,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,16,"Jugador", "Inventado5", curdate(),'marc.jpg'),
(null,16,"Jugador", "Inventado6", curdate(),'pau.jpg'),
(null,16,"Jugador", "Inventado7", curdate(),'llul.jpg'),
(null,16,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,16,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,16,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,16,"Jugador", "Inventado11", curdate(),'sanemeterio.jpg'),
(null,16,"Jugador", "Inventado12", curdate(),'marc.jpg'),

(null,17,"Jugador", "Inventado1", curdate(),'marc.jpg'),
(null,17,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,17,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,17,"Jugador", "Inventado4", curdate(),'llul.jpg'),
(null,17,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,17,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,17,"Jugador", "Inventado7", curdate(),'marc.jpg'),
(null,17,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,17,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,17,"Jugador", "Inventado10", curdate(),'llul.jpg'),
(null,17,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,17,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,18,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,18,"Jugador", "Inventado2", curdate(),'marc.jpg'),
(null,18,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,18,"Jugador", "Inventado4", curdate(),'sanemeterio.jpg'),
(null,18,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,18,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,18,"Jugador", "Inventado7", curdate(),'llul.jpg'),
(null,18,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,18,"Jugador", "Inventado9", curdate(),'marc.jpg'),
(null,18,"Jugador", "Inventado10", curdate(),'sanemeterio.jpg'),
(null,18,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,18,"Jugador", "Inventado12", curdate(),'llul.jpg'),

(null,19,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,19,"Jugador", "Inventado2", curdate(),'sanemeterio.jpg'),
(null,19,"Jugador", "Inventado3", curdate(),'llul.jpg'),
(null,19,"Jugador", "Inventado4", curdate(),'marc.jpg'),
(null,19,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,19,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,19,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,19,"Jugador", "Inventado8", curdate(),'sanemeterio.jpg'),
(null,19,"Jugador", "Inventado9", curdate(),'marc.jpg'),
(null,19,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,19,"Jugador", "Inventado11", curdate(),'llul.jpg'),
(null,19,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,20,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,20,"Jugador", "Inventado2", curdate(),'sanemeterio.jpg'),
(null,20,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,20,"Jugador", "Inventado4", curdate(),'llul.jpg'),
(null,20,"Jugador", "Inventado5", curdate(),'sanemeterio.jpg'),
(null,20,"Jugador", "Inventado6", curdate(),'pau.jpg'),
(null,20,"Jugador", "Inventado7", curdate(),'sanemeterio.jpg'),
(null,20,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,20,"Jugador", "Inventado9", curdate(),'marc.jpg'),
(null,20,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,20,"Jugador", "Inventado11", curdate(),'sanemeterio.jpg'),
(null,20,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,21,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,21,"Jugador", "Inventado2", curdate(),'sanemeterio.jpg'),
(null,21,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,21,"Jugador", "Inventado4", curdate(),'marc.jpg'),
(null,21,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,21,"Jugador", "Inventado6", curdate(),'llul.jpg'),
(null,21,"Jugador", "Inventado7", curdate(),'llul.jpg'),
(null,21,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,21,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,21,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,21,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,21,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,22,"Jugador", "Inventado1", curdate(),'marc.jpg'),
(null,22,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,22,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,22,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,22,"Jugador", "Inventado5", curdate(),'sanemeterio.jpg'),
(null,22,"Jugador", "Inventado6", curdate(),'pau.jpg'),
(null,22,"Jugador", "Inventado7", curdate(),'marc.jpg'),
(null,22,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,22,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,22,"Jugador", "Inventado10", curdate(),'llul.jpg'),
(null,22,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,22,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,23,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,23,"Jugador", "Inventado2", curdate(),'sanemeterio.jpg'),
(null,23,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,23,"Jugador", "Inventado4", curdate(),'marc.jpg'),
(null,23,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,23,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,23,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,23,"Jugador", "Inventado8", curdate(),'llul.jpg'),
(null,23,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,23,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,23,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,23,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,24,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,24,"Jugador", "Inventado2", curdate(),'marc.jpg'),
(null,24,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,24,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,24,"Jugador", "Inventado5", curdate(),'sanemeterio.jpg'),
(null,24,"Jugador", "Inventado6", curdate(),'llul.jpg'),
(null,24,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,24,"Jugador", "Inventado8", curdate(),'marc.jpg'),
(null,24,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,24,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,24,"Jugador", "Inventado11", curdate(),'marc.jpg'),
(null,24,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,25,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,25,"Jugador", "Inventado2", curdate(),'llul.jpg'),
(null,25,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,25,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,25,"Jugador", "Inventado5", curdate(),'llul.jpg'),
(null,25,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,25,"Jugador", "Inventado7", curdate(),'sanemeterio.jpg'),
(null,25,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,25,"Jugador", "Inventado9", curdate(),'marc.jpg'),
(null,25,"Jugador", "Inventado10", curdate(),'sanemeterio.jpg'),
(null,25,"Jugador", "Inventado11", curdate(),'sanemeterio.jpg'),
(null,25,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,26,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,26,"Jugador", "Inventado2", curdate(),'sanemeterio.jpg'),
(null,26,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,26,"Jugador", "Inventado4", curdate(),'sanemeterio.jpg'),
(null,26,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,26,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,26,"Jugador", "Inventado7", curdate(),'sanemeterio.jpg'),
(null,26,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,26,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,26,"Jugador", "Inventado10", curdate(),'llul.jpg'),
(null,26,"Jugador", "Inventado11", curdate(),'marc.jpg'),
(null,26,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,27,"Jugador", "Inventado1", curdate(),'marc.jpg'),
(null,27,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,27,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,27,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,27,"Jugador", "Inventado5", curdate(),'marc.jpg'),
(null,27,"Jugador", "Inventado6", curdate(),'pau.jpg'),
(null,27,"Jugador", "Inventado7", curdate(),'sanemeterio.jpg'),
(null,27,"Jugador", "Inventado8", curdate(),'llul.jpg'),
(null,27,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,27,"Jugador", "Inventado10", curdate(),'sanemeterio.jpg'),
(null,27,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,27,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,28,"Jugador", "Inventado1", curdate(),'marc.jpg'),
(null,28,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,28,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,28,"Jugador", "Inventado4", curdate(),'llul.jpg'),
(null,28,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,28,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,28,"Jugador", "Inventado7", curdate(),'sanemeterio.jpg'),
(null,28,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,28,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,28,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,28,"Jugador", "Inventado11", curdate(),'marc.jpg'),
(null,28,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,29,"Jugador", "Inventado1", curdate(),'sanemeterio.jpg'),
(null,29,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,29,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,29,"Jugador", "Inventado4", curdate(),'llul.jpg'),
(null,29,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,29,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,29,"Jugador", "Inventado7", curdate(),'marc.jpg'),
(null,29,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,29,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,29,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,29,"Jugador", "Inventado11", curdate(),'marc.jpg'),
(null,29,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,30,"Jugador", "Inventado1", curdate(),'sanemeterio.jpg'),
(null,30,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,30,"Jugador", "Inventado3", curdate(),'llul.jpg'),
(null,30,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,30,"Jugador", "Inventado5", curdate(),'marc.jpg'),
(null,30,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,30,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,30,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,30,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,30,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,30,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,30,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,31,"Jugador", "Inventado1", curdate(),'sanemeterio.jpg'),
(null,31,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,31,"Jugador", "Inventado3", curdate(),'llul.jpg'),
(null,31,"Jugador", "Inventado4", curdate(),'marc.jpg'),
(null,31,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,31,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,31,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,31,"Jugador", "Inventado8", curdate(),'marc.jpg'),
(null,31,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,31,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,31,"Jugador", "Inventado11", curdate(),'sanemeterio.jpg'),
(null,31,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,32,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,32,"Jugador", "Inventado2", curdate(),'llul.jpg'),
(null,32,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,32,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,32,"Jugador", "Inventado5", curdate(),'marc.jpg'),
(null,32,"Jugador", "Inventado6", curdate(),'pau.jpg'),
(null,32,"Jugador", "Inventado7", curdate(),'sanemeterio.jpg'),
(null,32,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,32,"Jugador", "Inventado9", curdate(),'marc.jpg'),
(null,32,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,32,"Jugador", "Inventado11", curdate(),'sanemeterio.jpg'),
(null,32,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,33,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,33,"Jugador", "Inventado2", curdate(),'sanemeterio.jpg'),
(null,33,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,33,"Jugador", "Inventado4", curdate(),'marc.jpg'),
(null,33,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,33,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,33,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,33,"Jugador", "Inventado8", curdate(),'marc.jpg'),
(null,33,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,33,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,33,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,33,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,34,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,34,"Jugador", "Inventado2", curdate(),'llul.jpg'),
(null,34,"Jugador", "Inventado3", curdate(),'sanemeterio.jpg'),
(null,34,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,34,"Jugador", "Inventado5", curdate(),'marc.jpg'),
(null,34,"Jugador", "Inventado6", curdate(),'pau.jpg'),
(null,34,"Jugador", "Inventado7", curdate(),'sanemeterio.jpg'),
(null,34,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,34,"Jugador", "Inventado9", curdate(),'marc.jpg'),
(null,34,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,34,"Jugador", "Inventado11", curdate(),'sanemeterio.jpg'),
(null,34,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,35,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,35,"Jugador", "Inventado2", curdate(),'sanemeterio.jpg'),
(null,35,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,35,"Jugador", "Inventado4", curdate(),'sanemeterio.jpg'),
(null,35,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,35,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,35,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,35,"Jugador", "Inventado8", curdate(),'sanemeterio.jpg'),
(null,35,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,35,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,35,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,35,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,36,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,36,"Jugador", "Inventado2", curdate(),'sanemeterio.jpg'),
(null,36,"Jugador", "Inventado3", curdate(),'marc.jpg'),
(null,36,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,36,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,36,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,36,"Jugador", "Inventado7", curdate(),'marc.jpg'),
(null,36,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,36,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,36,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,36,"Jugador", "Inventado11", curdate(),'marc.jpg'),
(null,36,"Jugador", "Inventado12", curdate(),'pau.jpg'),

(null,37,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,37,"Jugador", "Inventado2", curdate(),'sanemeterio.jpg'),
(null,37,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,37,"Jugador", "Inventado4", curdate(),'pau.jpg'),
(null,37,"Jugador", "Inventado5", curdate(),'llul.jpg'),
(null,37,"Jugador", "Inventado6", curdate(),'pau.jpg'),
(null,37,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,37,"Jugador", "Inventado8", curdate(),'sanemeterio.jpg'),
(null,37,"Jugador", "Inventado9", curdate(),'pau.jpg'),
(null,37,"Jugador", "Inventado10", curdate(),'sanemeterio.jpg'),
(null,37,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,37,"Jugador", "Inventado12", curdate(),'marc.jpg'),

(null,38,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,38,"Jugador", "Inventado2", curdate(),'sanemeterio.jpg'),
(null,38,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,38,"Jugador", "Inventado4", curdate(),'marc.jpg'),
(null,38,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,38,"Jugador", "Inventado6", curdate(),'sanemeterio.jpg'),
(null,38,"Jugador", "Inventado7", curdate(),'llul.jpg'),
(null,38,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,38,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,38,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,38,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,38,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),

(null,39,"Jugador", "Inventado1", curdate(),'llul.jpg'),
(null,39,"Jugador", "Inventado2", curdate(),'pau.jpg'),
(null,39,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,39,"Jugador", "Inventado4", curdate(),'marc.jpg'),
(null,39,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,39,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,39,"Jugador", "Inventado7", curdate(),'llul.jpg'),
(null,39,"Jugador", "Inventado8", curdate(),'pau.jpg'),
(null,39,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,39,"Jugador", "Inventado10", curdate(),'marc.jpg'),
(null,39,"Jugador", "Inventado11", curdate(),'pau.jpg'),
(null,39,"Jugador", "Inventado12", curdate(),'sanemeterio.jpg'),


(null,40,"Jugador", "Inventado1", curdate(),'pau.jpg'),
(null,40,"Jugador", "Inventado2", curdate(),'sanemeterio.jpg'),
(null,40,"Jugador", "Inventado3", curdate(),'pau.jpg'),
(null,40,"Jugador", "Inventado4", curdate(),'sanemeterio.jpg'),
(null,40,"Jugador", "Inventado5", curdate(),'pau.jpg'),
(null,40,"Jugador", "Inventado6", curdate(),'marc.jpg'),
(null,40,"Jugador", "Inventado7", curdate(),'pau.jpg'),
(null,40,"Jugador", "Inventado8", curdate(),'llul.jpg'),
(null,40,"Jugador", "Inventado9", curdate(),'sanemeterio.jpg'),
(null,40,"Jugador", "Inventado10", curdate(),'pau.jpg'),
(null,40,"Jugador", "Inventado11", curdate(),'sanemeterio.jpg'),
(null,40,"Jugador", "Inventado12", curdate(),'pau.jpg');



