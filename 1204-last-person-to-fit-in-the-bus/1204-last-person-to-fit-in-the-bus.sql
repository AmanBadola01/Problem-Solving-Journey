-- select q1.person_name
-- from Queue q1 Inner JOin Queue q2
-- on q1.turn >= q2.turn
-- group by q1.turn
-- having SUM(q2.weight) <= 1000
-- ORDER by SUM(q2.weight) DESC
-- LIMIT 1

select person_name
from (
    select person_name, 
    turn,
    SUM(weight) over (order BY turn) as total_weight 
    from Queue
) t
where total_weight <= 1000
order by turn DESC
limit 1

