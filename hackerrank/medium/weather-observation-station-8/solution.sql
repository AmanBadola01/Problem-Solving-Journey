/*
Enter your query here.
*/

SELECT distinct CITY
FROM STATION
WHERE  LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u');
