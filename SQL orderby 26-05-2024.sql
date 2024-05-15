use javaqis;

-- order by clause it is used to sort he result-set in ascending or descending order.

select * from EMP order by sal asc;
select * from EMP order by sal desc;

select * from EMP where sal>1800 order by sal asc;

-- limit
select * from EMP limit 5;
select * from EMP order by sal asc limit 5;

-- offset
select * from EMP limit 5 offset 1;

-- cases

select ename, sal,
case
	when sal>3000 then "good salary"
    when sal>=1000 and sal<=3000 then "avg salary"
    else "very less salary"
end as salarytext from EMP;

-- copy contents from one table to another
insert into employee(empno,ename,sal) select empno,ename,sal from EMP;

truncate table employee;

insert into employee(empno,ename,sal) select empno,ename,sal from EMP where ename="smith";

-- views
CREATE VIEW sample AS
SELECT ename, empno
FROM EMP
WHERE ename="smith";

-- stored procedures
delimiter &&
CREATE PROCEDURE get_details()
BEGIN
	select * from EMP;
    select * from DEPT;
END &&

