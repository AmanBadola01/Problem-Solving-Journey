select v.customer_id , count(transaction_id) as count_no_trans 
from Visits as v
LEFT JOIN Transactions as t
on v.visit_id = t.visit_id
where t.transaction_id IS NULL
GROUP BY t.transaction_id 