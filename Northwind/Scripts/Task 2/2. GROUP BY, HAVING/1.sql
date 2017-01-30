/*
    По таблице Orders найти количество заказов с группировкой по годам. В результатах запроса
    надо возвращать две колонки c названиями Year и Total. Написать проверочный запрос,
    который вычисляет количество всех заказов.
*/

select year(OrderDate) as [Year], count(OrderDate) as Total
    from Orders
    group by year(OrderDate)

select count(*) from Orders where year(OrderDate) = 1996

select count(*) from Orders where year(OrderDate) = 1997

select count(*) from Orders where year(OrderDate) = 1998
