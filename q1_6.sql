use sakila;
select distinct first_name, last_name from customer c inner join payment p on c.customer_id = p.customer_id group by p.customer_id having sum(amount)>200;
