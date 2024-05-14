use javaqis;

-- full join can be achieved using union operator
select dname, ename from EMP right join DEPT on EMP.deptno=DEPT.deptno
union
select dname, ename from EMP left join DEPT on EMP.deptno=DEPT.deptno;

-- self join

-- waqts ename, manager of emp of all
select e1.ename, e2.ename from EMP e1 join EMP e2 on e1.mgr=e2.empno;

-- wqtd ename, manager along with deptno of emp workin as clerk
select e1.ename, e2.ename, e1.deptno, e2.deptno from EMP e1 join EMP e2 on e1.mgr = e2.empno and e1.job = "clerk";

-- wqtd ename, mgr along with job where emp and mgr works with as same designation
select e1.ename, e2.ename, e1.job, e2.job from EMP e1 join EMP e2 on e1.mgr=e2.empno and e1.job=e2.job;

-- wqtd ename, emp sal, mgr, mgr sal if mgr earns more than emp
select e1.ename, e1.sal, e2.ename, e2.sal from EMP e1 join EMP e2 on e1.mgr=e2.empno and e2.sal>e1.sal;

-- wqtd ename, mgr, mgr of mgr of all employees
select e1.ename, e2.ename, e3.ename from EMP e1 join EMP e2 join EMP e3 on e1.mgr=e2.empno and e2.mgr=e3.empno;

-- natural joins
	-- it behaves as inner join if given two tables have relation else behaves like cross join.
    
select * from EMP natural join DEPT;