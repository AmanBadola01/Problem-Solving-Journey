select b.id
from Weather as a
INNER JOIN Weather as b
WHERE DATEDIFF(a.recordDate, b.recordDate) =1 
AND b.temperature  > a.temperature 