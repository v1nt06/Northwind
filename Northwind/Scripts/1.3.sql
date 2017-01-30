/*
    Добавляет следующие минорные изменения относительно 1.1:
        o Переименование Region в Regions
        o Добавление в таблицу клиентов даты основания
*/

if exists (select * from sys.objects
    where object_id = object_id(N'Region') AND type in (N'U'))
begin
    if exists (select * from sys.objects
        where object_id = object_id(N'Regions') AND type in (N'U'))
    begin
        drop table Regions
    end    
    exec sp_rename Region, Regions
    exec sp_rename PK_Region, PK_Regions
end

if not exists(select * from sys.columns
    where name = N'FoundingDate' and object_id = object_id(N'Customers'))
begin
    alter table Customers
        add FoundingDate date null
end
