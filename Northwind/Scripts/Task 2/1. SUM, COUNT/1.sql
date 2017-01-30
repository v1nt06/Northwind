/*
    Найти общую сумму всех заказов из таблицы Order Details с учетом количества закупленных
    товаров и скидок по ним. Результатом запроса должна быть одна запись с одной колонкой с
    названием колонки 'Totals'.
*/

select sum(UnitPrice * Quantity * (1 - Discount)) as Total from [Order Details]
