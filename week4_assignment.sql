-- Week 4 Database Assignment: Advanced SQL Queries and Aggregations

-- Question 1: Total payment amount for each payment date (Top 5 latest)
SELECT payment_date, SUM(amount) AS total_amount
FROM payments
GROUP BY payment_date
ORDER BY payment_date DESC
LIMIT 5;

-- Question 2: Average credit limit of each customer grouped by name and country
SELECT customer_name, country, AVG(credit_limit) AS average_credit_limit
FROM customers
GROUP BY customer_name, country;

-- Question 3: Total price of products ordered grouped by product code and quantity ordered
SELECT product_code, quantity_ordered, SUM(quantity_ordered * price_each) AS total_price
FROM orderdetails
GROUP BY product_code, quantity_ordered;

-- Question 4: Highest payment amount for each check number
SELECT check_number, MAX(amount) AS highest_amount
FROM payments
GROUP BY check_number;
