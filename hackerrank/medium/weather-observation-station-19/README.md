# Weather Observation Station 20

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Consider $P_1(a, c)$ and $P_2(b, d)$ to be two points on a 2D plane where $(a, b)$ are the respective minimum and maximum values of *Northern Latitude* (*LAT\_N*) and $(c, d)$ are the respective minimum and maximum values of *Western Longitude* (*LONG\_W*) in **STATION**. 

Query the [Euclidean Distance](https://en.wikipedia.org/wiki/Euclidean_distance) between points $P_1$ and $P_2$ and *format your answer* to display $4$ decimal digits.

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
**Submitted:** 2026-08-18T04:22:22.675Z  

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

[View on HackerRank](https://www.hackerrank.com/challenges/weather-observation-station-19/problem)