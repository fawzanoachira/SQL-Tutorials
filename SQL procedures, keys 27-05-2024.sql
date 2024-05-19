use javaqis;

call GetEmployeeDetailsByDept("Accounting");

-- if null method
select ename, sal+ifnull(comm,0) as totalsal from EMP;

-- keys

-- 	super key
--     candidate key
--     primary key
--     foreign key
--     secondary key/alternate key
--     composite key