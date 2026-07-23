# Write your MySQL query statement below
select visited_on,
    (   -- 7 day window amount
        SELECT SUM(amount) 
        FROM Customer 
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on , INTERVAL 6 DAY) 
        AND c.visited_on
    ) AS amount ,

    ROUND((  
        SELECT SUM(amount) / 7 
        FROM Customer 
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on , INTERVAL 6 DAY) 
        AND c.visited_on
    ),2) AS average_amount

from Customer c
where visited_on >= (
    select DATE_ADD(MIN(visited_on), INTERVAL 6 DAY)
    from Customer 
)
GROUP BY visited_on 
ORDER BY visited_on ASC