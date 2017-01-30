﻿/*
    Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года (колонка
    ShippedDate) включительно и которые доставлены с ShipVia &gt;= 2. Запрос должен возвращать
    только колонки OrderID, ShippedDate и ShipVia.
*/

select OrderID, ShippedDate, ShipVia from Orders
    where ShippedDate >= '1998-05-06' and ShipVia >= 2