# APYXAM01

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

You are helping set up a digital registry for a local dog show. Your task is to create a table named `Dogs` to store information about the participants.

The table must have the following columns for `dog_id`, `name`, `breed`, `age`, and `weight_kg`.

- dog_id is the primary key.
- Each dog's name must be unique.
- The age must be 1 year or older.
- The breed must be one of the following: 'Beagle', 'Labrador', 'Poodle', or 'Shih Tzu'.

After creating the table, insert the following data into the table:

```
┌────────┬───────┬──────────┬─────┬───────────┐
│ dog_id │ name  │  breed   │ age │ weight_kg │
├────────┼───────┼──────────┼─────┼───────────┤
│ 1      │ Buddy │ Labrador │ 3   │ 30.5      │
│ 2      │ Lucy  │ Poodle   │ 5   │ 6.8       │
│ 3      │ Max   │ Beagle   │ 2   │ 11.2      │
└────────┴───────┴──────────┴─────┴───────────┘

```

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-07-29T04:17:20.250Z  

```sql
-- write your code here

create table Dogs(
    dog_id INT primary key, 
    name varchar(50) unique,
    breed varchar(50),
    age int check(age >= 1),
    weight_kg float,
    check(breed IN ('Beagle', 'Labrador', 'Poodle', 'Shih Tzu'))
    );

insert into Dogs 
Values (1, 'Buddy', 'Labrador', 3, 30.5),
       (2, 'Lucy', 'Poodle', 5, 6.8),
       (3, 'Max', 'Beagle', 2, 11.2);
```

---

[View on CodeChef](https://www.codechef.com/problems/APYXAM01)