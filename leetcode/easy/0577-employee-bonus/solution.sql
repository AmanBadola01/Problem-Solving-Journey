Select e.name, b.bonus
from Employee as e
LEFT JOIN Bonus as b
ON e.empID = b.empID
WHERE bonus IS NULL OR bonus < 1000;