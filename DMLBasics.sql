INSERT INTO CUSTOMER VALUES(3, "fawzan2", 1234567893, "oachira");
INSERT INTO CUSTOMER (custId, custName, custPhone, custAddress) VALUES (4, "fawzan3",1234567893,"kylm");

UPDATE CUSTOMER SET custAddress="kyklm" WHERE custId=4;

DELETE FROM CUSTOMER WHERE custId = 4;