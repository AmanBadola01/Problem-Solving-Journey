select class
from Courses
group by class
HAVING count(student) >= 5
