INSERT INTO Universo VALUES (id,nombre,descripcion)
(0,'Multiverso','The Multiverse is the collection of alternate universes which share a universal hierarchy; it is a subsection of the larger Omniverse, the collection of all alternate universes. ')
(1'Tierra 616','es el universo original de Marvel donde se originan la mayoría de las historias y\npersonajes, de hecho este es el espacio de las series clásicas como X- Men, The Amazing\nSpider-Man y Fantastic Four'),
(2,'House of M','es un universo que deriva de Tiera 616 donde los mutantes son quienes\npredominan. Debido a la acción de la Bruja Escarlata ningun ser humano recuerda como\nsolía ser su mundo, excepto los agentes de SHIELD y Wolverine.'),
(3,'Ultimate','se puede decir que es el universo donde todo vuelve a comenzar. En este universo los\nsuperhéroes presentan características diferentes a las del original, por ejemplo, el Ultimate\nSpider-Man es Miles Morales que es una persona afroamericana con ascendencia latina.'),
(4,'Age of Apocalypse','es producto de un accidente temporal cuando Legion, hijo del profesor\nX, viaja al pasado para asesinar a Magneto, pero por un error mata a su propio padre, lo que\nprovoca el ascenso de Apocalipsis como señor de la Tierra. En este Universo, también\nconocido como Tierra 295, los humanos se revelan junto a Reed Richards y Tony Stark.'),
(5,'Marvel 2099','es el universo del futuro en este lugar las grandes corporaciones controlan un\nmundo dividido por una guerra entre humanos y mutantes, aquí surgen historias como Spider-\nMan 2099, X-Men 2099 y Fantastic Four 2099 entre otros.'),
(6,'Marvel Noir','por alguna razón, la mayoría de los personajes no tienen poderes, a excepción\nde Spider-Man.'),
(7,'Marvel Zombies','es el mundo de los muertos vivientes, en éste mundo los superhéroes y villanos\nson infectados por un virus alienígena que los convierte en zombies.'),
(8,'Ucronías','es el universo donde los escritores se preguntaron “que hubiese pasado si...”. En esta\nlínea temporal hay cosas que nunca sucedieron o sucedieron de forma diferente, por ejemplo\nBruce Banner es mordido por una araña radioactiva que lo convierte en Spider-Man mientras\nque Peter Parker se inyecta la fórmula que lo convierte en Hulk.'),
(9,'Larval Universe','también conocido como Tierra 8311, es el universo donde los personajes\nconocidos se presentan como una versión animal: Spider-Ham, Fantastic Fur y el Capitán\nAmericat, entre otros.'),
(10,'Tierra-001','La Tierra-001 es la realidad natal de Los Herederos y alberga los trofeos de mil mundos conquistados.'),
(11,'Tierra-15513','La Tierra-15513 es una realidad dentro de la cual el Dios Emperador de Doom formó su Battleworld.'),
(12,'Tierra-3145','Tierra-3145 es el hogar de Ben Parker, quien se convirtió en el hombre araña en esta realidad. Sin embargo, se retiró de Spider-Man después de que su esposa y su sobrino fueron asesinados por la Elf Esmeralda.')
(13,'Tierra-13','La Tierra-13 es una realidad alternativa del Universo 616. En este mundo Peter Parker fue elegido por la Fuerza Enigma y retuvo los poderes del Capitán Universo.')
(14,'Tierra-TRN588','Earth-TRN588 is a divergent reality similar to Earth-928, a reality where a second Age of Heroes began in the future of 2099 A.D. ')


INSERT INTO Lugar VALUES (id,padre,nombre,tipo,tipo_greografico,descripcion)


(10,null,'Andromeda Galaxy','galaxia',NULL,'The Andromeda Galaxy is home to a great number of alien species, foremost among them the Skrulls who were the dominant force of their galaxy.'),
(11,null,'Milky Way','galaxia',NULL,"the Milky Way galaxy is home to numerous locations including the Sol system (Earth's solar system), and the star system Krona."),
(12,null,'Black Galaxy','galaxia',NULL,'The Black Galaxy is a living "bio-verse" and Ego the living planet was born there. '),
(13,null,'Large Magellanic Cloud','galaxia',NULL,'The Large Magellanic Cloud is a dwarf galaxy that orbits the Milky Way. Also known as the Greater Magellanic Cloud, it is the home galaxy of the Kree Empire, as well as the Vorms.'),

(14,11,'Tierra','planeta',NULL,NULL),
(15,11,'Venus','planeta',NULL,NULL),
(16,11,'Marte','planeta',NULL,NULL),
(17,11,'Jupiter','planeta',NULL,NULL),
(18,11,'Mercurio','planeta',NULL,NULL),
(19,11,'Saturno','planeta',NULL,NULL),
(20,11,'Urano','planeta',NULL,NULL),
(21,11,'Neptuno','planeta',NULL,NULL),

