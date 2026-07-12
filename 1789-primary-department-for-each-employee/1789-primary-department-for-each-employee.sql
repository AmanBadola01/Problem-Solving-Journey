# Write your MySQL query statement below
SELECT DISTINCT employee_id, department_id
FROM Employee
WHERE employee_id IN (
    select employee_id
    FROM Employee
    GROUP BY employee_id
    HAVING count(*) = 1
) OR primary_flag = "Y"