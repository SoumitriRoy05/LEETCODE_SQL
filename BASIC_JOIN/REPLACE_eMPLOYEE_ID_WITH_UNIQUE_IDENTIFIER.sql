SELECT unique_id , name
FROM Employee E
LEFT JOIN EmployeeUNI u
on E.id=U.id;