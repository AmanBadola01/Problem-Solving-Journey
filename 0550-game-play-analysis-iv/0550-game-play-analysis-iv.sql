select 
    ROUND(
        COUNT(DISTINCT player_id) /
        (SELECT COUNT(DISTINCT player_id) FROM Activity),
        2
    ) as fraction
from Activity
WHERE (player_id, DATE_SUB(event_date, INTERVAL 1 DAY)) IN 
(
    select player_id, min(event_date) as first_login
    from Activity
    group by player_id
)
