/*
    По таблице Employees найти для каждого продавца его руководителя.
*/

select e1.FirstName + ' ' + e1.LastName, e2.FirstName + ' ' + e2.LastName
    from Employees as e1
    left outer join Employees as e2
    on e1.ReportsTo = e2.EmployeeID
