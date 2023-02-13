use sakila;
select count(film_id) as Total from film where (film_id) not in (select film_id from inventory);
