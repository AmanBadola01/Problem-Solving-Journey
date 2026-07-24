# Write your MySQL query statement below
select 
    d.name as Department,
    e1.name as Employee,
    e1.salary as salary
from Employee e1
Inner JOin Department d
on e1.departmentId = d.id
WHERE 3 > (
    SELECT count(DISTINCT(e2.salary))
    from Employee e2
    where e2.salary > e1.salary
    AND e1.departmentId = e2.departmentId
)