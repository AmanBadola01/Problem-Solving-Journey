# Write your MySQL query statement below

SELECT p.product_name, 
       SUM(unit) as unit

FROM Products p
INNER JOIN Orders o
on p.product_id = o.product_id
WHERE MONTH(o.order_date) = '2' AND YEAR(o.order_date) = '2020'
GROUP BY product_name
HAVING SUM(unit) >= 100