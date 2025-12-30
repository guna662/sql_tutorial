CREATE TABLE Employe (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employe VALUES
(1, 'Amit', 'HR', 40000),
(2, 'Riya', 'HR', 45000),
(3, 'Neha', 'HR', 50000),
(4, 'Rahul', 'HR', 55000),

(5, 'Suresh', 'IT', 60000),
(6, 'Anita', 'IT', 65000),
(7, 'Vikram', 'IT', 70000),
(8, 'Pooja', 'IT', 75000),
(9, 'Karan', 'IT', 80000),

(10, 'Meena', 'Sales', 30000),
(11, 'Rohit', 'Sales', 35000),
(12, 'Nisha', 'Sales', 40000);


select * from employe;
-- question:- 
-- Show departments having more than 3 employees and average salary greater than 50,000.

SELECT department,avg(salary) as avg_salary
from employe
where salary>50000
group by department
having count(*)>3;


