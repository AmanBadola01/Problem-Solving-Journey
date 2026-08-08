/*
Enter your query here.
*/

select concat(name, '(',left(Occupation, 1), ')')
from OCCUPATIONS
order by name;

select 
concat("There are a total of ",count(Occupation)," ",lower(Occupation), 's.')
from OCCUPATIONS
group by Occupation
order by count(Occupation), Occupation;
