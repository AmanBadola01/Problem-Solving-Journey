# SQLPBP06

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

_Description not available._

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-08-04T04:41:48.509Z  

```sql
-- your code goes here
select department, count(employee_id) as total_employees
from Employees
group by department
```

---

[View on CodeChef](https://www.codechef.com/problems/SQLPBP06)