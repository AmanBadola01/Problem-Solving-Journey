# CTMUXM02

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

_Description not available._

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-08-03T06:10:33.187Z  

```sql
-- write your code here

create table WorkshopSignup(
    unique_id int primary key, 
    email varchar Not null, 
    workshop_type varchar(50) check (workshop_type in ('pottery', 'coding')),
    signup_date date
);

insert into WorkshopSignup
values (1, 'bob@example.com','coding', '2025-07-19'),
(2, 'alice@example.com', 'pottery', '2025-07-18'),
(3, 'bob@example.com', 'pottery', '2025-07-11');
```

---

[View on CodeChef](https://www.codechef.com/problems/CTMUXM02)