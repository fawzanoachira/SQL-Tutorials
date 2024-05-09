use javaqis;

select ename from EMP where sal < (select sal from EMP where ename="miller");
select ename, deptno from EMP where deptno = (select deptno from EMP where ename = "smith");
select ename, hiredate from EMP where hiredate > (select hiredate from EMP where ename = "jones");
select ename, sal, deptno from EMP where sal > 2000 and deptno = (select deptno from EMP where ename = "james");
select * from EMP where sal > (select sal from EMP where ename = "smith" ) and sal < (select sal from EMP where ename = "king"); 

select ename from EMP where deptno = 
	(select deptno from EMP where ename = "james") and
	sal > (select sal from EMP where ename = "adams") and
	job = (select job from EMP where ename = "miller") and 
	hiredate > (select hiredate from EMP where ename = "martin");

select dname from DEPT where deptno = (select deptno from EMP where ename = "miller");
select * from EMP where job = "manager" and deptno = (select deptno from DEPT where dname = "accounting");
select count(ename) from EMP 
where job = "clerk" 
and deptno = (select deptno from EMP where ename = "smith")
and sal > (select sal from EMP where ename = "king") 
and hiredate > (select hiredate from EMP where ename = "martin")
and deptno = (select deptno from DEPT where loc = "boston");

select ename from EMP where sal = (select max(sal) from EMP);
select ename from EMP where sal = (select min(sal) from EMP);

-- waqtd name, annual salary of the employee if their annual salry is > than all the salesman.
select ename, sal*12 as annualsalary from EMP where sal*12 > (select max(sal*12) from EMP where job = "salesman");

select ename, comm from EMP where comm = (select min(comm) from EMP);

-- Types of subquery
	-- single row subquery
    -- multi row subquery
    
		-- subquery operators
			-- ALL 
            -- ANY
 
-- waqtd name of employee if the employee earns less than the employees works as salesaman
select ename from EMP where sal < all(select sal from EMP where job = "salesman");

-- waqtd name of emp if the emp earns less than the emp atleast one salesman
select ename from EMP where sal < any(select sal from EMP where job = "salesman");