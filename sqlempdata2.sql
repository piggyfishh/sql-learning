# rank, dense rank

use empdata;
Select *  from empdept;


with salarydata as
(
Select e.Empname, 
es.Salary ,
ed.dname,
RANK() OVER (partition by ed.dname Order by es.Salary asc) as SalaryRank
from empsalary es 
inner join emp e on es.EmpId = e.EmpId 
inner join empdeptmapping edm on es.EmpId = edm.EmpId
inner join empdept ed on ed.deptId = edm.DeptId
)
Select * from salarydata where SalaryRank = 2




Select e.Empname, 
es.Salary ,
DENSE_RANK() OVER (Order by es.Salary desc) as SalaryRank
from empsalary es 
inner join emp e on es.EmpId = e.EmpId;




Select e.Empname, es.Salary from empsalary es 
inner join emp e on es.EmpId = e.EmpId  and es.Salary in (Select max(Salary) from empsalary)


select * from empsalary 

update empsalary set Salary =150000 where SalaryId =3



