
CREATE TABLE marvel.color(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     nombre VARCHAR(256) NOT NULL UNIQUE
    PRIMARY KEY (id),
)ENGINE=INNODB;

CREATE TABLE marvel.profesion(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     nombre VARCHAR(256) NOT NULL UNIQUE
    PRIMARY KEY (id),
)ENGINE=INNODB;

CREATE TABLE marvel.poder(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     nombre VARCHAR(256) NOT NULL UNIQUE
    PRIMARY KEY (id),
)ENGINE=INNODB;


CREATE TABLE marvel.personaje (
    id INTEGER UNSIGNED AUTO_INCREMENT,
    nombre_real VARCHAR(256) NOT NULL,
    esta_vivo BOOLEAN NULL,
    sexo  ENUM('M','F') NULL, 
) ENGINE=INNODB;


CREATE TABLE marvel.competidor (
    id INTEGER UNSIGNED AUTO_INCREMENT,
    id_personaje INTEGER NOT NULL UNIQUE,
    nombre_original VARCHAR(256) NOT NULL,
    identidad ENUM('publica','anonima') NOT NULL,
    biografia TEXT NULL,
    heroe BOOLEAN NULL,
    otros_alias TEXT NULL,
    altura_1 VARCHAR(256) NOT NULL,
    altura_2 VARCHAR(256) NULL,
    peso_1 VARCHAR(256) NOT NULL,
    peso_2 VARCHAR(256) NULL,
    parafernalia TEXT NULL,
    id_color_pelo  INTEGER NULL,
    id_color_ojos  INTEGER NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_personaje) REFERENCES marvel.personaje(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_color_ojos,id_color_pelo) REFERENCES marvel.color(id) ON DELETE SET NULL ON UPDATE CASCADE,
 
)ENGINE=INNODB;

set @rango_habilidades = ENUM (1,2,3,4,5,6,7) NULL;
CREATE TABLE marvel.cuadro_habilidad(
     id INTEGER UNSIGNED AUTO_INCREMENT,
    id_competidor INTEGER NOT NULL UNIQUE,
     inteligencia @rango_habilidades,
     fuerza @rango_habilidades,
     velocidad @rango_habilidades,
     resistencia @rango_habilidades,
     proyeccion_energia @rango_habilidades,
     habilidad_combate @rango_habilidades,
    PRIMARY KEY (id),
    FOREIGN KEY (id_competidor) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;

