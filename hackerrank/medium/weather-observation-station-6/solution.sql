/*
Enter your query here.
*/

select CITY 
FROM STATION
WHERE LEFT(LOWER(CITY), 1) IN ('a', 'e', 'i', 'o', 'u');
