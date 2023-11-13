create database MyFirstSQL;

use MyFirstSQL;

show databases;


show databases;

create table student_table(
student_id INT,
student_name VARCHAR(100),
course_name VARCHAR(40)
);

show tables ;

describe student_table;

alter table student_table add email VARCHAR(100);

describe student_table ;

truncate table student_table ;

insert into student_table (student_id , student_name , course_name , email)
values (1 , "Mohamed Salah" , "System Analysis" , "Mohamed@gmail.com");

insert into student_table (student_id , student_name , course_name , email)
values (1 , "Ahmed Moamen" , "Electric Circuits" , "Ahmed@gmail.com");

insert into student_table (student_id , student_name , course_name , email)
values (1 , "Ahmed Salah" , "Network" , "Ahmed@gmail.com");

select * from student_table;

select * from student_table where email = "Mohamed@gmail.com"; 





