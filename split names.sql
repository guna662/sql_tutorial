 Q. write a SQL query to split a full name column into frist name and last name. Assume the names are separated by a single space. 

-- create a table

create table names(                                 
	id serial ,
    full_name varchar(195)
    );
 
 -- insert a values
    
insert into names (full_name)                         
value('manjunath reddy'),
	 ('Arjun Verma'),
	 ('Aditya Kiran'),
	 ('Dhanush Subramanian'),
     ('Siddarth Shetty'),
	 ('Karthik Nithin Iyer');
     
select * from names                                            -- to show the table columns which is created and a datatypes


select full_name,
	SUBSTRING_INDEX(full_name, ' ',1) as first_name,           -- (full_name, ' ', 1) → returns everything before the first space
    SUBSTRING_INDEX(full_name, ' ',2) as last_name              -- (full_name, ' ', -1) returns everything after the last space from names;
 
 from names;
 
 SELECT 
    full_name,
    SUBSTRING_INDEX(full_name, ' ', 1) AS first_name,
    SUBSTRING_INDEX(full_name, ' ', -1) AS last_name,
  TRIM(
    REPLACE(
        REPLACE(full_name,SUBSTRING_INDEX(full_name, ' ', 1), ''),   -- remove first name
        SUBSTRING_INDEX(full_name, ' ', -1), '' ))as middle_name       -- remove last name 
        FROM names;
