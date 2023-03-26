select * from movies_db.genres;
-- 1-1
INSERT INTO movies_db.genres (name, ranking, active)
VALUES ('Investigación', 13, 1);
-- 1-2
update movies_db.genres
set name = "Investigación Cientifica"
where id=21;
-- 1-3
delete from movies_db.genres where  name = "Investigación Cientifica";
-- 1-4
select * from movies_db.movies;
-- 1-5
select first_name, last_name, rating from movies_db.actors;

-- 1-6
-- select title as titulo from movies_db.series;
alter table movies_db.series 
change title titulo varchar(500);
select titulo from movies_db.series;

select * from movies_db.series;

-- 2-1
select * from movies;
select first_name AS 'Nombre', last_name AS 'Apellido', rating 
from actors where rating > 7.5;
-- 2-2
 select title AS 'Titulo', rating, awards from movies where rating > 7.5 and awards > 2;
 -- 2-3
 select title AS 'Titulo', rating from movies order by rating;
 
 -- 3-1
 select title as 'Titulo' from movies limit 3;
 -- 3-2
 select title AS 'Titulo', rating from movies order by rating desc limit 5;
 -- 3-3 
 select title AS 'Titulo', rating from movies order by rating desc limit 5 offset 6;
 -- 3-4
 select first_name AS 'Nombre', last_name AS 'Apellido' from actors limit 10;
 -- 3-4-a
 select first_name AS 'Nombre', last_name AS 'Apellido' from actors limit 10 offset 29;
 
 -- 4-1
 select title AS 'Titulo', rating from movies where title like '%Harry Potter%';
 -- 4-2
 select first_name AS 'Nombre', last_name AS 'Apellido' from actors where first_name like 'Sam%';
-- 4-3
 select title AS 'Titulo', release_date AS 'Fecha de salida'  from movies where release_date between '2004-01-01' and '2008-12-31';