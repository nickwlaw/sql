-- create and select the database
DROP DATABASE IF EXISTS bank_db;
CREATE DATABASE bank_db;
use bank_db;

-- create the accounts table
CREATE TABLE Accounts (
	ID				int				primary key		auto_increment,
    account_holder	varchar(255)	not null		unique,
    balance			dec(10,2)		not null,
    fees			dec(10,2)
);

-- create the transactions table
CREATE TABLE Transactions (
	ID				int				primary key		auto_increment,
    amount			dec(10,2)		not null,
    txn_type		varchar(10)		not null,
    account_ID		int				not null,
    FOREIGN KEY (account_ID) REFERENCES Accounts (ID)
);

-- add records to the accounts table
INSERT INTO Accounts VALUES
	(1, 'Gary Henderson', '8888', '250'),
    (2, 'Meagan Hanson', '5444', '175'),
    (3, 'Nick Law', '33.33', '88'),
    (4, 'Yelena Lapina', '33.22', '88');
    
INSERT INTO Transactions VALUES
	(1, '500', 'deposit', 3),
    (2, '-200', 'withdrawal', 4),
    (3, '200', 'deposit', 4),
    (4, '248', 'deposit', 1);
    
-- create a user and grant privileges to that user
create user if not exists 'bank_db_user'@'localhost'
IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE
ON bank_db.*
TO bank_db_user@localhost;
    