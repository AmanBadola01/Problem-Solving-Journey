# APYXAM02

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

You are building a database for a community center to manage workshop registrations.

Create a table  **`WorkshopSignup`**  with the following columns:

- unique_id: INT, Primary Key
- email: VARCHAR, NOT NULL
- workshop_type: VARCHAR (e.g., 'pottery', 'coding')
- signup_date: DATE
- A participant can join multiple different workshops but not the same one twice.

After creating the table, insert the following data into it.

```
┌───────────┬───────────────────┬───────────────┬─────────────┐
│ unique_id │       email       │ workshop_type │ signup_date │
├───────────┼───────────────────┼───────────────┼─────────────┤
│ 1         │ bob@example.com   │ coding        │ 2025-07-19  │
│ 2         │ alice@example.com │ pottery       │ 2025-07-18  │
│ 3         │ bob@example.com   │ pottery       │ 2025-07-11  │
└───────────┴───────────────────┴───────────────┴─────────────┘

```

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-08-03T06:10:31.430Z  

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

[View on CodeChef](https://www.codechef.com/problems/APYXAM02)