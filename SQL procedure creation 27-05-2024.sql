CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmployeeDetailsByDept`(in dept_name varchar(20))
BEGIN
	declare dept_id int;
    -- get dept_id
	select deptno into dept_id from DEPT where dname=dept_name;
    -- fetch details
    select * from EMP where deptno=dept_id;
END