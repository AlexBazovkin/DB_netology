CREATE TABLE IF NOT EXISTS genres (
	id serial PRIMARY KEY,
	name varchar(30) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS artists (
	id serial PRIMARY KEY,
	name varchar(50) NOT NULL UNIQUE,
	genres_id integer REFERENCES genres(id)
);

CREATE TABLE IF NOT EXISTS albums (
	id serial PRIMARY KEY,
	artist_id integer REFERENCES artists(id),
	name varchar(50) not null unique,
	year integer
);

CREATE TABLE IF NOT EXISTS tracks (
	id serial PRIMARY KEY,
	name varchar(100) NOT NULL UNIQUE,
	duration integer,
	album_id integer REFERENCES albums(id)
);
