/*
    По таблице Orders найти количество заказов, сделанных каждым продавцом и для каждого
    покупателя. Необходимо определить это только для заказов, сделанных в 1998 году.
*/

select CustomerID, EmployeeID, count(EmployeeID) as [Orders count]
    from Orders
    where year(OrderDate) = 1998
    group by CustomerID, EmployeeID
    order by CustomerID
