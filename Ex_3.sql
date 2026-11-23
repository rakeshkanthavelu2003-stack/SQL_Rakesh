use banking_db;

insert into customers(CustomerID,FirstName,LastName,EMAIL,Phone,DateofBirth)
values(101,'Rahul','Sharma','rahul@gmial.com','9876543210','1998-04-15');

insert into accounts(AccountID,CustomerID,AccountType,Balance)
values(201,101,'Savings',25000);

Set SQL_SAFE_UPDATES=0;

Update customers
set phone='9999999999'
where CustomerID=101;

UPDATE customers
SET Email='rahul.sharma@gmail.com'
WHERE CustomerID=101;

SELECT * FROM customers
WHERE CustomerID = 101;

select * from accounts;

delete from accounts
where AccountID=201;

delete from customers
where customerID=101;

Set SQL_SAFE_UPDATES=1;