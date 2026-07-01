select c1.id, c1.movie, c1.description, c2.rating
from Cinema c1
Inner Join Cinema c2
ON c1.id = c2.id
where (c1.id % 2) != 0 AND c2.description  != "boring"
ORDER BY (c2.rating) DESC
