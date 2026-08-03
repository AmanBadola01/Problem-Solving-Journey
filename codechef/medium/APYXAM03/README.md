# APYXAM03

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

You have just joined a small art gallery as their new database manager. The gallery already has a database table named `Artworks`, and it’s pre-populated with some records. Your responsibility is to manage and update the existing data.

 **Table: `Artworks`** 

```
┌──────┬─────────────┬─────────┬────────────┬────────────┐
│art_id│title        │price    │year_created│is_available│
├──────┼─────────────┼─────────┼────────────┼────────────┤
│ 1    │River Bends  │75000.0  │1882        │ TRUE       │
│ 2    │City Lights  │2500.0   │2021        │ TRUE       │
│ 3    │Mountain Peak│1500.0   │1995        │ TRUE       │
└──────┴─────────────┴─────────┴────────────┴────────────┘

```

Your task is to write sql queries to perform following operations:

- Update the price of the artwork with art_id = 3 to 1750.0.
- Set the is_available status to FALSE for the artwork with art_id = 2.
- Delete any artworks that were created before the year 1950.

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-08-03T06:16:05.385Z  

```sql
-- write your code here

update Artworks
set price = 1750.0
where art_id = 3;

update Artworks
set is_available = 'False'
where art_id = 2;

delete from Artworks
where year_created < 1950;
```

---

[View on CodeChef](https://www.codechef.com/problems/APYXAM03)