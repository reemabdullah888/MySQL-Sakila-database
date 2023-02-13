use sakila;
select first_name, last_name , city from customer c inner join address a on c.address_id = a.address_id inner join city y on y.city_id = a.city_id where first_name = "Jamie" or first_name = "Jessie" or first_name = "Leslie" order by first_name;
