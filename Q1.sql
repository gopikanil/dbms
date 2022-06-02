QUESTION 1:
a) Create a
table Student with fields (RollNo,Name,Course,Year)


b) Alter table


c) Drop table



d)Truncate table


Write necessary
query statements

SQL> create table student(rollno int,name varchar(20),course varchar(20),year int);

Table created.
SQL> insert into student values(1,'Aiswarya','MCA','2021');

1 row created.

SQL> insert into student values(2,'Biby','MCA','2021');

1 row created.

SQL> insert into student values(3,'Ciyona','MCA','2021');

1 row created.

SQL> insert into student values(4,'Diya','MCA','2021');

1 row created.

SQL> insert into student values(5,'Ebin','MCA','2021');

1 row created.

SQL> select * from student;

    ROLLNO NAME                 COURSE                     YEAR
---------- -------------------- -------------------- ----------
         1 Aiswarya             MCA                        2021
         2 Biby                 MCA                        2021
         3 Ciyona               MCA                        2021
         4 Diya                 MCA                        2021
         5 Ebin                 MCA                        2021

SQL> alter table student ADD  PRIMARY KEY(rollno);

Table altered.


SQL> truncate table student;

Table truncated.

SQL> select * from student;

no rows selected
SQL> drop table student;

Table dropped.

SQL> select * from student;
select * from student
              *
ERROR at line 1:
ORA-00942: table or view does not exist






