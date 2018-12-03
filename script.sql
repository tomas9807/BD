DROP DATABASE IF EXISTS marvel;


CREATE DATABASE marvel
DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS marvel.lugar(
     id INTEGER UNSIGNED AUTO_INCREMENT,
    id_padre INTEGER UNSIGNED NULL,
     nombre VARCHAR(256) NOT NULL,
     tipo ENUM('universo','planeta','pais','estado','ciudad','zona'),
    PRIMARY KEY (id),
    FOREIGN KEY (id_padre) REFERENCES marvel.lugar(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS marvel.afiliacion(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     nombre VARCHAR(256) NOT NULL,
   
    PRIMARY KEY (id)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS marvel.afiliacion_lugar(
    id INTEGER UNSIGNED AUTO_INCREMENT,
    id_antes INTEGER UNSIGNED NULL,
    id_base_lugar INTEGER  UNSIGNED NOT NULL,
    id_afiliacion  INTEGER  UNSIGNED NOT NULL,
    nombre VARCHAR(256) NULL,

    PRIMARY KEY (id),
    FOREIGN KEY (id_base_lugar) REFERENCES marvel.lugar(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_afiliacion) REFERENCES marvel.afiliacion(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_antes) REFERENCES marvel.afiliacion_lugar(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS marvel.evento(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     fecha_hora_inicio DATETIME NOT NULL,
    PRIMARY KEY (id)
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS marvel.grupo(
     id INTEGER UNSIGNED AUTO_INCREMENT,
    id_evento INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_evento) REFERENCES marvel.evento(id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS marvel.color(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     nombre  VARCHAR(25) NOT NULL UNIQUE,
    PRIMARY KEY (id)
)ENGINE=INNODB;



CREATE TABLE IF NOT EXISTS marvel.profesion(
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
    biografia MEDIUMTEXT NULL,
    heroe BOOLEAN NULL,
    estado_civil ENUM('soltero','casado'),
    otros_alias TEXT NULL,
    altura_1 VARCHAR(256) NOT NULL,
    altura_2 VARCHAR(256) NULL,
    peso_1 VARCHAR(256) NOT NULL,
    peso_2 VARCHAR(256) NULL,
    id_color_pelo  INTEGER UNSIGNED NULL,
    id_color_ojos  INTEGER UNSIGNED NULL,
    parafernalia TEXT NULL,
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

CREATE TABLE IF NOT EXISTS marvel.parientes_conocidos(
     id_personaje1 INTEGER UNSIGNED NOT NULL,
     id_personaje2 INTEGER UNSIGNED NOT NULL,
     relacion SET ('PADRE','HERMANO') NOT NULL, /* relacion que personaje 1 tiene con personaje 2 */
    PRIMARY KEY (id_personaje1,id_personaje2),
    FOREIGN KEY (id_personaje1) REFERENCES marvel.personaje(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_personaje2) REFERENCES marvel.personaje(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE  TABLE IF NOT EXISTS marvel.aliados(
     id_competidor1 INTEGER UNSIGNED NOT NULL,
     id_competidor2 INTEGER UNSIGNED NOT NULL,
    
    PRIMARY KEY (id_competidor1,id_competidor2),
    FOREIGN KEY (id_competidor1) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_competidor2) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;


CREATE  TABLE IF NOT EXISTS marvel.aliados(
     id_competidor1 INTEGER UNSIGNED NOT NULL,
     id_competidor2 INTEGER UNSIGNED NOT NULL,
    
    PRIMARY KEY (id_competidor1,id_competidor2),
    FOREIGN KEY (id_competidor1) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_competidor2) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE  TABLE IF NOT EXISTS marvel.profesion_competidor(
     id_profesion INTEGER UNSIGNED NOT NULL,
     id_competidor INTEGER UNSIGNED NOT NULL,
    
    PRIMARY KEY (id_profesion,id_competidor),
    FOREIGN KEY (id_profesion) REFERENCES marvel.profesion(id) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY (id_competidor) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;




CREATE  TABLE IF NOT EXISTS marvel.poder_competidor(
     id_poder INTEGER UNSIGNED NOT NULL,
     id_competidor INTEGER UNSIGNED NOT NULL,
     
    PRIMARY KEY (id_poder,id_competidor),
    FOREIGN KEY (id_poder) REFERENCES marvel.poder(id) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY (id_competidor) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE  TABLE IF NOT EXISTS marvel.afiliacion_competidor(
     id_afiliacion INTEGER UNSIGNED NOT NULL,
     id_competidor INTEGER UNSIGNED NOT NULL,
     
    PRIMARY KEY (id_afiliacion,id_competidor),
    FOREIGN KEY (id_afiliacion) REFERENCES marvel.afiliacion(id) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY (id_competidor) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE  TABLE IF NOT EXISTS marvel.afiliacion_competidor(
     id_afiliacion INTEGER UNSIGNED NOT NULL,
     id_competidor INTEGER UNSIGNED NOT NULL,
     activo BOOLEAN NOT NULL,
    PRIMARY KEY (id_afiliacion,id_competidor),
    FOREIGN KEY (id_afiliacion) REFERENCES marvel.afiliacion(id) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY (id_competidor) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE

)ENGINE=INNODB;


CREATE  TABLE IF NOT EXISTS marvel.grupo_competidor(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     id_grupo INTEGER UNSIGNED NOT NULL,
     id_competidor INTEGER UNSIGNED NOT NULL,
     puntos_etapa1 TINYINT UNSIGNED NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_grupo) REFERENCES marvel.grupo(id) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY (id_competidor) REFERENCES marvel.competidor(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;



CREATE  TABLE IF NOT EXISTS marvel.enfrentamiento_data(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     id_padre INTEGER UNSIGNED NULL,
    id_competidor_grupo1 INTEGER UNSIGNED NOT NULL,
    id_competidor_grupo2 INTEGER UNSIGNED NOT NULL,
    fecha_hora_inicio DATETIME NOT NULL,
    tipo_etapa  TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
     FOREIGN KEY (id_padre) REFERENCES marvel.enfrentamiento_data(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_competidor_grupo1) REFERENCES marvel.grupo_competidor(id) ON DELETE RESTRICT ON UPDATE CASCADE,
     FOREIGN KEY (id_competidor_grupo2) REFERENCES marvel.grupo_competidor(id) ON DELETE RESTRICT ON UPDATE CASCADE
    
)ENGINE=INNODB;


CREATE  VIEW  marvel.enfrentamiento AS 
SELECT 
     id_padre ,
    id_competidor_grupo1 ,
    id_competidor_grupo2 ,
    fecha_hora_inicio,
    tipo_etapa
FROM marvel.enfrentamiento_data
WHERE 
    tipo_etapa BETWEEN 1 AND 3
WITH CHECK OPTION;

CREATE  TABLE IF NOT EXISTS marvel.resultado_enfrentamiento(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     id_enfrentamiento INTEGER UNSIGNED NOT NULL,
    id_ganador_de_grupo INTEGER UNSIGNED NULL,
    duracion TIME NOT NULL,
    incremento_poder_individual TINYINT UNSIGNED NULL,
    incremento_poder_afiliacion TINYINT UNSIGNED NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_enfrentamiento) REFERENCES marvel.enfrentamiento_data(id) ON DELETE RESTRICT ON UPDATE CASCADE,
   FOREIGN KEY (id_ganador_de_grupo) REFERENCES marvel.grupo_competidor(id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=INNODB;
