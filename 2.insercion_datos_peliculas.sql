--------------------
-- INSERTAR DATOS --
--------------------
----- 19/04/26 -----

-- Tabla DIRECTOR
INSERT INTO
    director (id_director, nombre)
VALUES (1, 'Denis Villeneuve'),
    (2, 'David Fincher'),
    (3, 'Ridley Scott'),
    (4, 'Alfonso Cuaron'),
    (5, 'Lee Unkrich'),
    (6, 'Steven Spielberg'),
    (7, 'Andrew Adamson'),
    (8, 'Chris Miller'),
    (9, 'Mike Mitchell'),
    (10, 'Joel Crawford'),
    (11, 'Matt Reeves'),
    (12, 'Stanley Kubrick'),
    (13, 'Josh Cooley'),
    (14, 'Guillermo del Toro'),
    (15, 'Alejandro Amenabar'),
    (16, 'Ryan Coogler'),
    (17, 'Clay Kaytis'),
    (18, 'Duncan Jones'),
    (19, 'Peter Sohn'),
    (20, 'Toshiyuki Kubooka'),
    (21, 'Yoshihiro Miura'),
    (22, 'Don Coscarelli');

-- Tabla GENERO
INSERT INTO
    genero (id_genero, nombre)
VALUES (1, 'Accion'),
    (2, 'Aventura'),
    (3, 'Animacion'),
    (4, 'Comedia'),
    (5, 'Drama'),
    (6, 'Fantasia'),
    (7, 'Terror'),
    (8, 'Ciencia ficcion'),
    (9, 'Romance'),
    (10, 'Thriller'),
    (11, 'Misterio'),
    (12, 'Crimen'),
    (13, 'Belico'),
    (14, 'Historico'),
    (15, 'Biografico'),
    (16, 'Musical'),
    (17, 'Western'),
    (18, 'Deporte'),
    (19, 'Policiaco'),
    (20, 'Espionaje');

-- Tabla FORMATO
INSERT INTO
    formato (id_formato, nombre)
VALUES (1, 'DVD'),
    (2, 'Blu-ray'),
    (3, 'Blu-ray 4K'),
    (4, 'VHS'),
    (5, 'Digital'),
    (6, 'Streaming'),
    (7, 'IMAX'),
    (8, '3D'),
    (9, 'LaserDisc'),
    (10, 'Betamax');

-- Tabla PELICULA
INSERT INTO
    pelicula (
        id_pelicula,
        titulo,
        yr,
        duracion,
        id_director,
        id_genero,
        id_formato
    )
VALUES (
        1,
        'Blade Runner 2049',
        2017,
        163,
        1,
        8,
        3
    ),
    (
        2,
        'El curioso caso de Benjamin Button',
        2008,
        166,
        2,
        5,
        2
    ),
    (
        3,
        'Gladiator',
        2000,
        155,
        3,
        13,
        3
    ),
    (
        4,
        'Blade Runner',
        1982,
        117,
        3,
        8,
        3
    ),
    (
        5,
        'Alien: el octavo pasajero',
        1979,
        115,
        3,
        7,
        3
    ),
    (
        6,
        'The Batman',
        2022,
        176,
        11,
        1,
        3
    ),
    (
        7,
        'La naranja mecanica',
        1971,
        136,
        12,
        12,
        2
    ),
    (
        8,
        'Pacific Rim',
        2013,
        131,
        14,
        8,
        2
    ),
    (
        9,
        'Mientras dure la guerra',
        2019,
        107,
        15,
        14,
        2
    ),
    (
        10,
        'Alien: Covenant',
        2017,
        122,
        3,
        7,
        2
    ),
    (
        11,
        'Black Panther',
        2018,
        134,
        16,
        1,
        2
    ),
    (
        12,
        'Angry Birds',
        2016,
        97,
        17,
        3,
        2
    ),
    (
        13,
        'Warcraft: El origen',
        2016,
        123,
        18,
        6,
        2
    ),
    (
        14,
        'Prometheus',
        2012,
        124,
        3,
        8,
        2
    ),
    (
        15,
        'Berserk: El huevo del rey conquistador',
        2012,
        76,
        21,
        3,
        2
    ),
    (
        16,
        'Berserk: La batalla de Doldrey',
        2012,
        96,
        21,
        3,
        2
    ),
    (
        17,
        'Berserk: El advenimiento',
        2013,
        110,
        21,
        3,
        2
    ),
    (
        18,
        'El senor de las bestias',
        1982,
        118,
        22,
        2,
        1
    );

--------------------
-- INSERTAR DATOS --
--------------------
----- 28/04/26 -----

INSERT INTO
    director (id_director, nombre)
VALUES (23, 'George Miller'),
    (24, 'Dave Hill'),
    (25, 'Aaron Horvath'),
    (26, 'Todd Phillips');

INSERT INTO
    pelicula (
        id_pelicula,
        titulo,
        yr,
        duracion,
        id_director,
        id_genero,
        id_formato
    )
VALUES (
        19,
        'Mad Max',
        2015,
        120,
        23,
        1,
        2
    ),
    (
        20,
        'Juego de Tronos: Conquista y rebelion',
        2017,
        44,
        24,
        3,
        2
    ),
    (
        21,
        'The Super Mario Bross Movie',
        2023,
        92,
        25,
        3,
        3
    ),
    (
        22,
        'Joker',
        2019,
        122,
        26,
        5,
        2
    );

--------------------
-- INSERTAR DATOS --
--------------------
----- 10/08/26 -----

INSERT INTO
    director (id_director, nombre)
VALUES (27, 'Peter Jackson');

INSERT INTO
    pelicula (
        id_pelicula,
        titulo,
        yr,
        duracion,
        id_director,
        id_genero,
        id_formato
    )
VALUES (
        23,
        'La lista de Schindler',
        1993,
        195,
        6,
        5,
        3
    ),
    (
        24,
        'Coco',
        2017,
        105,
        5,
        3,
        2
    ),
    (
        25,
        'They Shall Not Grow Old',
        2018,
        99,
        27,
        14,
        2
    );