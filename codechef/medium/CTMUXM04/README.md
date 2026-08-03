# CTMUXM04

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

_Description not available._

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-08-03T06:22:27.208Z  

```sql
-- write your code here

alter table StartupPitch
add pitch_date date;

update StartupPitch 
set pitch_date = '2024-05-15'
where pitch_id = 1;

update StartupPitch
set pitch_date = '2024-05-15'
where pitch_id = 2;

update StartupPitch 
set pitch_date = '2024-05-16'
where pitch_id= 3;
```

---

[View on CodeChef](https://www.codechef.com/problems/CTMUXM04)