use banking_db;

CREATE TABLE Accounts(
	AccountID int,
    AccountType varchar(20),
    Balance Decimal(10,2)
    );
    
create table Transactions(
	TransactionID int,
    TransactionDate Date,
    Amount Decimal(10,2),
    TransactionType varchar(20)
    );

Create table Branches(
	BranchID int,
    BranchName varchar(20),
    BranchAddress varchar(100),
    BranchPhone varchar(15)
    );
    
Create table AccountBranches(
	AssignmentDate Date
    );
    
create table Loans (
	LoanID int,
    LoanAmount Decimal(10,2),
    InterestRate Decimal(10,2),
    StartDate date,
    EndDate date
    );

alter table customers
add column DateofBirth Date;

alter table customers
modify Phone varchar(20);

alter table accounts
add constraint chk_MinBalance
Check (Balance >= 1000);

drop table accountbranches;

alter table customers
add primary key (CUS_ID);

alter table accounts
add CustomerID int;

alter table accounts
add constraint FK_Accounts_Customers
foreign key (CustomerID)
references customers(CUS_ID);

alter table customers
rename column CUS_ID to CustomerID;

alter table customers
modify FirstName varchar(50) not null;

alter table customers
add constraint UQ_Email
unique (Email);

alter table accounts
add BranchID int;

alter table branches
add primary key (BranchID);

alter table accounts
add constraint FK_accounts_branches
Foreign key (BranchID)
references branches(BranchID);

alter table transactions
add AccountID int;

alter table accounts
add primary key (AccountID);

alter table transactions
add constraint FK_transactions_accounts
foreign key (AccountID)
references accounts(AccountID);

alter table loans
add CustomerID int;

alter table loans
add constraint FK_loans_customers
foreign key (CustomerID)
references customers(CustomerID);

