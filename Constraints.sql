create table employee(
emp_ID int primary key,
Last_name varchar(200),
First_name varchar(200),
Address varchar(200),
city varchar(200)
);
describe employee;

alter table employee
add column email varchar(200);

alter table employee 
Add column age INT CHECK (age >= 18);

alter table employee
rename column email to EmailAddress;

alter table employee
drop EmailAddress;

alter table employee
add constraint pk_name primary key(emp_ID);

/*The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.

A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.

The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table. */


create table Orders(         -- create Order table
Order_ID int not null,       -- it allow duplicates but not allow null values
OrderNumber int not null,    -- it allow duplicates but not allow null values
emp_ID int,
primary key(Order_ID),        -- not allow duplicates and not allow values
foreign key (emp_ID) references employee(emp_ID)  -- create foreign key
);

create table product(                -- create product table
product_ID int unique not null,       -- person_id should be unique but not null values
product_name varchar(200) not null,    -- product_name must contain text up to 200 chars and cannot be NULL
cost decimal,              
quantity int
);

     -- retrieves all rows and all columns from the employee table

insert into employee()           -- insert new rows into the values in  employee table 
values (1,'G','Guna','Rayachoty','Kadapa',18),
       (2,'G','ramana','Kvp','Kadapa',25),
       (3,'D','Dhanush','Rvm','Kadapa',20);
       

       

