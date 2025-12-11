
-- Question  pivot table basket transform data each fruits becomes its own column (Apple,Mango,Orange,Guava,Cherry) and values should be
--            'Yes',if the person that thei in list of fruits,otherwise 'No'?


 
--  creating table 

create table basket(                         
person varchar(10),
basket varchar(100)
);

insert into basket() 
values
('A','Apple,Mango,Orange'),
('B','Apple'),
('C','Guava,Cherry'),
('D','Mango,Cherry,Orange')
;

select * from basket;

-- method 1

select 
person,
case when basket like '%Apple%' then 'yes' else 'no' end as Apple,
case when basket like '%Mango%' then 'yes' else 'no' end as Mango,
case when basket like '%Orange%' then 'yes' else 'no' end as Orange,
case when basket like '%Guava%' then 'yes' else 'no' end as Guava, 
case when basket like '%Cherry%' then 'yes' else 'no' end as Cherry
from basket;
    
-- method 2

select
person,

if(find_in_set('Apple',basket)>0,'Yes','No') as Apple,
if(find_in_set('Mango',basket)>0,'Yes','No') as Mango,
if(find_in_set('Orange',basket)>0,'Yes','No') as Orange,
if(find_in_set('Guava',basket)>0,'Yes','No') as Guava,
if(find_in_set('Cherry',basket)>0,'Yes','No') as Cherry
from basket;




