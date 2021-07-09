
truncate table merge1;

truncate table merge2;

create table merge1(  --- table 1 
    col_1 number(1),
    col_2 varchar(15)
  );
  
  
insert into merge1 values(1,'one'); 
insert into merge1 (col_1, col_2) values(2,'two');
insert into merge1 values(&a,'&b');


select * from merge1;
 
create table merge2(  ---table 2
    col_1 number(1),
    col_2 varchar(15)
  );
  
insert into merge2 values(&a,'&b'); 

select * from merge2;
  
--Now merge table 2 into table1 if col_1 of merge1 and merge2 tables
--is same then replace col_2 with each other of both the tables

MERGE INTO merge1 tab1
USING merge2 tab2
ON (tab1.col_1=tab2.col_1)
WHEN MATCHED THEN
UPDATE SET tab1.col_2=tab2.col_2
WHEN NOT MATCHED THEN
INSERT (col_1,col_2) values (tab2.col_1,tab2.col_2);

--AFTER MERGE  TABLE1 GET THE VALUES OF TABLE 2

select * from merge1;
select * from merge2;

--NOTE AS OF 10 G MERGE CAN be AS --SAME SEQUENCE

--INSERT + UPDATE + DELETE
--INSERT + UPDATE
--UPDATE + DELETE
--INSERT
-- UPDATE


