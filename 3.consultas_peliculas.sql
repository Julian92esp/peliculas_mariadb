-- Muestra el catalogo completo con director, genero y formato

SELECT
    p.titulo,
    p.yr,
    p.duracion,
    d.nombre AS director,
    g.nombre AS genero,
    f.nombre AS formato
FROM
    pelicula p
    JOIN director d ON p.id_director = d.id_director
    JOIN genero g ON p.id_genero = g.id_genero
    JOIN formato f ON p.id_formato = f.id_formato
ORDER BY p.yr DESC;

-- Filtra peliculas por ano concreto

SELECT titulo, yr FROM pelicula WHERE yr = 2017;

-- Lista peliculas de un director especifico

SELECT p.titulo, d.nombre AS director
FROM pelicula p
    JOIN director d ON p.id_director = d.id_director
WHERE
    d.nombre = 'Ridley Scott';

-- Ranking de directores por numero de peliculas

SELECT d.nombre AS director, COUNT(p.id_pelicula) AS total_peliculas
FROM director d
    LEFT JOIN pelicula p ON p.id_director = d.id_director
GROUP BY
    d.id_director,
    d.nombre
ORDER BY total_peliculas DESC;

-- Conteo de peliculas por genero

SELECT g.nombre AS genero, COUNT(p.id_pelicula) AS total
FROM genero g
    LEFT JOIN pelicula p ON p.id_genero = g.id_genero
GROUP BY
    g.id_genero,
    g.nombre
ORDER BY total DESC;

-- Distribucion de peliculas por formato fisico/digital

SELECT f.nombre AS formato, COUNT(p.id_pelicula) AS total
FROM formato f
    LEFT JOIN pelicula p ON p.id_formato = f.id_formato
GROUP BY
    f.id_formato,
    f.nombre
ORDER BY total DESC;

-- Busqueda parcial de peliculas por nombre

SELECT titulo, yr FROM pelicula WHERE titulo LIKE '%Alien%';

-- Top 10 peliculas mas largas

SELECT titulo, duracion
FROM pelicula
ORDER BY duracion DESC
LIMIT 10;

-- Top 10 peliculas mas cortas

SELECT titulo, duracion FROM pelicula ORDER BY duracion ASC LIMIT 10;

-- Estadisticas globales de la base de datos

SELECT
    COUNT(*) AS total_peliculas,
    AVG(duracion) AS duracion_media,
    MIN(yr) AS pelicula_mas_antigua,
    MAX(yr) AS pelicula_mas_reciente
FROM pelicula;

-- Distribucion combinada de genero y formato

SELECT g.nombre AS genero, f.nombre AS formato, COUNT(*) AS total
FROM
    pelicula p
    JOIN genero g ON p.id_genero = g.id_genero
    JOIN formato f ON p.id_formato = f.id_formato
GROUP BY
    g.nombre,
    f.nombre
ORDER BY total DESC;

-- Total de minutos dirigidos por cada director

SELECT d.nombre AS director, SUM(p.duracion) AS minutos_totales
FROM director d
    JOIN pelicula p ON p.id_director = d.id_director
GROUP BY
    d.id_director,
    d.nombre
ORDER BY minutos_totales DESC;