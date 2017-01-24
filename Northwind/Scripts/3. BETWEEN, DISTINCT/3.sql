/*
    Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на
    буквы из диапазона b и g, не используя оператор BETWEEN.
*/

select CustomerID, Country from Customers
    where left(Country, 1) in ('b', 'c', 'd', 'e', 'f', 'g')
