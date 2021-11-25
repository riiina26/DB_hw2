drop table public.albums;
drop table artists;

create table if not exists Genres( 
Genre_id serial  primary key,
Genre_name varchar(100) not null
);


create table if not exists Artists(
Artist_id serial primary key,
Name varchar(100) not null,
Genre_id integer references Genres (Genre_id)
);


create table if not exists Albums( 
Album_id serial primary key,
Album_name varchar (100) not null,
Year date,
Artist_id integer references Artists (Artist_id)
);


create table if not exists Tracks( 
Track_id serial primary key,
Title text,
Time time,
Album_id integer references Albums(Album_id)
);

