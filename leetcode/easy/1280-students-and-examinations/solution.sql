select s.student_id, s.student_name, count(e.subject_name)
from Students s
Left Join Examinations e
on s.student_id = e.student_id 
group by s.student_id