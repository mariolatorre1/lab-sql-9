use sakila;

create table rentals_may (
rental_id int unique not null,
rental_date datetime default null,
inventory_id int default null,
customer_id int default null,
return_date datetime default null,
staff_id int default null,
last_update datetime default null,
constraint primary key (rental_id)
);

insert into rentals_may 
select * from rental
where date_format(convert(rental_date,date), '%m') = 05;


create table rentals_june (
rental_id int unique not null,
rental_date datetime default null,
inventory_id int default null,
customer_id int default null,
return_date datetime default null,
staff_id int default null,
last_update datetime default null,
constraint primary key (rental_id)
);

insert into rentals_june
select * from rental
where date_format(convert(rental_date,date), '%m') = 06;

select customer_id, count(rental_id) from rentals_may
group by customer_id
order by count(rental_id) desc;

select customer_id, count(rental_id) from rentals_june
group by customer_id
order by count(rental_id) desc;

