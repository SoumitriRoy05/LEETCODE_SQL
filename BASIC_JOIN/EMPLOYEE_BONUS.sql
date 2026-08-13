Select E.name, B.bonus
from EMPLOYEE E
left join BONUS B
on E.empId = B.empId
where B.bonus < 1000 OR B.bonus iS NULL;
