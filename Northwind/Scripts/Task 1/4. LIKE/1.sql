/*
    В таблице Products найти все продукты (колонка ProductName), где встречается подстрока
    'chocolade'. Известно, что в подстроке 'chocolade' может быть изменена одна буква 'chocolade' в
    середине - найти все продукты, которые удовлетворяют этому условию.
*/

select ProductName from Products
    where ProductName like '%cho_olade%'
