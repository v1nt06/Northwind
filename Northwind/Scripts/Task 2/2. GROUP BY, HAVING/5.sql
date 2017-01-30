/*
    Найти всех покупателей, которые живут в одном городе.
*/

select c1.CustomerID, c1.City from Customers as c1
    right outer join (select distinct(City) from Customers) as c2
    on c1.City = c2.City

/*
    Здесь я не совсем понял смысл задания, поэтому нашел всех покупателей которые живут в гродах с джоином по городу.
*/
