-------------------------
-- CREACION BBDD (3FN) --
-------------------------      ----- MariaDB -----

-- Crear la base de datos solo si no existe
CREATE DATABASE IF NOT EXISTS peliculas
-- Definir el juego de caracteres (charset) para soportar todos los caracteres Unicode
CHARACTER SET utf8mb4
-- Definir como se comparan y ordenan los caracteres (collation)
-- utf8mb4_general_ci: comparacion general, case-insensitive (mayusculas/minusculas se consideran iguales)
COLLATE utf8mb4_general_ci;

-- Usar la base de datos para ir introduciendo las tablas
USE peliculas;

-- Tabla DIRECTOR
CREATE TABLE director (
    id_director INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
) ENGINE = InnoDB;
-- ENGINE=InnoDB: Define el motor que soporta transacciones y claves foraneas (esencial para MariaDB)

-- Tabla GENERO
CREATE TABLE genero (
    id_genero INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

-- Tabla FORMATO
CREATE TABLE formato (
    id_formato INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

-- Tabla PELICULA
CREATE TABLE pelicula (
    id_pelicula INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    yr INT NOT NULL,
    duracion INT NOT NULL,
    id_director INT, -- PK de la tabla director
    id_genero INT, -- PK de la tabla genero
    id_formato INT, -- PK de la tabla formato

-- Clave foranea hacia director
-- ON DELETE SET NULL  -> Si borras el director, la pelicula queda sin director (id_director = NULL)
-- ON UPDATE CASCADE    -> Si cambias el id del director, se actualiza automaticamente en esta tabla
-- CONSTRAINT: restriccion aplicada a la tabla
-- fk_director: nombre de la clave foranea usado para referirse a esa relacion facilmente (id unico)

CONSTRAINT fk_director
        FOREIGN KEY (id_director)
        REFERENCES director(id_director)
        ON DELETE SET NULL
        ON UPDATE CASCADE,

    CONSTRAINT fk_genero
        FOREIGN KEY (id_genero)
        REFERENCES genero(id_genero)
        ON DELETE SET NULL
        ON UPDATE CASCADE,

    CONSTRAINT fk_formato
        FOREIGN KEY (id_formato)
        REFERENCES formato(id_formato)
        ON DELETE SET NULL
        ON UPDATE CASCADE

) ENGINE=InnoDB;