-- your code goes here
select count(id) as fiction_count
from Books 
where genre == "Fiction"