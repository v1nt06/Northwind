/*
    Выдать в результатах запроса имена всех заказчиков из таблицы Customers и суммарное
    количество их заказов из таблицы Orders. Принять во внимание, что у некоторых заказчиков
    нет заказов, но они также должны быть выведены в результатах запроса. Упорядочить
    результаты запроса по возрастанию количества заказов.
*/

select c.CustomerID, o.OrdersCount from Customers as c
left outer join (select CustomerID, count(OrderID) as OrdersCount from Orders group by CustomerID) as o
on c.CustomerID = o.CustomerID
order by o.OrdersCount
