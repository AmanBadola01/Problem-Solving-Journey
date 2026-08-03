# APYXAM04

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

You are an intern at a venture capital firm helping to organize a "Pitch Day" event. Fortunately, the database team has already prepared the table for you with the name `StartupPitch`, and it already contains details about the startups that will be presenting.

 **Table: `StartupPitch`** 

```
┌────────┬──────────────┬─────────────────┬──────────────┐
│pitch_id│startup_name  │valuation_million│sector        │
├────────┼──────────────┼─────────────────┼──────────────┤
│ 1      │InnovateAI    │ 150             │AI/ML         │
│ 2      │GreenSolutions│ 50              │Sustainability│
│ 3      │HealthTrack   │ 25              │Healthcare    │
└────────┴──────────────┴─────────────────┴──────────────┘

```

You have to write SQL queries to perform the following tasks:

- Modify the table to add a new column named pitch_date of type DATE.
- Update the records with the following pitch dates:

```
        ┌──────────────────┬──────────────┐
        │ startup_name     │ pitch_date   │
        ├──────────────────┼──────────────┤
        │ InnovateAI       │ 2024-05-15   │
        │ GreenSolutions   │ 2024-05-15   │
        │ HealthTrack      │ 2024-05-16   │
        └──────────────────┴──────────────┘

```

### Expected Output

```
┌────────┬───────────────┬─────────────────┬──────────────┬───────────┐
│pitch_id│startup_name   │valuation_million│  sector      │pitch_date │
├────────┼───────────────┼─────────────────┼──────────────┼───────────┤
│ 1      │ InnovateAI    │ 150             │AI/ML         │2024-05-15 │
│ 2      │ GreenSolutions│ 50              │Sustainability│2024-05-15 │
│ 3      │ HealthTrack   │ 25              │Healthcare    │2024-05-16 │
└────────┴───────────────┴─────────────────┴──────────────┴───────────┘

```

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-08-03T06:22:25.198Z  

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

[View on CodeChef](https://www.codechef.com/problems/APYXAM04)