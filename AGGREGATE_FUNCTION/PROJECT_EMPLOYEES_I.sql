select P.project_id, ROUND(AVG(experience_years),2) as average_years
from Project P
LEFT JOIN Employee E
on P.employee_id=E.employee_id
GROUP BY P.project_id;