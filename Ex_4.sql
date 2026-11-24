Select * from customers;

select FirstName,LastName,Email,Phone
From customers;

Select *
From accounts
Where AccountType = 'Savings';

Select *
From accounts
Where balance > 75000;

select * 
from transactions
where amount between 5000 and 20000;

select *
from customers
where CustomerID in (101,102,103);

select *
from customers
where FirstName like 'R%';

select *
from customers
order by FirstName asc;

select * 
from accounts
order by balance desc;

select distinct AccountType
from accounts;

select *
from accounts
order by balance desc
limit 3;


select *
from transactions
limit 5 offset 2;

select *
from customers
where Phone is null;

select *
from customers
where Phone is not null;

select AccountID,case
	when balance >= 100000 then 'Premium Account'
    When balance >= 70000 then 'Standart Account'
    else 'Basic Account'
    end as AcccountCategory
from accounts;

select AccountID,balance,Rank() Over (order by balance desc)
from accounts;

select TransactionID,Amount,Sum(Amount) over (order by TransactionDate) as RunningTotal
from transactions;

select transactionID,Amount,avg(amount) over () as Average_Transaction
from transactions;

