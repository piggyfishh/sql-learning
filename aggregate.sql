use olympics;

select count(FullName) from athletes;
select * from athletes;

insert into athletes(FullName, Gender, DateOfBirth, CountryID) VALUES(NULL,'Male','1990-01-24',3);
# aggregate method is 
## Count - skip null

# SUM 
select * from athletes;
select sum(CountryID) from athletes;

# AVG
select AVG(CountryID) from athletes;

# min

# max


CREATE SCHEMA empdata;
use empdata;

create table emp(
EmpID int primary key auto_increment,
EmpName varchar(100)
);

create table empsalary(
SalaryID int primary key auto_increment,
EmpID int,
Salary int
);


create table empDept(
deptId int primary key auto_increment,
dname varchar(30)
);

insert into empDept(dname) values ('IT');
insert into empDept(dname) values ('HR');

create table empDeptMapping(
MappingId int primary key auto_increment,
EmpId int,
DeptId int
);

insert into empDeptMapping(EmpId, DeptId) values(1,1);
insert into empDeptMapping(EmpId, DeptId) values(2,1);
insert into empDeptMapping(EmpId, DeptId) values(3,2);
insert into empDeptMapping(EmpId, DeptId) values(4,2);
insert into empDeptMapping(EmpId, DeptId) values(5,1);
insert into empDeptMapping(EmpId, DeptId) values(6,2);


insert into emp (EmpName) Values('Sonya');
insert into emp (EmpName) Values('Sarina');
insert into emp (EmpName) Values('Rojin');
insert into emp (EmpName) Values('Vaibhav');
insert into emp (EmpName) Values('James');
insert into emp (EmpName) Values('Sachin');

insert into empsalary(EmpID, Salary) Values(1,140000);
insert into empsalary(EmpID, Salary) Values(2,150000);
insert into empsalary(EmpID, Salary) Values(3,145000);
insert into empsalary(EmpID, Salary) Values(4,100000);
insert into empsalary(EmpID, Salary) Values(5,200000);
insert into empsalary(EmpID, Salary) Values(6,670000);


select * from empsalary;

select a.EmpName, b.Salary from emp a
inner join empsalary b
on a.EmpID = b.EmpId
where b.Salary < (select avg(Salary) from empsalary);

select min(Salary) from empsalary;

# max salary in each depart
# min salary in each depart



