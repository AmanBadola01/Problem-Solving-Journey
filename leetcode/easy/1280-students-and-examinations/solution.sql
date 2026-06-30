-- select s.student_id, s.student_name, count(e.subject_name) as attended_exams 
-- from Students s
-- Left Join Examinations e
-- on s.student_id = e.student_id 
-- group by s.student_id

select s.student_id, s.student_name, sub.subject_name, count(e.subject_name) as attended_exam
from Students s
Cross Join Subjects sub
Left Join Examinations e
ON s.student_id = e.student_id AND sub.subject_name = e.subject_name 
Group By s.student_id , s.student_name, sub.subject_name
Order By student_id, subject_name