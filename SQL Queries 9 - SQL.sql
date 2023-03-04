USE sakila ;

#Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TABLE IF NOT EXISTS rentals_may LIKE rental ;

#Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
INSERT INTO rentals_may(rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
SELECT rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update
FROM rental
WHERE rental_date BETWEEN date('2005-05-01') AND date('2005-05-30') ;

#Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TABLE IF NOT EXISTS rentals_june LIKE rental ;

#Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
INSERT INTO rentals_june(rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
SELECT rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update
FROM rental
WHERE rental_date BETWEEN date('2005-06-01') AND date('2005-06-30') ;

#Check the number of rentals for each customer for May.
SELECT customer_id, COUNT(inventory_id) FROM rentals_may
GROUP BY customer_id ;

#Check the number of rentals for each customer for June.
SELECT customer_id, COUNT(inventory_id) FROM rentals_june
GROUP BY customer_id;














