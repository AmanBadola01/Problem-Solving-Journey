/*
Enter your query here.
*/

with ctel as (
    select 
        name, 
        Occupation,
        Row_number() over (PARTITION BY Occupation Order by Name) as rn
    from OCCUPATIONS
)
select 
    max(CASE WHEN Occupation = "Doctor" THEN Name end) as Doctor, 
    max(CASE WHEN Occupation = "Professor" THEN Name end) as Professor,
    max(CASE WHEN Occupation = "Singer" THEN Name end) as Singer,
    max(CASE WHEN Occupation = "Actor" THEN Name end) as Actor
from ctel
group by rn
