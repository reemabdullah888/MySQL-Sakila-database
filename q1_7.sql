use sakila;
select first_name, last_name from actor where (first_name, last_name) not in (select first_name, last_name from actor a inner join film_actor fa on a.actor_id = fa.actor_id inner join film f on f.film_id
 = fa.film_id where f.rating = "R");

