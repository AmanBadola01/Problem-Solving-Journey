/*
Enter your query here.
*/

WITH temp as (
    select LAT_N, 
    ROW_NUMBER() over (ORDER BY LAT_N) as rn,
    count(*) over() as total
    from STATION
)

select round(avg(LAT_N), 4) as lat_median
from temp 
where rn in (
    FLOOR((total + 1) /2), CEIL((total + 1) / 2)
    )
