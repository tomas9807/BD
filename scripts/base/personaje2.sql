INSERT INTO Alias(id_competidor,nombre)
VALUES
(1,'Daniel Thomas Rand'),
(1,'Danny Rand'),
(1,'Young Dragon'),
(1,'Cooper Payton'),
(1,'Kung Fu Killer'),
(1,'Hong Kong Phooey'),
(1,'impersonated Daredevi'),
(1,'Kung Fu Killer'),
(1,'impersonated Spider-Man');




INSERT INTO Poder(id,nombre,descripcion)
VALUES
(1,'Chi Augmentation',"Through concentration, Rand can harness his mystical chi to augment his physical and mental capabilities to increased levels."),
(2,'Iron Fist Punch',"By summoning his chi and focusing it into his hand, he can draw upon the superhuman energy derived from the heart of the mystic serpent Shou-Lao and make his fist inhumanly powerful and super humanly resistant to injury and pain on a superhuman scale. "),
(3,'Nervous System Control',"complete control over his nervous system enabling him to deaden himself to pain, resist the effects of drugs or poisons, and slow down the rate at which he bleeds. He also is able pass lie detector tests."),
(4,'Hypnotism'," After obtaining The Book of the Iron Fist from Orson Randall, Rand has learned how to create various illusions and make his foes see what he wants them to see."),
(5,'Mind Fusion'," He can use his power to temporarily fuse his consciousness with another person, resulting in a sharing of knowledge, emotions, and memories."),
(6,'Energy Absorption',"absorbes energy directed at himself and channeled it to augment his own power."),
(7,'Energy Generation',"Iron Fist can project his Chi into a ranged attack, sort of like an energy blast. Rand can also transfer his Chi into other objects to accelerate them or give them more power."),
(8,'Energy Detection'," can use his power to temporarily fuse his consciousness with another person, resulting in a sharing of knowledge, emotions, and memories."),
(9,'Dimensional Travel'," Under certain circumstances, his chi can be focused to create nexus points between dimensions."),
(10,'Heightened Awareness'," Demonstrated the ability to detect a threat to his well-being in his immediate vicinity before they commit the action; such as (Iron Fist Killer)"),
(11,'Enhanced Senses'," has unusually keen eyesight, but it is unclear if it extends to superhuman level. He can focus his hearing so intensely that he can hear sweat rolling down someones face."),
(12,'Organic Webbing'," When he was transported to another dimension together with the Eye of Agamotto, Doctor Strange's mentor, the Ancient One appeared to him."),
(13,'Spider-Sense'," When he was transported to another dimension together with the Eye of Agamotto, Doctor Strange's mentor, the Ancient One appeared to him."),
(14,'Superhuman Abilities'," When he was transported to another dimension together with the Eye of Agamotto, Doctor Strange's mentor, the Ancient One appeared to him."),
(15,'Wall-Crawling'," When he was transported to another dimension together with the Eye of Agamotto, Doctor Strange's mentor, the Ancient One appeared to him.");



INSERT INTO Poder_Competidor(id_competidor,id_poder)
VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,8),
(1,9),
(1,10),
(1,11),
(1,12),
(2,13),
(2,14),
(2,15);

INSERT INTO Habilidad(id,nombre)
VALUES 
(1,'Intelligence'),
(2,'Strength'),
(3,'Speed'),
(4,'Durability'),
(5,'Energy Projection'),
(6,'Fighting Skills');

INSERT INTO Habilidad_Competidor(id_competidor,id_habilidad,valor)
VALUES
(1,1,3),
(1,2,2),
(1,3,2),
(1,4,3),
(1,5,3),
(1,6,6),
(2,1,5),
(2,2,4),
(2,3,3),
(2,4,3),
(2,5,3),
(2,6,4),
(3,1,6),
(3,2,2),
(3,3,2),
(3,4,5),
(3,5,1),
(3,6,3),
(4,1,4),   
(4,2,6),
(4,3,3),
(4,4,7),
(4,5,6),
(4,6,4),
(5,1,4),
(5,2,4),
(5,3,7),
(5,4,5),
(5,5,5),
(5,6,4),
(6,1,3),
(6,2,7),
(6,3,7),
(6,4,7),
(6,5,6),
(6,6,3);





INSERT INTO Afiliacion_Personaje(id_competidor,id_personaje,id_base_afiliacion)
VALUES
(1,null,3),
(1,null,6),
(1,null,7),
(1,null,8),
(1,null,5),
(1,null,9),
(1,null,10),
(1,null,11),
(1,null,12),
(1,null,13),
(1,null,14),
(1,null,15),
(1,null,16),
(1,null,17);

INSERT INTO Relacion (
id_competidor1,
id_competidor2,
id_personaje1,id_personaje2,
tipo_relacion)
VALUES
(1,null,7,null,'tio'),
(2,null,5,null,'tio'),
(2,null,6,null,'tio');


INSERT INTO Parafernalia (id,nombre,descripcion,tipo)
VALUES
(1,"Traje Noir","Peter diseño su propio traje con el uniforme que usaba su tío Ben en la Primera Guerra Mundial.","armadura"),
(2,"Revolver","Peter bajo su identidad de Spider-Man utiliza armas de fuego para su lucha contra el crimen, teniendo poco reparo en usarlas cuando es necesario.","arma")
;

INSERT INTO Parafernalia_Competidor(id_competidor,
id_parafernalia)
VALUES
(2,1),
(2,2);
