use sakila;
select name as Category, count(*) as Total from category c inner join film_category f on c.category_id = f.category_id group by name ;
