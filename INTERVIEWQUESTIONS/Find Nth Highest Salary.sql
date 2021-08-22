

select * from emp order by sal desc ;

1st highest sal using max function

select *  from emp where sal=(select max(Sal) from emp);

2nd highest using subquery and max function

select max(sal) from emp
where sal<(select max(sal) from emp);

Find Nth highest sal

SELECT TOP 1 SAL
FROM (
      SELECT DISTINCT TOP N SAL
      FROM EMP
      ORDER  by SAL DESC
      )RESULT
ORDER BY SAL;      


Find Nth highest sal without using TOP and Max and LIMIT Function.

1st way:-

select sal from emp e1
where (n-1)=(select count(distinct sal) from emp e2 where e2.sal>e1.sal);

2nd way:-


select * from(
select ename, sal, dense_rank() 
over(order by sal desc)r from Employee) 
where r=&n;

select * from (
select e.*,row_number() over by (order by sal desc) rn 
from emp e) where rn=2;
