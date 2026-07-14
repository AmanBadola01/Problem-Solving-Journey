select q1.person_name
from Queue q1 Inner JOin Queue q2
on q1.turn >= q2.turn
group by q1.turn
having SUM(q2.weight) <= 1000
ORDER by SUM(q2.weight) DESC
LIMIT 1