# Weather Observation Station 20

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

A *[median](https://en.wikipedia.org/wiki/Median)* is defined as a number separating the higher half of a data set from the lower half. Query the *median* of the *Northern Latitudes* (*LAT\_N*) from **STATION** and round your answer to $4$ decimal places. 


**Input Format**

The **STATION** table is described as follows:

<img src="https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg" title="Station.jpg" />

where *LAT\_N* is the northern latitude and *LONG\_W* is the western longitude. 

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-08-18T04:22:06.312Z  

```sql
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

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/weather-observation-station-20/problem)