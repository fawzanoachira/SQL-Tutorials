use javaqis;

select ascii(ename) as NumCodeOfFirstCharacter from EMP;
select char_length(ename) as length from EMP;
select character_length(ename) as length from EMP;
select concat('hi ', ename) as greet from EMP;
select concat_ws('-', 'hi ', ename) as greet from EMP;

select field('q','s','q','l');
select find_in_set('q','s,q,l');
select insert("example.com",1,7,"mysql");
select instr("example",'x') as position;

select lcase(ename) from EMP;
select ucase("ffff");
select length(ename) from EMP;

select locate('X','EXAMPLE.COM') as LOCATION;
select lower(ename) from EMP;

select lpad(ename,20,'abcd') from EMP;
select rpad(ename,10,'abc') from EMP;

select ltrim("              hello world") as spaceRemoved;
select rtrim("hello world         ") as s;
select mid("SQL Classes",5,3) as extracted_string;
select position("X" in "example.com");

select repeat(ename,3) from EMP;
select replace(ename,'A','b') from EMP;
select reverse(ename) from EMP;
select right(ename,2) from EMP;
select left(ename,3) from EMP;

select strcmp('sql','sql2');
select substr('sql classes',5,3);
select substring('sql classes',5,3);
select upper('fsdfdss');
select trim('    sfsd   ') as h;

-- Numeric Functions
select abs(-250);
select avg(sal) from EMP;
select ceil(25.10);
select ceiling(25.10);
select floor(25.90);
select greatest(3,5,6,3,4,6,7);
select least(3,5,6,3,4,6,7);
select mod(10,16);
select pow(2,3);
select power(2,3);
select pi();
select 10 div 5;
select 8 div 3;
select round(3.145,2);
select truncate(135.379,2);
select sqrt(49);
select sign(-49);
select sign(49);
select sign(0);

-- Date Functions
select current_date();
select curdate();
select current_time();
select current_timestamp();
select curtime();
select date("2001-02-06 09:34:00");
select datediff("2024-02-06","2001-02-06");
select day("2024-02-28");
select dayname("2001-02-06");
select dayofmonth("2001-02-06");
select dayofmonth(curdate());
select dayofweek(curdate());
select dayofyear(curdate());

select extract(month from hiredate) from EMP;
select extract(week from hiredate) from EMP;
select extract(week from "2024-05-06");
select extract(minute from "2024-05-06 09:34:23");
select extract(year from "2024-05-06 09:34:23");
select extract(day from "2024-05-06 09:34:23");
select extract(hour from "2024-05-06 09:34:23");
select last_day("2024-03-03");
select localtime();
select localtimestamp();
select adddate("2024-03-19",interval 10 day);
select addtime(current_timestamp(),120);