(22,14,'Estados Unidos',NULL,'pais',NULL),
(23,14,'Canada',NULL,'pais',NULL),
(24,14,'Gran Bretana',NULL,'pais',NULL),
(25,14,'Wakanda',NULL,'pais',NULL),
(26,14,'Alemania',NULL,'pais',NULL),
(27,14,'Francia',NULL,'pais',NULL),
(28,14,'Belgica',NULL,'pais',NULL),
(29,14,'Bulgaria',NULL,'pais',NULL),
(30,14,'Finlandia',NULL,'pais',NULL),
(31,14,'Italia',NULL,'pais',NULL),
(32,14,'Grecia',NULL,'pais',NULL),
(33,14,'Rusia',NULL,'pais',NULL),
(34,14,'Espana',NULL,'pais',NULL),
(35,14,'Iran',NULL,'pais',NULL),
(36,14,'Iraq',NULL,'pais',NULL),
(37,14,'Egipto',NULL,'pais',NULL),
(38,14,'India',NULL,'pais',NULL),
(39,14,'China',NULL,'pais',NULL),
(40,14,'Japon',NULL,'pais',NULL),
(41,14,'Argentina',NULL,'pais',NULL),
(42,14,'Colombia',NULL,'pais',NULL),
(43,14,'Venezuela',NULL,'pais',NULL),
(44,14,'Mexico',NULL,'pais',NULL),
(45,14,'Tailandia',NULL,'pais',NULL),
(46,14,'Sur Corea',NULL,'pais',NULL),
(47,14,'Nor Corea',NULL,'pais',NULL),
(48,14,'Brasil',NULL,'pais',NULL),
(49,14,'Umbazi',NULL,'pais',NULL),
(50,14,'Niganda',NULL,'pais',NULL),
(51,14,'Djanda',NULL,'pais',NULL),
(52,14,'Australia',NULL,'pais',NULL),


(53,22,'Nueva York',NULL,'estado',NULL),
(54,22,'Virginia',NULL,'estado',NULL),
(55,22,'California',NULL,'estado',NULL),
(56,22,'Bruselas',NULL,'estado',NULL),
(57,22,'Madrid',NULL,'estado',NULL),
(58,22,'Londres',NULL,'estado',NULL),
(59,22,'Berlin',NULL,'estado',NULL),
(60,22,'Beijing',NULL,'estado',NULL),
(61,22,'Shangai',NULL,'estado',NULL),


(62,53,'Nueva York City',NULL,'ciudad',NULL),
(63,57,'Madrid',NULL,'ciudad',NULL),
(64,58,'Ciudad de Londres',NULL,'ciudad',NULL),

(65,62,'Manhattan',NULL,'locale',NULL),
(66,62,'Long Island',NULL,'locale',NULL),
(67,62,'ChinaTown',NULL,'locale',NULL),
(68,65,'Central Park',NULL,'locale',NULL),

(69,1,'Asgard','mundo_mitologico',NULL,NULL),
(70,null,'Limbo','dimension_magica',NULL,NULL)

(71,55,'San Francisco Bay',NULL,'locale',NULL),
(72,55,'San Francisco',NULL,'ciudad',NULL),
(73,71,'Marin Highlands',NULL,'locale',NULL),
(74,52,'Northern Territory',NULL,'locale',NULL),
(75,14,'Oceano Atlantico',NULL,'locale',NULL),
(76,74,'Triangulo de las Bermudas',NULL,'locale',NULL),

(77,65,'Greenwich Village',NULL,'locale',NULL),
(78,65,'Harlem',NULL,'locale',NULL)
(79,22,"Colorado",NULL,'estado',NULL),
(80,62,'Brooklyn',NULL,'locale',NULL),
(81,14,'Circulo Artico',NULL,'locale',NULL),
(82,81,'Polo Norte',NULL,'locale',NULL),
(83,53,'Bronx',NULL,'locale',NULL),
(84,11,'Blue Area of the Moon','planeta',NULL,NULL),
(85,84,'Negative Zone',NULL,'locale',NULL),
(86,79,'Mount Charteris',NULL,'locale',NULL),
(87,65,'Times Square',NULL,'locale',NULL),
(88,22,'Massachusetts',NULL,'estado',NULL),
(89,88,'Boston',NULL,'ciudad',NULL),
(90,65,'Yancy Street',NULL,'locale',NULL),
(91,22,'Connecticut',NULL,'estado',NULL),
(92,91,'Stamford',NULL,'ciudad',NULL),
(93,14,'La órbita de la Tierra',NULL,'locale',"An area of space around the Earth. Anything within it that cannot resist the gravitational pull of the Earth will rotate around the Earth inside it. "),
(94,14,'Antarctica',NULL,'locale',NULL),
(95,25,'Necropolis',NULL,'ciudad',NULL),
(96,62,'Queens',NULL,'locale',NULL),
(97,22,'New Jersey',NULL,'estado',NULL),
(98,22,'Tibet',NULL,'estado',NULL),
(99,98,"K'un-Lun",'ciudad',"K'un-Lun (焜伦) is a mystical lost city located in a pocket dimension, and one of the Seven Capital Cities of Heaven."),

(100,53,'Hegeman',NULL,'ciudad',NULL),
(101,23,'Yukon',NULL,'locale',NULL),

(102,null,'Battleworld','planeta',NULL,NULL),
(103,102,'Arachnia',NULL,'locale',NULL),
(104,103,'Chinatown',NULL,'locale',NULL),
(105,62,'Downtown',NULL,'locale',NULL),
(106,14,'Bagalia',NULL,'pais',NULL),
(107,106,'Bagalia City',NULL,'ciudad',NULL),
(108,14,'Symkaria',NULL,'pais',NULL),
(109,22,'Idaho',NULL,'estado',NULL),
(110,109,'Burton Canyon','locale',NULL),



;

