create database School;

use School;

create table Students(
	Stu_ID int,
    Stu_Name varchar(100)
    );
    
alter table Students
add column Cousrse_ID int;

create table Courses(
	Course_ID int,
    Course_Name varchar(50)
    );
    
show tables;

alter table Students
add constraint PK_Stu_ID
primary key(Stu_ID);

/* to remove contrant
Alter table Table_name
drop constraint contranint_name;
*/

alter table Students
rename column Cousrse_ID to Course_ID;

alter table Courses
add constraint PK_Course_ID
primary key (Course_ID);

alter table Students
add constraint FK_Course_ID
foreign key (Course_ID)
references Courses(Course_ID);

select * from accounts;
select * from branches;

use school;

select * from courses;

describe Students;

insert into courses(Course_ID,Course_Name)
values 
	(101,"Maths"),
    (102,"English"),
    (103,"Language"),
    (104,"Science"),
    (105,"Social"),
    (106,"GK");
    
insert into students
values
	(001,"Rakesh",101),
    (002,"kaushik",102),
    (003,"Ajay",102);
    
insert into students
values
	(004,"Sanjay",107);
    
    select * from Students;
    select * from Students;
    select * from Students;