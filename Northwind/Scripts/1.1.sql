/*
    Добавляет таблицу данных кредитных карт сотрудников: номер карты, дата
    истечения, имя card holder, ссылку на сотрудника, …
*/

if not exists (select * from sys.objects
    where object_id = object_id(N'CreditCards') AND type in (N'U'))
begin
    create table CreditCards (
        Id int not null primary key,
        Number nchar(16) not null,
        ExpirationDate date not null,
        CardholderName nvarchar(21) not null,
        EmployeeId int not null,
        constraint FK_CreditCard_Employee foreign key (EmployeeId)
        references Employees (EmployeeID)
    )
end
