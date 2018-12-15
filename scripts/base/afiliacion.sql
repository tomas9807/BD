

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
(2,'Avengers',null),
(3,'Defenders (Manhattan)',"When the trio of heroes Daredevil, Iron Fist and Luke Cage interfered with the operations of rising crime lord Diamondback, they were dealt heavy blows in retaliation.As they were looking for leads on Diamondback together with Luke's wife Jessica Jones, Daredevil noticed it could help people know that they actively worked together. They continued operating as a team to investigate Diamondback, and eventually became known as the Defenders."),
(4,'Defenders',"Continuously thrown together by various circumstances, the team came to call themselves The Defenders and protect Earth from usually otherworldly attacks. Many members of the team aren't particularly fond of their teammates, with fights frequently breaking out and many labeling the group as a 'non-team' for the way they act")
(5,'Midnight Sons','Nine beings with ties to the occult were drawn together by Doctor Strange to battle Lilith and her demonic children, the Lilin')
(6,'Heroes for Hire (Power Man & Iron Fist)','Heroes For Hire, Inc. is a small business licensed by the state of New York which offered a full line of professional investigation and protection services. '),
(7,'Rand Corporation',"Entrepreneur Wendell Rand and co-founder Harold Meachum established Rand-Meachum Incorporated as foundation for their research and investment enterprise. ")
(8,'Immortal Weapons',"The champions of the Seven Capital Cities of Heaven, each are skilled in martial arts and able to manipulate Chi energy in various ways.")
(9,'Heroes for Hire (Knight & Wing)',"During the Civil War; Misty Knight and Colleen Wing were contacted by Iron Man, Reed Richards, and Spider-Man to reform Heroes for Hire in order to track down superhumans refusing to comply with the Superhuman Registration Act. ")
(10,'New Avengers','The New Avengers first assembled by chance during a breakout occurred at the Raft, an island prison designed to hold super-criminals. Luke Cage (acting as a hired bodyguard) was escorting attorneys Foggy Nelson and Matt Murdock (Daredevil) to meet with the Sentry as it was occurring. Spider-Man, Captain America, and Iron Man all arrived to help keep order.')

;


INSERT INTO Base_Operacion(id,id_lugar,nombre,descripcion) VALUES
(1,68,"Xavier Institute for Higher Learning",'is a special institute founded and led by Professor Charles Xavier to train young mutants in controlling their powers and help foster a friendly human-mutant relationship.'), 
(2,68,"Jean Grey School for Higher Learning",'After Wolverine left Utopia, with many of the X-Men, he returned to the ruins of the Xavier Institute to found a new school, Jean Grey School for Higher Learning, in honor of the first student of Professor Xavier.[51]'), 
(3,70,"X-Haven",'X-Haven was a sanctuary founded by Storm to protect mutantkind from both the danger of the Terrigen Mist and the ever-growing oppression her people faced.'), 
(4,71,"Utopia",'Utopia was the main headquarters of the majority of the mutant population and the X-Men. '),
(5,73,"Graymalkin Industries",'After much debate and a rescue mission of a few AWOL X-Men, Scott Summers, with the financial help of Warren Worthington III, decided to relocate in San Francisco where the people, and mayor, were more accepting.'),
(6,74,"Cooterman's Creek","Cooterman's Creek is a high-tech facility disguised as an abandoned town in the Australian Outback. " ),
(7,76,"Magneto's Island","used as a R&R location for Magneto and the X-Men / New Mutants due to its eldritch nature and eletronic systems, which masked it from the outside world." ),
(8,65,"Manhattan",null),
(9,77,"Sanctum Sanctorum","Also known as the Sanctum Sanctorum, the townhouse has served as the personal residence of Doctor Strange and formerly as the headquarters of the Defenders and the New Avengers.")
(10,78,"Headquarters of the Heroes for Hire",null),
(11,78,"The Rand Building","The Rand Building is home to the Rand Corporation."),
(12,14,"Heart of Heaven","Once every 88 years, during a heavenly convergence, each of the Seven Capital Cities of Heaven occupy the same space and time to create a place called the Heart of Heaven.")
(13,66,"Richmond Riding Academy","served as an unofficial headquarters for the non-team the Defenders.")
(14,79,"Angel's Aerie",'it served as "New" Defenders headquarters, when Beast tried to reorganize the Defenders team.')
(15,65,"Knightwing Restorations Inc. Office",null),
(16,65,"Avengers Mansion","Located at 721 (or 890) Fifth Avenue in New York, this three-story townhouse was originally built in 1932 by industrialist Howard Stark as his Manhattan residence.")
(17,80,"Captain America's townhouse",null),
(18,65,"Stark Tower","was designed by Tony Stark with the intention to serve as a gleaming beacon of modern architecture.")
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





;







