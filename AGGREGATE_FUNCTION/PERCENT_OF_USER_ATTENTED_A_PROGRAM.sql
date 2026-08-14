select contest_id, ROUND(COUNT(user_id)*100.0/(SELECT COUNT(*) FROM USERS),2) as percentage
from Register
GROUP BY contest_id
order by percentage desc, contest_id ASC;