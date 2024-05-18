
APPROCH 1

select * from (
select *,row_number() over (order by EMPLOYEE_ID) as row_seq from EMP) as V
where mod(v.row_seq,2)=0; /*It gives the Even number)*/

SELECT * FROM (
SELECT * ,ROW_NUMBER() OVER (ORDER BY EMPLOYEE_ID) AS ROW_SEQ) AS V
WHERE MOD(V.ROW_SEQ,2)=1  /*It gives the ODD number)*/




