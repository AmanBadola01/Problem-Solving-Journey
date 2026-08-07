/*
Enter your query here.
*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE RIGHT(LOWER(CITY), 1) NOT IN ('a', 'e', 'i', 'o', 'u') or 
      LEFT(LOWER(CITY), 1) NOT IN ('a', 'e', 'i', 'o', 'u');
