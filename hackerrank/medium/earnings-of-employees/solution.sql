select max(salary * months) as max_earning, count(*) as employee_count
from Employee
where (salary * months)= (
    select max(salary * months)
    from Employee
)
