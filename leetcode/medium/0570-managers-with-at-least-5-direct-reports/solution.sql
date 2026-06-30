select e1.name
from Employee e1
LEFT JOIN Employee e2
on e1.id = e2.id 
