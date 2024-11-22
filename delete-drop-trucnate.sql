## What is difference between delete , drop and trucate ? 80% 

use hospital;

create table student(
StudentId int auto_increment primary key,
StudentName varchar(30),
StudentCity varchar(30)
);

insert into student(StudentName, StudentCity) Values ("student1","city1");
insert into student(StudentName, StudentCity) Values ("student2","city1");
insert into student(StudentName, StudentCity) Values ("student3","city1");
insert into student(StudentName, StudentCity) Values ("student4","city1");
insert into student(StudentName, StudentCity) Values ("student5","city1");
insert into student(StudentName, StudentCity) Values ("student16","city1");
insert into student(StudentName, StudentCity) Values ("student78","city1");

# specific data. , delete command do not reset auto increemtn to 0
Delete from student where StudentId = 5;
Delete from student; # DML

# truncate reset auto increment number to 0
truncate table student;  # DDL
#  backend = Drop  + Create

# drop command - delete your table from schem
drop table student; # DDL


select * from student;


