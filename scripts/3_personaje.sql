
CREATE TABLE IF NOT EXISTS marvel.color(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     nombre VARCHAR(256) NOT NULL UNIQUE,
    PRIMARY KEY (id)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS marvel.profesion(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     nombre VARCHAR(256) NOT NULL UNIQUE,
    PRIMARY KEY (id)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS marvel.parafernalia(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     nombre VARCHAR(256) NOT NULL UNIQUE,
    PRIMARY KEY (id)
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS marvel.poder(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     nombre VARCHAR(256) NOT NULL UNIQUE,
    PRIMARY KEY (id)
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS marvel.personaje (
    id INTEGER UNSIGNED AUTO_INCREMENT,
    nombre_real VARCHAR(256) NOT NULL,
    esta_vivo BOOLEAN NULL,
    sexo  ENUM('M','F') NULL,
    PRIMARY KEY (id)
) ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS marvel.competidor (
    id INTEGER UNSIGNED AUTO_INCREMENT,
    id_personaje INTEGER UNSIGNED NOT NULL UNIQUE,
    nombre_original VARCHAR(256) NOT NULL,
    identidad ENUM('publica','anonima') NOT NULL,
    biografia TEXT NULL,
    heroe BOOLEAN NULL,
    otros_alias TEXT NULL,
    altura_1 VARCHAR(256) NOT NULL,
    altura_2 VARCHAR(256) NULL,
    peso_1 VARCHAR(256) NOT NULL,
    peso_2 VARCHAR(256) NULL,
    id_color_pelo  INTEGER UNSIGNED NULL,
    id_color_ojos  INTEGER UNSIGNED NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_personaje) REFERENCES marvel.personaje(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_color_ojos) REFERENCES marvel.color(id) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (id_color_pelo) REFERENCES marvel.color(id) ON DELETE SET NULL ON UPDATE CASCADE
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS marvel.cuadro_habilidad_data(
     id INTEGER UNSIGNED AUTO_INCREMENT,
    id_competidor INTEGER UNSIGNED NOT NULL UNIQUE,
     inteligencia TINYINT UNSIGNED NOT NULL,
     fuerza TINYINT UNSIGNED NOT NULL,
     velocidad TINYINT UNSIGNED NOT NULL,
     resistencia TINYINT UNSIGNED NOT NULL,
     proyeccion_energia TINYINT UNSIGNED NOT NULL,
     habilidad_combate TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_competidor) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE VIEW marvel.cuadro_habilidad AS
SELECT 
    id_competidor ,
     inteligencia ,
     fuerza ,
     velocidad ,
     resistencia ,
     proyeccion_energia ,
     habilidad_combate
FROM marvel.cuadro_habilidad_data
WHERE 
(inteligencia BETWEEN 0 AND 7) AND 
(fuerza  BETWEEN 0 AND 7) AND 
(velocidad  BETWEEN 0 AND 7) AND 
(resistencia  BETWEEN 0 AND 7) AND 
(proyeccion_energia  BETWEEN 0 AND 7) AND 
(habilidad_combate BETWEEN 0 AND 7) 
WITH CHECK OPTION;

