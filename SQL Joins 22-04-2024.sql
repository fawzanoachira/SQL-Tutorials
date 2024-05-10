use javaqis;

-- joins
-- the process of retrieving data from multiple tables simultaneously is known as joins

-- types of joins
	-- Cartesian join/cross join
	-- inner join/equi join
	-- outer join
		-- left join
		-- right join
	-- self join
	-- natural joins
 
-- CROSS JOIN 
select ename, dname from EMP cross join DEPT;
select ename, dname from EMP, DEPT;

-- INNER JOIN
select ename, dname from EMP inner join DEPT on EMP.deptno=DEPT.deptno;
select ename, dname from EMP inner join DEPT where EMP.deptno=DEPT.deptno;

-- waqtd ename, loc of emp working as manager
select ename, loc from EMP inner join DEPT on EMP.deptno=DEPT.deptno where job="manager";
select ename, loc from EMP inner join DEPT on EMP.deptno=DEPT.deptno and job="manager";

select ename, sal, dname from EMP inner join DEPT 
on EMP.deptno=DEPT.deptno 
where job = "clerk" 
and EMP.deptno in (20) 
and sal>1000;

-- waqtd ename, deptno, dname, loc of the emp earning more than 2000 in newyork
select ename, EMP.deptno, dname, loc from EMP inner join DEPT on EMP.deptno=DEPT.deptno where loc="new york" and sal>2000;

-- waqtd dname, empno, for all emp whos empno are(7839,7902) and are working in loc new york
select dname, empno from EMP inner join DEPT on EMP.deptno=DEPT.deptno where (empno between 7839 and 7902) and loc ="new york";

-- outer join
	-- used to obtain unmatched and matched joins
    
-- right join
select dname, ename from EMP right join DEPT on EMP.deptno=DEPT.deptno;

-- left join
select dname, ename from EMP left join DEPT on EMP.deptno=DEPT.deptno;