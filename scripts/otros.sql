CREATE TABLE marvel.lugar(
     id INTEGER UNSIGNED AUTO_INCREMENT,
    id_padre INTEGER NULL,
     nombre VARCHAR(256) NOT NULL UNIQUE,
     tipo ENUM('universo','planeta','pais','estado','ciudad'),
    PRIMARY KEY (id),
    FOREIGN KEY (id_padre) REFERENCES marvel.lugar(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE marvel.afiliacion(
     id INTEGER UNSIGNED AUTO_INCREMENT,
    id_base_lugar INTEGER NOT NULL,
     nombre VARCHAR(256) NOT NULL UNIQUE,
     
    PRIMARY KEY (id),
    FOREIGN KEY (id_base_lugar) REFERENCES marvel.lugar(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=INNODB;

CREATE TABLE marvel.evento(
     id INTEGER UNSIGNED AUTO_INCREMENT,
     fecha_hora_inicio DATETIME NOT NULL,
    PRIMARY KEY (id),
)ENGINE=INNODB;


CREATE TABLE marvel.grupo(
     id INTEGER UNSIGNED AUTO_INCREMENT,
    id_evento INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_evento) REFERENCES marvel.evento(id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=INNODB;

