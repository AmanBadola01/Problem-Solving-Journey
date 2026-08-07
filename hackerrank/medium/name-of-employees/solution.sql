/*
Enter your query here.
*/

SELECT NAME 
FROM STUDENTS
WHERE Marks > 75 
order by RIGHT(Name, 3), ID ASC;
