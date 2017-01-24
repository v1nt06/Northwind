/*
    Написать запрос, который выводит только недоставленные заказы из таблицы Orders. В
    результатах запроса возвращать для колонки ShippedDate вместо значений NULL строку ‘Not
    Shipped’ (использовать системную функцию CASЕ). Запрос должен возвращать только колонки
    OrderID и ShippedDate.
*/

select OrderID, case when ShippedDate is null then 'Not Shipped' end
    from Orders
    where ShippedDate is null