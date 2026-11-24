use banking_db;

INSERT INTO transactions 
(TransactionID, TransactionDate, Amount, TransactionType)
VALUES
(1001, '2026-01-05', 15000, 'Credit'),
(1002, '2026-01-06', 2500, 'Debit'),
(1003, '2026-01-08', 8500, 'Credit'),
(1004, '2026-01-10', 1200, 'Debit'),
(1005, '2026-01-12', 32000, 'Credit'),
(1006, '2026-01-15', 4500, 'Debit'),
(1007, '2026-01-18', 18000, 'Credit'),
(1008, '2026-01-20', 750, 'Debit'),
(1009, '2026-01-22', 9500, 'Credit'),
(1010, '2026-01-25', 6000, 'Debit');

INSERT INTO branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(1, 'Tambaram Branch', 'Tambaram, Chennai', '04422334455'),
(2, 'Velachery Branch', 'Velachery, Chennai', '04422334456'),
(3, 'Anna Nagar Branch', 'Anna Nagar, Chennai', '04422334457'),
(4, 'Guindy Branch', 'Guindy, Chennai', '04422334458');

INSERT INTO accounts
(AccountID, AccountType, Balance, CustomerID, BranchID)
VALUES
(1001, 'Savings', 45000, 101, 1),
(1002, 'Current', 125000, 102, 2),
(1003, 'Savings', 18000, 103, 1),
(1004, 'Savings', 85000, 104, 3),
(1005, 'Current', 210000, 105, 4),
(1006, 'Savings', 32000, 106, 2),
(1007, 'Savings', 67000, 107, 3),
(1008, 'Current', 95000, 108, 4),
(1009, 'Savings', 12000, 109, 1),
(1010, 'Savings', 56000, 110, 2);

INSERT INTO loans
(LoanID, LoanAmount, InterestRate, StartDate, EndDate, CustomerID)
VALUES
(501, 500000, 8.5, '2023-01-01', '2028-01-01', 101),
(502, 250000, 9.0, '2022-06-15', '2027-06-15', 102),
(503, 750000, 7.5, '2024-03-01', '2030-03-01', 103),
(504, 150000, 10.0, '2021-09-01', '2026-09-01', 104),
(505, 1000000, 8.0, '2023-12-01', '2033-12-01', 105),
(506, 300000, 9.5, '2024-02-01', '2029-02-01', 106),
(507, 450000, 8.75, '2022-11-01', '2027-11-01', 107),
(508, 200000, 10.5, '2023-07-01', '2028-07-01', 108),
(509, 600000, 7.8, '2021-04-01', '2026-04-01', 109),
(510, 350000, 9.2, '2024-05-01', '2029-05-01', 110);

INSERT INTO customers
(CustomerID, FirstName, LastName, EMAIL, Phone, ACCOUNTCREATION_DATE, DateofBirth)
VALUES
(101, 'Arun', 'Kumar', 'arun@gmail.com', '9876543210', '2022-01-15', '1995-04-12'),
(102, 'Priya', 'Sharma', 'priya@gmail.com', '9876543211', '2021-06-20', '1998-08-25'),
(103, 'Rahul', 'Verma', 'rahul@gmail.com', '9876543212', '2023-03-10', '1992-11-05'),
(104, 'Sneha', 'Reddy', 'sneha@gmail.com', '9876543213', '2020-09-05', '1997-02-18'),
(105, 'Vijay', 'Raj', 'vijay@gmail.com', '9876543214', '2022-12-12', '1990-07-30'),
(106, 'Divya', 'Nair', 'divya@gmail.com', '9876543215', '2024-02-01', '2000-01-15'),
(107, 'Karthik', 'Mohan', 'karthik@gmail.com', '9876543216', '2021-11-18', '1994-06-22'),
(108, 'Anjali', 'Das', 'anjali@gmail.com', '9876543217', '2023-07-25', '1999-09-10'),
(109, 'Suresh', 'Babu', 'suresh@gmail.com', '9876543218', '2020-04-14', '1988-12-03'),
(110, 'Meena', 'Joseph', 'meena@gmail.com', '9876543219', '2024-05-08', '2001-03-27');

set SQL_SAFE_UPDATES=1;

UPDATE transactions
SET AccountID = TransactionID
WHERE TransactionID BETWEEN 1001 AND 1010;


select * from accounts;
select * from branches;
select * from customers;
select * from loans;
select * from transactions;

