create table if not exists musicians (
	id SERIAL primary key,
	genre_id integer references genres(id),
	musician varchar(60));

create table if not exists albums (
	id serial primary key,
	album_name varchar(60) not null,
	album_year integer check(album_year > 0 and album_year <3000),
	musician_id integer references musicians(id));

create table if not exists songs (
	id SERIAL primary key,
	song_name varchar(60) not null,
	duration integer check(duration > 0),
	album_id integer references albums(id));

create table if not exists genres (
	id SERIAL primary key,
	genre_name varchar(60) not null);
