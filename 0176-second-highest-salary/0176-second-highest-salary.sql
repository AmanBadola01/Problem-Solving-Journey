# Write your MySQL query statement below
-- select MAX(e2.salary) as SecondHighestSalary 
-- from Employee e1
-- INNER JOIN Employee e2
-- on e1.salary > e2.salary

# Another Approach  -> Using sub query
-- select MAX(salary) as SecondHighestSalary 
-- from employee
-- where salary < (
--     select max(salary)
--     from Employee
-- )

# Another approach -> using limit and offset function 
SELECT(
    select distinct(salary)
from Employee
order by salary desc
limit 1 offset 1
)  as SecondHighestSalary 