/*
    Определить продавцов, которые обслуживают регион 'Western' (таблица Region).
*/

select distinct(e.FirstName + ' ' + e.LastName)
from (
        select et.TerritoryID, EmployeeID
        from (
                select TerritoryID
                from Territories
                where RegionID = (
                                    select RegionID
                                    from Region
                                    where RegionDescription = 'Western'
                                 )
             ) as wrt -- wrt = western region territories
        join EmployeeTerritories as et
        on wrt.TerritoryID = et.TerritoryID
     ) as we -- we = western employees
join Employees as e
on we.EmployeeID = e.EmployeeID
