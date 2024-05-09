use javaqis;

-- waqtd find 2nd max sal
select max(sal) from EMP where sal< (select max(sal) from EMP);
-- waqtd find 3rd max sal
select max(sal) from EMP where sal< (select max(sal) from EMP where sal < (select max(sal) from EMP));

-- waqtd find dept name of employee with 2nd minimum salry.
select dname from DEPT where deptno = 
(select deptno from EMP where sal = 
(select min(sal) from EMP where sal > 
(select min(sal) from EMP)));

-- subquery
-- case 1: whenever we have an unknown present in the question
-- case 2: whenever the data to be selected and the condition to be excuted are present in different table we use subquery
-- case 3: max sal, min sal, 3rd max, 3rd min
-- case 4 employee manager relation

-- waqtd to find the name of manager of allen
select ename from EMP where empno = (select mgr from EMP where ename = "allen");
-- waqtd to find the name of managers manager of smith
select ename from EMP where empno = (select mgr from EMP where empno = (select mgr from EMP where ename = "smith"));
-- waqtd to find the deptno of adam's manager
select deptno from EMP where mgr = (select mgr from EMP where ename ="adams");
-- waqtd to find the dname of adam's manager
select dname from DEPT where deptno = (select deptno from EMP where mgr = (select mgr from EMP where ename ="adams"));
-- waqtd to find the loc of adam's manager's manager.

select loc from DEPT where deptno = 
(select deptno from EMP where empno = 
(select mgr from EMP where empno = 
(select mgr from EMP where ename = "adams")));

-- waqtd to find employees reporting to king
select ename from EMP where mgr = (select empno from EMP where ename = "king");

-- waqtd to find ename sal of emp who report to james
select ename, sal from  EMP where mgr = (select empno from EMP where ename = "james");

-- waqtd find dname of emp who report to president
select dname from DEPT where deptno = any
(select deptno from EMP where mgr = 
(select empno from EMP where job = "president"));