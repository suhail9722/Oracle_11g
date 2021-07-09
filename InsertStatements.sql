
CREATE TABLE 
      example(
             first_name   varchar2(30),
             mid_name     varchar2(30),
             last_name    VARCHAR2(30),
             ex_id        number(3)
        );
        
--1

INSERT INTO example( first_name,mid_name,last_name,ex_id) VALUES('suhail','noname','khan','1'); --Default insert order

INSERT INTO example VALUES ('sam', 'noname','khan',2);  -- default without using specifying column

INSERT INTO example (mid_name,last_name,first_name) VALUES ('noname','bakwas','bujjad'); --userdefined insertion order

INSERT INTO example values('&first','&mid','&last',&ex_id);  --substition variable we can insert as many time

--Note :- Substitution Variable can named as wanted by the user.

truncate table example;  ---delete the data

SELECT distinct first_name, mid_name from example;
