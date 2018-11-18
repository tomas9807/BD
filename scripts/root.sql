
CREATE USER IF NOT EXISTS 'tomas'@'localhost';

DROP DATABASE IF EXISTS marvel;

CREATE DATABASE marvel
DEFAULT CHARSET=utf8;

GRANT ALL ON marvel.* TO 'tomas'@'localhost';

