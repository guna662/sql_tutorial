/*Question:-  Retrieve all duplicate rows for each person,
keeping only the first occurrence*/
drop table practice;
create table practice(
person_ID int,
last_name varchar(255),
first_name varchar(255),
Address varchar(230),
city varchar(200)
);
insert into practice()           -- Insert rows into practice table
values
(1,'Guna','Govindu','1-23,Azwal','Hyderabad'),   
(1,'Guna','Govindu','1-23,Azwal','Hyderabad'),   
(1,'Guna','Govindu','1-23,Azwal','Hyderabad'),    
(2,'Dhanush','nimmana','1-24,Acro','Pune'),      
(2,'Dhanush','nimmana','1-24,Acro','Pune'),       
(3,'Gowtham','Gojineni','2-34,Banjara','Delhi'), 
(3,'Gowtham','Gojineni','2-34,Banjara','Delhi'); 

select * from practice;

select 
    person_ID,                       -- Select person ID
    last_name,                       -- Select last name
    first_name,                      -- Select first name
    city,                            -- Select city
    row_number() over (              -- Generate a row number for each group
        partition by person_ID       -- Restart numbering for each person_ID group
        order by person_ID           -- Order rows inside each group (all same here)
    ) as row_num
from practice;


select 
    *                                -- Select all columns from the subquery
from  
(
    select 
        person_ID,                  
        last_name,                   
        first_name,              
        city,                        
        row_number() over (          -- Row number assigned within each person_ID group
            partition by person_ID   -- Restart numbering for each person_ID
            order by person_ID
        ) as row_num
    from practice
) sub
where row_num = 1;                   -- Filter to show only duplicate rows
