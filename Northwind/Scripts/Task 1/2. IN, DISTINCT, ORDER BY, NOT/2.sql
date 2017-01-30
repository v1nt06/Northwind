﻿/*
    Выбрать из таблицы Customers всех заказчиков, не проживающих в USA и Canada. Запрос
    сделать с помощью оператора IN. Возвращать колонки с именем пользователя и названием
    страны в результатах запроса. Упорядочить результаты запроса по имени заказчиков.
*/

select CustomerID, Country from Customers
    where Country not in ('USA', 'Canada')
    order by CompanyName