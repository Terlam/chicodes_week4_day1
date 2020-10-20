-- Hello World SQL Query, SELECT all records from actor table
SELECT *
FROM actor;

-- Query for first_name and last_name in the actor table
SELECT first_name,last_name
FROM actor;

-- Query for a first_name that equals Nick using the WERE clause
SELECT first_name,last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for a first_name that is equal to Nick using the LIKE and WHERE clause
SELECT first_name,last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Query for all first_name data that starts with a J using the LIKE and WHERE clauses -- using the wild card
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%';

-- Query for all first_name data that starts with K and has 2 letters after using LIKE and WHERE clauses -- using underscore or character count
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'K__';

-- Query for all first_name data that starts with a K and ends with th
-- using the LIKE and WHERE clauses --using BOTH wildcard AND underscore
SELECT first_name,last_name,actor_id
FROM actor
WHERE first_name LIKE 'K__%th';

-- Comparing operators are:
-- Greater Than (>) -- Less Than (<)
-- Greater or Equal (>=) -- Less or Equal (<=)
-- Not Equal(<>)

-- Explore Data with SELECT ALL Query (Specific to changing into new table)
SELECT *
FROM payment;

-- Query for data that shows customers who paid
-- an amount GREATER THAN $2
SELECT customer_id,amount
FROM payment
WHERE amount > 2.00;

-- Query for data that shows customers who paid
-- an amount LESS THAN $7.99
SELECT customer_id,amount
FROM payment
WHERE amount < 7.99;

-- Query for data that shows customers who paid
-- an amount LESS THAN or EQUAL to $7.99
SELECT customer_id,amount
FROM payment
WHERE amount <= 7.99;

-- Query for data that shows customers who paid
-- an amount GREATER THAN or EQUAL to $2.00
SELECT customer_id,amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount ASC;

-- Query for data that shows customers who paid
-- an amount NOT EQUAL to $0.00
-- Ordered in DESCENDING Order
SELECT customer_id,amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;

-- SQL Aggregations => SUM(), AVG(), COUNT(), MIN(), MAX()

--Query to display sum of amounts paid that are greater than $5.99

SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

--Query to display average of amounts paid that are greater than $5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the count of amounts payed that are grater thatn $5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the count of DISTINCT amounts paid that are greater than %5.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

--Query to display min amount greater than $7.99
SELECT MIN(amount) as Min_num_payments
FROM payment
WHERE amount > 7.99;

--Query to display max amount greater than $7.99
SELECT MAX(amount) as Min_num_payments
FROM payment
WHERE amount > 7.99;

-- Query to display all amounts (quick demo of groupby)
SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

-- Query to explore the data inside of the customer table
SELECT *
FROM customer;

-- Query to display customer_ids that show up less than 5 times
-- Grouping by the customer's email
SELECT COUNT(customer_id),email
FROM customer
WHERE email LIKE 'j__.w%'
GROUP BY email;


-- Question 1
-- Answer: Two actors
SELECT first_name,last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';

-- Question 2
-- Answer: 5607 payments
SELECT COUNT(payment)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Question 3
-- Answer: Brooklyn Desert
SELECT COUNT(DISTINCT inventory_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY film_id desc;

SELECT *
FROM film;

-- Question 4
-- Answer: 0
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William';


-- Question 5
-- Answer: Mike
SELECT COUNT(rental_id), staff_id
FROM rental
GROUP BY staff_id
ORDER BY staff_id;

SELECT *
FROM staff;

-- Question 6
-- Answer: 378
SELECT COUNT(DISTINCT district)
FROM address;

-- Question 7
-- Answer: Lambs Cincinatti 
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT desc;

SELECT title, film_id
FROM film
WHERE film_id = '508';

-- Question 8
-- Answer: 326
SELECT COUNT(DISTINCT customer_id), store_id
FROM customer
WHERE store_id = 1
GROUP BY store_id;

-- Question 9
-- Answer:
SELECT *
FROM payment;

-- Question 10
-- Answer: 5 distinct ratings, PG-13 has the most movies
SELECT COUNT(film_id), rating
FROM film
GROUP BY rating
ORDER BY rating;