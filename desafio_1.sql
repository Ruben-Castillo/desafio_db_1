CREATE DATABASE posts;
\c posts
CREATE TABLE post(
    id SERIAL,
    nombre_usuario VARCHAR(25),
    fecha_creacion DATE,
    contenido VARCHAR(255),
    descripcion VARCHAR(255)
);
INSERT INTO post (nombre_usuario,fecha_creacion,contenido,descripcion) VALUES('Pamela', '2020-09-19','Hola','Saludo');
INSERT INTO post (nombre_usuario,fecha_creacion,contenido,descripcion) VALUES('Pamela', '2020-09-19','Adios','Despedida');
INSERT INTO post (nombre_usuario,fecha_creacion,contenido,descripcion) VALUES('Carlos', '2020-09-19','Hola','Saludo');
ALTER TABLE post
ADD titulo VARCHAR(50);
UPDATE post SET titulo='mi primer post' WHERE id=1;
UPDATE post SET titulo='mi segundo post' WHERE id=2;
UPDATE post SET titulo='mi primer post' WHERE id=3;
INSERT INTO post (nombre_usuario,fecha_creacion,contenido,descripcion,titulo) VALUES('Pedro', '2020-09-19','Hola','Saludo','mi primer post');
INSERT INTO post (nombre_usuario,fecha_creacion,contenido,descripcion,titulo) VALUES('Pedro', '2020-09-19','Adios','Despedida', 'mi segundo post');
DELETE FROM post WHERE nombre_usuario='Carlos';

ALTER TABLE post ADD PRIMARY KEY (id);

CREATE TABLE comentarios(
id SERIAL,
fecha_hora_creacion TIMESTAMP,
contenido VARCHAR(255),
id_post INT,
FOREIGN KEY (id_post) REFERENCES post(id)
);
INSERT INTO comentarios (fecha_hora_creacion,contenido,id_post) VALUES('2020-09-19 12:42:00','Wena!',1);
INSERT INTO comentarios (fecha_hora_creacion,contenido,id_post) VALUES('2020-09-19 12:43:00','Hi!',1);
INSERT INTO comentarios (fecha_hora_creacion,contenido,id_post) VALUES('2020-09-19 12:40:00','Wena compare!',4);
INSERT INTO comentarios (fecha_hora_creacion,contenido,id_post) VALUES('2020-09-19 12:41:00','Todo bien perrit??',4);
INSERT INTO comentarios (fecha_hora_creacion,contenido,id_post) VALUES('2020-09-19 12:42:00','Bien y tú?',4);
INSERT INTO comentarios (fecha_hora_creacion,contenido,id_post) VALUES('2020-09-19 12:45:00','Fino po perro, cuando unas chelits? xd',4);

INSERT INTO post (nombre_usuario,fecha_creacion,contenido,descripcion,titulo) VALUES('Margarita', '2020-09-19','Hola','Saludo','mi primer post');
INSERT INTO comentarios (fecha_hora_creacion,contenido,id_post) VALUES('2020-09-19 12:42:00','Qué sucede?',6);
INSERT INTO comentarios (fecha_hora_creacion,contenido,id_post) VALUES('2020-09-19 12:44:00','Na po, pura cuarentena',6);
INSERT INTO comentarios (fecha_hora_creacion,contenido,id_post) VALUES('2020-09-19 12:45:00','xd, qué hiciste pal 18?',6);
INSERT INTO comentarios (fecha_hora_creacion,contenido,id_post) VALUES('2020-09-19 12:46:00','puro estudiar bases de datos y hacer desafios :)',6);
INSERT INTO comentarios (fecha_hora_creacion,contenido,id_post) VALUES('2020-09-19 12:47:00','que sad :(',6);
