create database test_db; -- used create database 
show databases; -- shows the list of databases
-- remove files  from the databases
drop database test_db; 
/*backup database test_db
to disk = 'D:\test_db.bak';*/
/*mysqldump -u root -p test_db > backup.sql;*/
create table persons(person_id int primary key,
last_name varchar(255),
firs_tname varchar(255),
address varchar(255),
city varchar(255)
);
describe persons; -- to show the table columns which is created and a datatypes
-- add column
alter table persons
add email varchar(255); 
-- to rename column
alter table persons
rename column email to emailAddress;
-- drop the column
alter table persons
drop emailAddress; 
-- alter constraints in table
alter table persons 
add constraint pk_name primary key(person_id);












