/*
    Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на
    буквы из диапазона b и g. Использовать оператор BETWEEN. Проверить, что в результаты
    запроса попадает Germany. Запрос должен возвращать только колонки CustomerID и Country и
    отсортирован по Country.
*/

select CustomerID, Country from Customers
    where left(Country, 1) between 'b' and 'g'
    order by Country
