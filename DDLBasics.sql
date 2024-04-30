CREATE DATABASE javaqis;

USE javaqis;

CREATE TABLE CUSTOMER(custId int PRIMARY KEY, custName varchar(20) NOT NULL, custPhone int check(length(custPhone)=10), custAddress varchar(30));
CREATE TABLE PRODUCT(pId int PRIMARY KEY, pName varchar(20) NOT NULL, pPrice int check(pPrice>0), custID int, FOREIGN KEY (custID) REFERENCES CUSTOMER(custId));

RENAME TABLE PRODUCT TO PRODUCTS;

ALTER TABLE PRODUCTS ADD pdate DATE NOT NULL;
ALTER TABLE PRODUCTS RENAME COLUMN pdate TO pDate;
ALTER TABLE PRODUCTS MODIFY pDate VARCHAR(20);
ALTER TABLE PRODUCTS DROP COLUMN pDate;

INSERT INTO CUSTOMER VALUES(1, "fawzan", 1234567891, "oachira");
INSERT INTO CUSTOMER VALUES(2, "fawz", 1234567892, "kylm");
INSERT INTO PRODUCTS VALUES(1, "p1", 10, 1);
TRUNCATE TABLE PRODUCTS;
TRUNCATE TABLE CUSTOMER; -- Cannot truncate a table which is referenced to another table as foreign key.

CREATE TABLE CUSTOMER1(custId int PRIMARY KEY, custName varchar(20) NOT NULL, custPhone int check(length(custPhone)=10), custAddress varchar(30));
DROP TABLE CUSTOMER1;