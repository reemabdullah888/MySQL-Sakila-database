use sakila;
select sum(total_) as Total from (select first_name, count(*) as total_ from (select first_name, last_name, count(*) from actor group by first_name, last_name having count(*) = 1 ) as temporary group by first_name having count(*) >1 ) as final_result;


