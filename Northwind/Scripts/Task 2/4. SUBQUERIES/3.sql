/*
    Выдать всех заказчиков (таблица Customers), которые не имеют ни одного заказа (подзапрос
    по таблице Orders). Использовать оператор EXISTS.
*/

select CustomerID from Customers c
where not exists 
(
    select CustomerID from Orders o where o.CustomerID = c.CustomerID
)
