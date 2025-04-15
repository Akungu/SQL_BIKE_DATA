--2. Find all customers who live in every state.

SELECT COUNT(customer_id) AS customers,
       state
FROM customers
GROUP BY state
ORDER BY COUNT(customer_id) DESC;

 