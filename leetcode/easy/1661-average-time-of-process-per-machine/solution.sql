# Write your MySQL query statement below
select a1.machine_id, a1.timestamp, a2.timestamp
from Activity as a1
INNER JOIN Activity as a2
ON a1.machine_id = a2.machine_id 
AND a1.process_id = a2.process_id 
AND a1.timestamp < a2.timestamp