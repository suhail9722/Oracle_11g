

truncate table example;  ---delete the data

CREATE TABLE 
      example(
             first_name   varchar2(30),
             mid_name     varchar2(30),
             last_name    VARCHAR2(30),
             ex_id        number(3)
        );
           

--DML SELECT :- It is read only command or Data Retrival Statement

select first_name,mid_name,last_name,ex_id from example; --using selected order

select * from example; -- default order selection

select first_name from example; --select all records with a selected columns

select * from example where first_name='suhail'; --select a particular group of records of all columns.
