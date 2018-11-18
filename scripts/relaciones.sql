CREATE TABLE marvel.parientes_conocidos(
     id_personaje1 INTEGER UNSIGNED NOT NULL,
     id_personaje2 INTEGER UNSIGNED NOT NULL,
     relacion SET ('PADRE','HERMANO') NOT NULL /* relacion que personaje 1 tiene con personaje 2 */
    PRIMARY KEY (id_personaje1,id_personaje2),
    FOREIGN KEY (id_personaje1,id_personaje2) REFERENCES marvel.personaje(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE marvel.aliados(
     id_competidor1 INTEGER UNSIGNED NOT NULL,
     id_competidor2 INTEGER UNSIGNED NOT NULL,
    
    PRIMARY KEY (id_competidor1,id_competidor2),
    FOREIGN KEY (id_competidor1,id_competidor2) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;


CREATE TABLE marvel.aliados(
     id_competidor1 INTEGER UNSIGNED NOT NULL,
     id_competidor2 INTEGER UNSIGNED NOT NULL,
    
    PRIMARY KEY (id_competidor1,id_competidor2),
    FOREIGN KEY (id_competidor1,id_competidor2) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE marvel.profesion_competidor(
     id_profesion INTEGER UNSIGNED NOT NULL,
     id_competidor INTEGER UNSIGNED NOT NULL,
    
    PRIMARY KEY (id_profesion,id_competidor),
    FOREIGN KEY (id_profesion) REFERENCES marvel.profesion(id) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY (id_competidor) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE,
)ENGINE=INNODB;

CREATE TABLE marvel.poder_competidor(
     id_poder INTEGER UNSIGNED NOT NULL,
     id_competidor INTEGER UNSIGNED NOT NULL,
     
    PRIMARY KEY (id_poder,id_competidor),
    FOREIGN KEY (id_poder) REFERENCES marvel.poder(id) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY (id_competidor) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE,
)ENGINE=INNODB;

CREATE TABLE marvel.afiliacion_competidor(
     id_afiliacion INTEGER UNSIGNED NOT NULL,
     id_competidor INTEGER UNSIGNED NOT NULL,
     
    PRIMARY KEY (id_afiliacion,id_competidor),
    FOREIGN KEY (id_afiliacion) REFERENCES marvel.afiliacion(id) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY (id_competidor) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE,
)ENGINE=INNODB;

CREATE TABLE marvel.afiliacion_competidor(
     id_afiliacion INTEGER UNSIGNED NOT NULL,
     id_competidor INTEGER UNSIGNED NOT NULL,
     activo BOOLEAN NOT NULL,
    PRIMARY KEY (id_afiliacion,id_competidor),
    FOREIGN KEY (id_afiliacion) REFERENCES marvel.afiliacion(id) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY (id_competidor) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE,

)ENGINE=INNODB;


CREATE TABLE marvel.grupo_competidor(
     id_grupo INTEGER UNSIGNED NOT NULL,
     id_competidor INTEGER UNSIGNED NOT NULL,
     puntos_etapa1 TINYINT UNSIGNED NULL,
    PRIMARY KEY (id_grupo,id_competidor),
    FOREIGN KEY (id_grupo) REFERENCES marvel.grupo(id) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY (id_competidor) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE,
)ENGINE=INNODB;



CREATE TABLE marvel.enfrentamiento(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     id_padre INTEGER NULL,
    id_competidor_de_grupo1 INTEGER NOT NULL,
    id_competidor_de_grupo2 INTEGER NOT NULL,
    fecha_hora_inicio DATETIME NOT NULL,
    tipo_etapa ENUM(1,2,3) NOT NULL,
     FOREIGN KEY (id_padre) REFERENCES marvel.enfrentamiento(id) ON DELETE RESTRICT ON UPDATE CASCADE
    FOREIGN KEY (id_competidor_grupo1,id_competidor_grupo2) REFERENCES marvel.grupo_competidor(id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE marvel.resultado_enfrentamiento(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     id_enfrentamiento INTEGER NOT NULL,
    id_ganador_de_grupo INTEGER NOT NULL,
    duracion TIME NOT NULL,
    incremento_poder_individual TINYINT UNSIGNED NULL,
    incremento_poder_afiliacion TINYINT UNSIGNED NULL,
    FOREIGN KEY (id_enfrentamiento) REFERENCES marvel.enfrentamiento(enfrentamiento) ON DELETE RESTRICT ON UPDATE CASCADE
   FOREIGN KEY (id_ganador_de_grupo) REFERENCES marvel.grupo_competidor(id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=INNODB;
