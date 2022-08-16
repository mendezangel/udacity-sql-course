/*
Order by must always come before the limit clause
The ORDER BY statement allows us to sort our results using the data in any column.

You can use ORDER BY to order more than one column at a time. When you provide a list of columns in an ORDER BY statement,
the sorting occurs using the leftmost column in your list first, then the next column from the left, and so on.

NOTE: ORDER BY sorts from smallest to largest, DESC flips the order.
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

-- Query that displays the order ID, account ID, and total dollar amount for all the orders.
-- Sorted first by the account ID (in ascending order), and then by the total dollar amount (in descending order).
SELECT id, account_id, total
FROM orders
ORDER BY account_id, total DESC; -- for example lets say there's a company with an id of 1, and multiple orders. this will order their orders by their most
-- expensive purchase at the top, and their cheapest purchase at the bottom.

-- Query that displays order.id, account_id, and total sorted by total dollar amount (in descending order), and then by account_id (in ascending order)
SELECT id, account_id, total
FROM orders
ORDER BY total DESC, id;

-- Compare the results of these two queries above. How are the results different when you switch the column you sort on first?
/*
The first query absolutely will first sort by account ids from smallest to largest. THEN after that it will sort those rows based on the
total dollar amount from largest to smallest.
However, the second query will absolutely first sort by dollar amount, with the largest at the top and the smallest at the bottom. Then
if there are any rows that have the exact same dollar amount it will put the one with a lower id above the one with a higher id.
*/