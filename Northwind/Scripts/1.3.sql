/*
    Добавляет следующие минорные изменения относительно 1.1:
        o Переименование Region в Regions
        o Добавление в таблицу клиентов даты основания
*/

if not exists (select * from sys.objects
    where object_id = object_id(N'Regions') AND type in (N'U'))
begin
    exec sp_rename Region, Regions
end

if not exists(select * from sys.columns
    where name = N'FoundingDate' and object_id = object_id(N'Customers'))
begin
    alter table Customers
        add FoundingDate date null
end
