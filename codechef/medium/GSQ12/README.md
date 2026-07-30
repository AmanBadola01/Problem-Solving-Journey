# GSQ12

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

_Description not available._

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-07-30T07:01:45.104Z  

```sql
/* Write a query to do the following
- Set hourly_pay to 150 for HR employees
- Output the entire table
*/

update employee
set Hourly_pay = 150
where Department = 'Hr';

select * from employee
```

---

[View on CodeChef](https://www.codechef.com/problems/GSQ12)