--1.Find how many payment transactions were greater
--than $5.00
select count(amount) 
from payment
where amount > 5

--2.How many actors have a name that starts with the
--letter P?
select count (actor) 
from actor 
where first_name like 'P%'

--3.How many unique districts are our customers from?
select COUNT(distinct district)
from address

--4.Retrieve the list of names for those distinct districts
--from the previous question
select distinct district
from address

--5.How many films are rated R and have a replacement
--cost between $5 and $15?
select count(film)
from film
where rating = 'R' and replacement_cost < 15 and replacement_cost > 5

--6.How many films have the word ?Truman? somewhere
--in the title?
select count(film)
from film
where title like '%Truman%'

--7.How many payments have an amount greater than
--7.99?
select COUNT(amount)
from payment
where amount > 7.99

--8.How many actors start with the letter D and have at
--least 3 characters in their name?
select count(actor) 
from actor 
where first_name like 'D___%'

--9.How many category_ids do we have - give both the
--name of the category and the category_id?
select category_id, name
from category
group by category_id 
order by name

--Show the distinct store_id from inventory in
--ascending order.
select distinct store_id
from inventory
order by store_id asc
