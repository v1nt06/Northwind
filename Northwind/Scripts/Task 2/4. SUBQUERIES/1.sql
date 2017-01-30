/*
    Выдать всех поставщиков (колонка CompanyName в таблице Suppliers), у которых нет хотя бы
    одного продукта на складе (UnitsInStock в таблице Products равно 0). Использовать
    вложенный SELECT для этого запроса с использованием оператора IN.
*/

select CompanyName from Suppliers
where SupplierID IN (select SupplierID from Products where UnitsInStock = 0)
