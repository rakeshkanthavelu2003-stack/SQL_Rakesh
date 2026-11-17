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