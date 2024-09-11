create table student
(
rollno int unique,
sname char(10) default 'unknown',
course varchar(20) not null,
dno number(20) primary key,
dob date
);
drop table student;
desc student;
insert into student values(1,'shilpa','dba',101,'12-sep-2000');
insert into student values(2,'shweta','dba',102,'10-oct-2000');
--insert into student values('&rollno','&sname','&course','&dno','&dob');

select * from student;
delete from student;
alter table student add phno number(10);
update student
set phno='1243658709'
where rollno=1;

update student
set phno='0989687542'
where rollno=2;

delete from student 
where sname='shweta';

create table Department 
(
dname char(20),
dnumber number(20),
dlocation varchar(20),
primary key (dnumber),
foreign key (dnumber) references student(dno)
);
drop table department;