# Write your MySQL query statement below
select *,
    IF (x+y > z AND y+z > x AND z+x > y, "Yes", "No") as triangle
from Triangle 