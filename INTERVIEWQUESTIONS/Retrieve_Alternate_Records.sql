
APPROCH 1

select * from (
select *,row_number() over (order by EMPLOYEE_ID) as row_seq from EMP) as V
where mod(v.row_seq,2)=0; /*It gives the Even number)*/

SELECT * FROM (
SELECT * ,ROW_NUMBER() OVER (ORDER BY EMPLOYEE_ID) AS ROW_SEQ) AS V
WHERE MOD(V.ROW_SEQ,2)=1  /*It gives the ODD number)*/


APPROCH 2

We can use rownum and MOD function to retrieve the alternate records from a table. 
To get Even number records: SELECT * FROM (SELECT rownum, ID, Name FROM Employee) WHERE MOD(rownum,2)=0
To get Odd number records: SELECT * FROM (SELECT rownum, ID, Name FROM Employee) WHERE MOD(rownum,2)=1

APPROCH 3 Using CTE

-- For even-numbered rows
WITH OrderedEmployees AS (
    SELECT ROW_NUMBER() OVER (ORDER BY ID) AS RowNum, ID, Name
    FROM Employee
)
SELECT ID, Name
FROM OrderedEmployees
WHERE RowNum % 2 = 0;

-- For odd-numbered rows
WITH OrderedEmployees AS (
    SELECT ROW_NUMBER() OVER (ORDER BY ID) AS RowNum, ID, Name
    FROM Employee
)
SELECT ID, Name
FROM OrderedEmployees
WHERE RowNum % 2 = 1;





