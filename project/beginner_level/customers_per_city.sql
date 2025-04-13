--2. Find all customers who live in every city.

SELECT COUNT(customer_id) AS customers,
       city
FROM customers
GROUP BY city
ORDER BY COUNT(customer_id) DESC;

 