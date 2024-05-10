use javaqis;

select sal*12 from EMP where ename = "smith";
select ename from EMP where job = "clerk";
select sal from EMP where job = "salesman";
select * from EMP where sal>3000;
select * from EMP where ename = "jones";
select * from EMP where hiredate>"1981-01-01";
select ename, sal, sal*12 annualsalary from EMP where sal*12>12000;
select empno from EMP where deptno=30;
select ename, hiredate from EMP where hiredate<"1981-01-01";
select * from EMP where job="manager";
select ename, sal from EMP where comm>1400;
select * from EMP where comm>sal;
select empno from EMP where hiredate<"1987-01-01";
select * from EMP where job="analyst";
select * from EMP where sal>2000;