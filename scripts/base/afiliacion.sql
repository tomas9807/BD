

CREATE TABLE `Base_Afiliacion` (
  `id_base` int(10) unsigned NOT NULL,
  `id_afiliacion` int(10) unsigned NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_base`,`id_afiliacion`),
  KEY `id_afiliacion` (`id_afiliacion`),
  CONSTRAINT `Base_Afiliacion_ibfk_1` FOREIGN KEY (`id_base`) REFERENCES `Base_Operacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Base_Afiliacion_ibfk_2` FOREIGN KEY (`id_afiliacion`) REFERENCES `Alifiacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






INSERT INTO Afiliacion(id,nombre,descripcion) VALUES 
(1,'X-Men','The X-Men are a privately owned security force created to harbor peace between the emerging homo superior, nicknamed "Mutants" and baseline humans. '),
(2,'Avengers',"The Avengers are a team of extraordinary individuals with special abilities and the will to do good in the world."),
(3,'Defenders (Manhattan)',"When the trio of heroes Daredevil, Iron Fist and Luke Cage interfered with the operations of rising crime lord Diamondback, they were dealt heavy blows in retaliation.As they were looking for leads on Diamondback together with Luke's wife Jessica Jones, Daredevil noticed it could help people know that they actively worked together. They continued operating as a team to investigate Diamondback, and eventually became known as the Defenders."),
(4,'Defenders',"Continuously thrown together by various circumstances, the team came to call themselves The Defenders and protect Earth from usually otherworldly attacks. Many members of the team aren't particularly fond of their teammates, with fights frequently breaking out and many labeling the group as a 'non-team' for the way they act")
(5,'Midnight Sons','Nine beings with ties to the occult were drawn together by Doctor Strange to battle Lilith and her demonic children, the Lilin')
(6,'Heroes for Hire (Power Man & Iron Fist)','Heroes For Hire, Inc. is a small business licensed by the state of New York which offered a full line of professional investigation and protection services. '),
(7,'Rand Corporation',"Entrepreneur Wendell Rand and co-founder Harold Meachum established Rand-Meachum Incorporated as foundation for their research and investment enterprise. ")
(8,'Immortal Weapons',"The champions of the Seven Capital Cities of Heaven, each are skilled in martial arts and able to manipulate Chi energy in various ways.")
(9,'Heroes for Hire (Knight & Wing)',"During the Civil War; Misty Knight and Colleen Wing were contacted by Iron Man, Reed Richards, and Spider-Man to reform Heroes for Hire in order to track down superhumans refusing to comply with the Superhuman Registration Act. ")
(10,'New Avengers','The New Avengers first assembled by chance during a breakout occurred at the Raft, an island prison designed to hold super-criminals. Luke Cage (acting as a hired bodyguard) was escorting attorneys Foggy Nelson and Matt Murdock (Daredevil) to meet with the Sentry as it was occurring. Spider-Man, Captain America, and Iron Man all arrived to help keep order.')
(11,'Thunderbolts','Conceived as a new incarnation of the Masters of Evil, the Thunderbolts were initially formed by Baron Zemo.')
(12,'Heroes for Hire (Oracle Inc.)','Following up on the status of the Oracle corporation that Namor, Jim Hammond (the Golden Age Human Torch) and Danny Rand decided to set up a new Heroes For Hire organization.')
(13,'Secret Avengers (Civil War)',"The Secret Avengers were founded by Captain America in response to the Superhuman Registration Act, set up precisely for those who wanted to fight against Iron Man's initiative for superhuman registration.")
(14,'Secret Defenders','With the Defenders disbanded, Dr. Strange organized his own "Secret Defenders" project, recruiting whichever heroes he required for a given mission, with no ongoing members.')
(15,'Defenders for a Day',"When the Defenders' associate Dollar Bill created a documentary about the group and aired it on television without their permission, it attracted a group of super-heroes who were interested in joining the group. ")
(16,"Future Iron Man's Team","This team was formed by Iron Man from the future of various heroes from the past ")
(17,'Mighty',"In order to retaliate against the Worthy, Captain America brought Ms. Marvel, Iron Fist, Doctor Strange, Iron Man, Black Widow, Hawkeye, Red She-Hulk, Spider-Man, and Wolverine to Asgard to bless certain items in order to match the strength of the Worthy.")
(18,'Fantastic Four','The Fantastic Four are a group of scientific explorers lead by Dr. Reed Richards. After the team gained powers during a impromptu trip to space; Sue Storm, Johnny Storm and pilot Ben Grimm decided to remain together to explore the boundaries of science')
(19,'Future Foundation'," a new group of free-thinking individuals to plan for a better future for all of humanity and Earth. ")
(20,'Illuminati',"The Illuminati were a covert think-tank originally consisting of Mister Fantastic, Iron Man, Professor X, Doctor Strange, Black Bolt, and Namor. ")
(21,'Interdimensional Council of Reeds (Multiverse)',"The Council was founded officially by three versions of Reed Richards who had each acquired their universes' Infinity Gauntlet.")
(22,'Knights of the Atomic Round Table',"When the Fantastic Four and the Avengers sacrificed their lives to destroy Onslaught, Franklin Richards, the son of the FF's Mr. Fantastic and Invisible Woman subconsciously created a pocket universe to save their lives. ")
(23,"Headbangers",'The Headbangers were a collection of members of Alpha Flight and the Fantastic Four who were controlled by Headlok.')
(24,"Amazing Arachnids ",null),
(25,"Warriors of the Great Web","The Warriors of the Great Web is a team formed by Spider-UK and Spider-Girl to help any reality that is in need of help.")
(26,"Spider-Army","Spider-powered beings from across the Multiverse joining forces to defeat the Inheritors"),
(27,"Superior Spider-Army",'Spider-powered beings from across the Multiverse to defeat the Totem hunter Karn'),
(28,'Chronos Corps','The Chronos Corps are a group of time-displaced individuals Kang the Conqueror rescued from certain death at the hands of their own dying universes.')
(29,'Anachronauts','Personal guard of Kang the Conqueror'),
(30,'Council of Kangs ',"A group composed by Prime Kang and two of Kang's divergences that were tricked by their future counterpart Immortus to eliminate all divergent Kangs in the Multiverse so that Kang's destiny ended with him becoming Immortus. Immortus seemingly succeeded in this task for a time.")
(31,'Council of Cross-Time Kangs','The Council of Cross-Time Kangs was a group of several Humans, aliens and other creatures who took the guise of Kang the Conqueror after defeating the various robots used by the Prime Kang to rule multiple realities at the same time.')
(32,'Legion Accursed','Mephisto sent his agent Bitterhorn out to Earth to recruit an army of super-villains to battle the Beyonder. Bitterhorn begins by making deals with the Juggernaut, Electro, Baron Mordo, Absorbing Man and Titania. ')
(34,'Hel-Rangers',"The Hel-Rangers consisted of exiled inhabitants from other domains due to crimes they had committed and were sent to The Shield forever to guard the rest of Battleworld from the Zombies of the Deadlands, the Ultron Sentinels of Perfection, and the Annihilation Wave of New Xandar.")
(35,'Sons of Yinsen','A number of young men who had been enslaved by Wong-Chu learned of Ho Yinsen and Iron Man.')
(36,'Lethal Legion','The Lethal Legion were a super-villain team gathered by Grim Reaper to defeat the Avengers.'),
(37,'Masters of Evil','The Masters of Evil were a team of supervillains.')


INSERT INTO Base_Operacion(id,id_lugar,id_universo,nombre,descripcion) VALUES
(1,1,68,"Xavier Institute for Higher Learning",'is a special institute founded and led by Professor Charles Xavier to train young mutants in controlling their powers and help foster a friendly human-mutant relationship.'), 
(2,1,68,"Jean Grey School for Higher Learning",'After Wolverine left Utopia, with many of the X-Men, he returned to the ruins of the Xavier Institute to found a new school, Jean Grey School for Higher Learning, in honor of the first student of Professor Xavier.[51]'), 
(3,1,70,"X-Haven",'X-Haven was a sanctuary founded by Storm to protect mutantkind from both the danger of the Terrigen Mist and the ever-growing oppression her people faced.'), 
(4,1,71,"Utopia",'Utopia was the main headquarters of the majority of the mutant population and the X-Men. '),
(5,1,73,"Graymalkin Industries",'After much debate and a rescue mission of a few AWOL X-Men, Scott Summers, with the financial help of Warren Worthington III, decided to relocate in San Francisco where the people, and mayor, were more accepting.'),
(6,1,74,"Cooterman's Creek","Cooterman's Creek is a high-tech facility disguised as an abandoned town in the Australian Outback. " ),
(7,1,76,"Magneto's Island","used as a R&R location for Magneto and the X-Men / New Mutants due to its eldritch nature and eletronic systems, which masked it from the outside world." ),
(8,1,65,"Manhattan (Defenders' Base)",null),
(9,1,77,"Sanctum Sanctorum","Also known as the Sanctum Sanctorum, the townhouse has served as the personal residence of Doctor Strange and formerly as the headquarters of the Defenders and the New Avengers.")
(10,1,78,"Headquarters of the Heroes for Hire",null),
(11,1,78,"The Rand Building","The Rand Building is home to the Rand Corporation."),
(12,1,14,"Heart of Heaven","Once every 88 years, during a heavenly convergence, each of the Seven Capital Cities of Heaven occupy the same space and time to create a place called the Heart of Heaven.")
(13,1,66,"Richmond Riding Academy","served as an unofficial headquarters for the non-team the Defenders.")
(14,1,79,"Angel's Aerie",'it served as "New" Defenders headquarters, when Beast tried to reorganize the Defenders team.')
(15,1,65,"Knightwing Restorations Inc. Office",null),
(16,1,65,"Avengers Mansion","Located at 721 (or 890) Fifth Avenue in New York, this three-story townhouse was originally built in 1932 by industrialist Howard Stark as his Manhattan residence.")
(17,1,80,"Captain America's townhouse",null),
(18,1,65,"Stark Tower","was designed by Tony Stark with the intention to serve as a gleaming beacon of modern architecture.")
(19,1,82,'Thunderbolts Clubhouse',null),
(20,1,83.'The Raft','The Raft was a super maximum security prison for super-powered criminals'),
(21,1,79,'Thunderbolt Mountain',null),
(22,1,80,'Thunderbolts Headquarters',null),
(23,1,85,'Four Freedoms Plaza',"Four Freedoms Plaza was the replacement headquarters for the Fantastic Four when their original dwelling, the Baxter Building, was destroyed by Kristoff Vernard the adoptive son of Doctor Doom. ")
(24,1,86,'Mount Charteris Mountain Base',null),
(25,1,87,'Gem Theater','Luke Cage rented a 3rd story office/apartment at the Gem Theater for a number of years.'),
(26,null,null,'Secret safehouse',null),
(27,1,89,"Doctor Druid's Sanctum",null),
(28,1,1,'Defenders Headquarters',null),
(29,1,1,'Unlocated underwater base',"Donald Birch's base"),
(30,1,null,'Movil','la base de operaciones no tiene lugar fijo puede moverse a varios lados'),
(31,1,90,"Ben Grimm's apartment building",null),
(32,1,65,"Moon Girl's Secret Laboratory","Moon Girl's Secret Laboratory is located within the substructure of Public School 20 Anna Silver on the Lower East Side of Manhattan in New York City.")
(33,1,65,"Public School 20 Anna Silver","Public School 20 Anna Silver is a New York public school located on Essex Street in the Lower East Side neighborhood of Manhattan.")
(34,1,65,"Baxter Building","The Baxter Building is a 35-story building located at 42nd Street and Madison Avenue, Manhattan, New York City in the United States of America just a few blocks from the United Nations Headquarters.")
(35,1,65,"Antarctic Laboratory (Pier Four)","was the Fantastic Four's third temporarily base/home warehouse near the Hudson River following their return from Franklin's alternate universe and the destruction of Four Freedoms Plaza by the Thunderbolts.")
(36,0,null,"Movil a traves del Multiverso",null),
(37,1,92,"Camp Hammond","The camp is primarily used to train drafted super powered young people in the United States who have to be registered with the federal government.")
(38,1,93,"Foundation (Space Station)","The Foundation is a orbital space station and education facility of the Future Foundation, built by Reed Richards in geosynchronous orbit above the Baxter Building.")
(39,1,94,"Vostok Station",null),
(40,1,22,"Funtime, Inc. Facility","Funtime, Inc. was one of the many subsidiaries of the larger Stark Industries. Currently abandoned, it served as the main point of encounter of Iron Man and the Illuminati.")
(41,1,95,"Necropolis (Base)","The Necropolis is the Wakandan City of the Dead, where previous Black Panthers are buried."),
(42,1,14,"Avengers Mountain (Base)","According to Loki, the Progenitor was an Alpha Celestial who came to Earth four billion years ago after being infected by the Horde to die a sad and painful death. ")
(43,1,82,"Polo Norte (Avengers' Base)",null),
(44,1,96,"Avengers Auxiliary Headquarters","The Avengers Auxiliary Headquarters was an underground warehouse set up by Tony Stark in case of emergencies.")
(45,1,97,"Avengers Hangar","After suffering from defunding, the Avengers moved their base of operations to an abandoned Stark Industries facility in New Jersey.")
(46,1,75,"Avengers Island (Hydrobase)","Originally built as a floating oceanography research station disguised to appear as a natural island in the Atlantic Ocean. ")
(47,1,25,"Wakanda (Avengers' Base)",null),
(48,1,99,"K'un-Lun (Avengers' Base)",null),
(49,0,null,'Interdimensional Council of Reeds (Base)',null),
(50,1,100,'State University',"State University is one of the best private university's in the United States of America. It is located in Hegeman, New York State.")
(51,1,101,'Tuktoyatuk','small town in the Yukon of Canada')
(52,0,null,"Amazing Arachnids (Base)",null)
(53,10,14,'Loomworld',"Loomworld was an Earth conquered by the Inheritors and is being used as their main domain to travel the Multiverse with the unwilling help of the Master Weaver's dimensional portals to hunt the Spider-Totems.")
(54,11,103,'Oscorp Tower',"Oscorp was the main headquarter of the Oscorp until Liz Allan took over the building as the hub of Alchemax")
(55,11,104,'ChinaTown (Base)',null),
(56,12,87,"Sims Tower","After one of his encounters with Morlun, Ezekiel Sims created Sims Tower to protect future generations of Spider-Totems. ")
(57,13,68,'Central Park (Base)',null),
(58,1,72,'Horizon University',"It is staffed by the organization formerly known as the Parker Institute for Technology.")
(59,14,105,'Empire State University','Empire State University (ESU) officially Empire State University in the City of New York is a private, Ivy League, research university in Upper Manhattan, New York City.')
(60,0,null,'Chronos Corps (Base)',null ),
(61,1,null,'Chronopolis',"Immortus/Kang's main city base in the future. From here, he rules all of his realms.")
(62,null,70,'Castle Limbo',null),
(63,null,70,'Kang-Krossroads',null),
(64,1,null,"Mephisto's Realm",'The realm of Mephisto is but one of many "death dimensions". Time moves much more slowly here, a few days on Earth feel like many years here.')
(65,11,102,'Shield',"The Shield is a giant wall that is one of Battleworld's most important structures. It isolates the three deadliest domains of Battleworld, Deadlands, Perfection and New Xandar from the rest of the planet.[")
(66,1,null,'Sons of Yinsen (Base)',null),
(67,1,null,'Lethal Legion (Base)',null),
(66,1,107,'Under the Shadow Council',null),
(67,1,108,'Under Crimson Cowl',null),
(67,1,110,'Under Baron Heinrich Zemo',null),
(68,1,14,"Masters of Evil's South America Base",null)

;


INSERT INTO Base_Afiliacion(id_afiliacion,id_base,activo) VALUES
(1,1,false),
(1,2,true),
(1,3,false),
(1,4,false),
(1,5,null),
(1,6,null),
(1,7,null)
(3,8,null),
(4,9,true),
(4,12,false),
(4,13,false),
(4,14,false)
(5,9,false),
(6,10,null),
(7,11,false),
(9,15,false),
(10,16,false),
(10,17,false),
(10,18,false),
(11,19,false),
(11,20,false),
(11,21,false),
(11,22,false),
(11,23,false),
(11,24,false),
(12,25,false),
(13,26,false),
(14,27,false),
(15,28,false),
(16,29,false),
(17,30,false),
(18,31,false),
(18,32,false),
(18,33,false),
(18,34,false),
(18,35,false),
(18,23,false),
(19,36,false),
(19,34,false),
(19,37,false),
(19,38,false),
(19,39,false),
(20,30,false),
(20,41,false),
(20,16,false),
(20,34,false),
(2,42,false),
(2,43,false),
(2,44,false),
(2,34,false),
(2,45,false),
(2,46,false),
(2,47,false),
(2,48,false),
(2,18,false),
(2,16,false),
(21,49,false),
(22,50,false),
(23,51,false),
(24,52,false),
(25,53,false),
(25,54,false),
(25,55,false),
(26,53,false),
(26,56,false),
(26,57,false),
(27,58,false),
(27,59,false),
(28,60,false),
(29,61,true),
(30,62,false),
(31,63,false),
(32,64,false),
(33,65,false),
(34,66,false),



;







