/*
    Выдать всех продавцов, которые имеют более 150 заказов. Использовать вложенный SELECT.
*/

select EmployeeID
from (select EmployeeID, count(*) as OrdersCount from Orders group by EmployeeID) as o
where OrdersCount > 150
