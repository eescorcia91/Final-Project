CREATE DATABASE banks_portal;
USE banks_portal;



CREATE TABLE accounts (
    accountId INT NOT NULL UNIQUE AUTO_iNCREMENT,
    
    ownerName Varchar(45) NOT NULL,
    
    owner_ssn INT(9) NOT NULL,
    
    balance DECIMAL (10,2) DEfAULT 0.00,
    
    account_status VARCHAR(45),
    
    PRIMARY KEY (accountId)
    
);


CREATE TABLE Transactions (
    transactionId INT NOT NULL UNIQUE AUTO_INCREMENT,
    
    accountID INT NOT NULL,
    
    transactionType VARCHAR(45) NOT NULL,
    
    transactionAmount DECIMAL (10,2) NOT NULL,
    
    PRIMARY KEY (transactionId)
  
);

INSERT INTO accounts (ownerName, owner_ssn, balance , account_status)
VALUES

 ("MARIA JOZEF", "123456789", "10000.00", "ACTIVE"),

 ("LINDA JONES", "987654321", "2600.00", "INACTIVE"),
 
 ("JOHN McGRAIL", "222222222", "100.50", "ACTIVE"),
 
 ("PATTY LUNA", "111111111", "509.74", "INACTIVE");
 
 
 
 
INSERT INTO Transactions ( accountID, transactionType, transactionAmount)
VALUES

("1", "DEPOSIT", "650.98"),

("3", "WITHDRAW", "999.87"),

("3", "DEPOSIT", "350.00");




