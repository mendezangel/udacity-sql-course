/*
Order by must always come before the limit clause
The ORDER BY statement allows us to sort our results using the data in any column. 
*/

-- Examples:

-- Query to return the 10 eariliest orders in the orders table.
SELECT id, occurred_at, total_amt_usd
FROM orders
ORDER BY occurred_at
LIMIT 10;

-- Query to return the top 5 orders in terms of largest total_amt_usd.
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5;

-- Query to return the lowest 20 orders in terms of smallest total_amt_usd.
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd
LIMIT 20;