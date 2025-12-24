create table employ(
Emp_id int primary key,
Emp_name varchar(200),
dept_id int
);

insert into employ 
values(1,'guna',101),
      (2,'govind',102),
	  (3,'jathin',103),
	  (4,'dhanush',104),
	  (5,'gowtham',105),
	  (6,'varun',106),
	  (7,'dhanu',107);
      
      select * from employ;
      
      create table dept(
      dept_id int primary key,
      dept_name varchar(200)
      );
      insert into dept 
      values(101,'HR'),
			(102,'IT'),
			(105,'Non-IT');
		
        select * from dept;
        
        
-- Inner Join -- returns only the records that have matching values in both tables.

-- Q) - Display employee name along with department name for employees who are assigned to a department.
select e.emp_name,d.dept_name
from employ e
inner join dept d
on e.dept_id=d.dept_id
-- Left Join -- returns all records from the left table and matching ones from the right table.

-- Q) - Display all employees and their department names
      
      select e.emp_name,d.dept_name
      from employ e
      left join dept d
      on e.dept_id=d.dept_id
-- Right join --returns all records from the right table and matching ones from the left table.

-- Q) - Display all departments and their employees. 
      
      select e.emp_name,d.dept_name
      from employ e
      right  join dept d
      on e.dept_id=d.dept_id
      
-- FULL Join --FULL JOIN returns all records from both tables.

-- Q) - Display all employees and all department
select e.emp_name,d.dept_name
      from employ e
      left join dept d
      on e.dept_id=d.dept_id
      
      union all
      
       select e.emp_name,d.dept_name
      from employ e
      right  join dept d
      on e.dept_id=d.dept_id

      
      -- cross join:- A cross join combines each row of one table with every row of another table 
      select e.emp_name,d.dept_name
      from employ e
      cross  join dept d
      