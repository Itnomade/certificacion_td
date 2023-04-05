CREATE TABLE usuarios(
	id serial primary key,
	nombre VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	password VARCHAR(150) NOT NULL
);

CREATE TABLE categorias(
	id serial primary key,
	nombre VARCHAR(50) NOT NULL
);

CREATE TABLE publicaciones(
	id serial primary key,
	titulo VARCHAR(255) NOT NULL,
	contenido VARCHAR(1000) NOT NULL,
	fecha date NOT NULL,
	id_categoria INT NOT NULL,
	id_usuario INT NOT NULL,
	imagen VARCHAR(255),
	FOREIGN KEY(id_categoria) REFERENCES categorias(id),
	FOREIGN KEY(id_usuario) REFERENCES usuarios(id)
);


CREATE TABLE comentarios(
	id serial primary key,
	contenido VARCHAR(1000) NOT NULL,
	id_usuario INT NOT NULL,
	id_publicacion INT NOT NULL,
	fecha date NOT NULL DEFAULT NOW(),
	FOREIGN KEY(id_usuario) REFERENCES usuarios(id),
	FOREIGN KEY(id_publicacion) REFERENCES publicaciones(id)
);


CREATE TABLE like_dislikes(
	id serial primary key,
	islike boolean,
	id_usuario INT NOT NULL,
	id_publicacion INT NOT NULL,
	FOREIGN KEY(id_usuario) REFERENCES usuarios(id),
	FOREIGN KEY(id_publicacion) REFERENCES publicaciones(id)
);

INSERT INTO categorias(nombre) VALUES('Noticias Nacionales'), ('Noticias internacionales');

INSERT INTO usuarios(nombre, email, password) VALUES('pili', 'pili@gmail.com', '12345'), ('fran', 'fran@gmail.com', '12345');

SELECT * FROM usuarios;
SELECT * from categorias;
SELECT * FROM publicaciones;
SELECT * FROM comentarios;
SELECT * FROM like_dislikes;