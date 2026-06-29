# Write your MySQL query statement below
select a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp), 3) as processing_time 
from Activity as a1
INNER JOIN Activity as a2
ON a1.machine_id = a2.machine_id 
AND a1.process_id = a2.process_id 
AND a1.timestamp < a2.timestamp
GROUP BY machine_id