/*
    Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года
    (ShippedDate) не включая эту дату или которые еще не доставлены. В запросе должны
    возвращаться только колонки OrderID (переименовать в Order Number) и ShippedDate
    (переименовать в Shipped Date). В результатах запроса возвращать для колонки ShippedDate
    вместо значений NULL строку ‘Not Shipped’, для остальных значений возвращать дату в
    формате по умолчанию.
*/

select OrderID as 'Order Number', case when ShippedDate is null then 'Not Shipped' else cast(ShippedDate as nvarchar) end as 'Shipped Date'
    from orders
    where ShippedDate > '1998-05-06' or ShippedDate is null