select DATE_FORMAT(trans_date, '%Y-%m') as month,
country,
COUNT(*) as trans_count,
SUM(state='approved') as approved_count,
SUM(amount) as trans_total_amount,
SUM(case when state='approved' THEN amount ELSE 0 end) as approved_total_amount
from Transactions
GROUP BY DATE_FORMAT(trans_date, '%Y-%m'), country;