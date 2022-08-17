/*
You can think of the WHERE command as filtering the data.
Chart:

Operator                                      Condition                                               SQL example

=, !=, <, <=                                  standard numerical                                      col_name != 4
>, >=                                         operators

BETWEEN...AND...                              num is within range of 2 values (inclusive)             col_name BETWEEN 1.5 AND 10.5

NOT BETWEEN...AND...                          opposite of above

IN(...)                                       num exists in a list                                    col_name IN(2, 4 ,6)

NOT IN(...)                                   opposite of above

LIKE                                          case insensitive exact string comparison                col_name LIKE "abc"

NOT LIKE                                      opposite of above

%                                             used anywhere in a string to match a sequence           col_name LIKE "%AT%"
//                                            of 0 or more chars (only with LIKE and NOT LIKE)        (matches "AT", "ATTIC", "CAT", "BATS", etc)

_                                             used anywhere in a string to match a single char.       col_name LIKE "AN_"
//                                            Only with LIKE and NOT LIKE.                            matches "AND", but not "AN"


NOTE: make sure strings have quotes
*/

-- query that pulls first 5 rows and all columns from orders table taht have a dollar amount of gloss_amt_usd greate than or equal to 1000.
SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
LIMIT 5;

-- query that pulls first 10 rows and all columns from the orders table that have a total_amt_usd less than 500.
SELECT *
FROM orders
WHERE total_amt_usd < 500
LIMIT 10;