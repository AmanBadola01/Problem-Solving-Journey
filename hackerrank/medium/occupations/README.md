# Occupations

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

[Pivot](https://en.wikipedia.org/wiki/Pivot_table) the *Occupation* column in **OCCUPATIONS** so that each *Name* is sorted alphabetically and displayed underneath its corresponding *Occupation*. The output should consist of four columns (*Doctor*, *Professor*, *Singer*, and *Actor*) in that specific order, with their respective names listed alphabetically under each column.

**Note:** Print **NULL** when there are no more names corresponding to an occupation.


**Input Format**

The **OCCUPATIONS** table is described as follows:

<img src="https://s3.amazonaws.com/hr-challenge-images/12889/1443816414-2a465532e7-1.png" />

*Occupation* will only contain one of the following values: **Doctor**, **Professor**, **Singer** or **Actor**.

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-08-09T07:34:35.143Z  

```sql
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

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/occupations/problem)