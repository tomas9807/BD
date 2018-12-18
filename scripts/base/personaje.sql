INSERT INTO Personaje_NoCompetidor 
(id,nombre_original,nombre_real,apellido_real,fallecido,genero,id_universo,id_lugar_nacimiento)
VALUES 
(1,'Major John Richards','John','Richards',null,'M',1,22),
(2,null,'Ted','Richards',true,'M',1,22),
(3,'The Warlord','Nathaniel',' Richards',false,'M',1,22),
(4,null,'Evelyn',' Richards',false,'F',1,22), /*por continuar */
(5,null,'May',' Parker',null,'F',6,22), 
(6,null,'Benjamin',' Parker',true,'M',6,22), /*por continuar */
(7,'Yu-Ti','Nu','An',true,'M',1,99); /*por continuar */


INSERT INTO Personaje_Competidor
(id,
nombre_original,
nombre_real,
apellido_real,
biografia,
identidad,
moralidad,
altura,
altura_opcional,
peso,
peso_opcional,
estado_civil,
genero,
color_ojos_id,
color_pelo_id,
id_universo,
id_lugar_nacimiento
)
VALUES


(1,
'Iron Fist',
'Daniel',
'Rand',
"is a fictional superhero appearing in American comic books published by Marvel Comics. Created by Roy Thomas and Gil Kane, Iron Fist first appeared in Marvel Premiere #15 (May 1974). The character is a practitioner of martial arts and the wielder of a mystical force known as the Iron Fist, which allows him to summon and focus his chi. He starred in his own solo series in the 1970s, and shared the title Power Man and Iron Fist for several years with Luke Cage, partnering with Cage to form the superhero team Heroes for Hire. The character has starred in numerous solo titles since, including The Immortal Iron Fist, which expanded on his origin story and the history of the Iron Fist.",
'anonima',
'heroe',
'1.80',
null,
'79',
null,
'soltero',
'M',
1,
3,
1,
null
),

(2,
'The Spider-Man',
'Peter',
'Parker',
"Peter Parker was raised by his paternal aunt and uncle, May and Ben Parker, during the Great Depression. Peter was raised with the belief of good triumphing over evil and was supportive of his aunt and uncle's activism.
Peter tragically discovered the mutilated body of his uncle Ben, killed in retaliation by one of New York City's businessmen for organizing a strike on sweatshops. The murder of his uncle by the Goblin drove Peter's resolve to continue to seek justice. While helping May at a rally in a Hooverville, they encountered a violent response from the Enforcers. Fortunately, the two were saved by Ben Urich. Subsequently, Peter became Urich's protege for the Daily Bugle and explored the dire situation of New York City's denizens, especially those under the threat of the Goblin. After Peter mistakenly received a tip-off meant for Urich, he ventured to a warehouse where the Goblin’s men were unloading a shipment of stolen antiques.",
'anonima',
'heroe',
'1.80',
null,
'79',
null,
'soltero',
'M',
7,
7,
6,
96
),

(3,
'Mister Fantastic',
'Reed',
'Richards',
"Reed Richards was born in Central City, California the only son of wealthy physicist Nathaniel Richards and his wife Evelyn, was a child prodigy with special aptitude in mathematics, physics, and mechanics. Evelyn died when Reed was seven",
'publica',
'heroe',
'1.90',
null,
'82',
null,
'soltero',
'M',
7,
7,
1,
113
),



(4,
'Ultron',
'Ultron',
null,
"Ultron-1 was constructed by Dr. Hank Pym of the Avengers as the famed scientist/adventurer was experimenting in high-intelligence robotics. Ultron became sentient and rebelled, hypnotizing Pym and brainwashing him into forgetting that Ultron had ever existed. He immediately began improving upon his rudimentary design, quickly upgrading himself several times from Ultron-2, Ultron-3 and Ultron-4, until finally becoming Ultron-5.",
'publica',
'villano',
'1.90',
null,
'243',
null,
'soltero',
'M',
5,
null,
1,
97
),

(5,
'Kang the Conqueror',
'Nathaniel',
'Richards',
"Nathaniel Richards was born in the 30th century of Earth-6311, a reality where humanity never went into the dark ages. After centuries of advancement and warfare, peace was brought to the land by a time-traveller from Earth-616 named Nathaniel Richards. Because Richards brought peace to this war-torn future, he was known as the legendary benefactor.[10] The Nathaniel Richards born to this reality is said to be a descendant of the Benefactor through Reed Richards, although other records also indicate that he may also be a descendant of the Latverian monarch known as Dr. Doom.[11] At the age of 16, intervention from his future self, as Kang the Conqueror, resulted in young Nathaniel to try and prevent his eventual transformation in Kang, briefly becoming the young hero known as Iron Lad.",
'anonima',
'villano',
'1.90',
null,
'104',
null,
'soltero',
'M',
7,
7,
16,
null
),

(6,
'Hela',
'Hela',
null,
"Hela was allegedly daughter of the Asgardian god of mischief, Loki[11] and of the sorceress giantess Angerboda.The three Asgardian goddesses of fate, the Norns, are said to have warned the Asgardian gods that Hela would prove to be a great danger to them. Odin, ruler of Asgard, decreed that Hela would become goddess and ruler of the spirits of the dead on the day of her maturity.",
'publica',
'villano',
'2.1',
null,
'227',
null,
'casado',
'F',
4,
8,
1,
null
)
;