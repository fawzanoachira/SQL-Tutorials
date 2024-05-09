USE javaqis;

-- Aggregate Functions
select sum(sal) as "Total Salary" from EMP;
select avg(sal) from EMP;
select min(sal) from EMP;
select max(sal) from EMP;
select count(sal) from EMP;

select count(ename) from EMP where ename like '%e%';
select count(*) from EMP where (hiredate between '1981-1-1' and '1985-12-31') and (deptno in (10,30));
select max(sal),ename from EMP where ename like '%s%' and (job='manager' and deptno=20 and sal>1000) group by ename;
select count(*),max(sal) from EMP where ename like '%ll';

-- Group By
select count(ename),deptno from EMP where job<>'analyst' group by deptno;
select count(*),job from EMP where ename like '%a%' group by job;
select sum(sal),count(ename),deptno from EMP where job='salesman' group by deptno; 

-- Having: used to filter groups created by group by
select count(*),deptno from EMP group by deptno having count(*)>=4;
select count(*),job from EMP group by job having count(*)>=2;
select job, sum(sal) from EMP where sal>1500 group by job;
select job, sum(sal) from EMP group by job having sum(sal)>5000;