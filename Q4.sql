PROG 4:   Create a table and execute TCL statements
(commit,rollback,savepoint)
solution 4:
SQL> create table employee(empid int primary key,empname varchar(20),deptid int,
salary float);

Table created.


SQL> insert into employee values(3,'Madhu',103,35000);

1 row created.

SQL> insert into employee values(4,'Rose',103,40000);

1 row created.

SQL> insert into employee values(5,'Megha',104,23000);

1 row created.
SQL> delete from employee where empid=3;

1 row deleted.

SQL> select * from employee;

     EMPID EMPNAME                  DEPTID     SALARY
---------- -------------------- ---------- ----------
         4 Rose                        103      40000
         5 Megha                       104      23000

SQL> rollback;

Rollback complete.

SQL> select * from employee;

     EMPID EMPNAME                  DEPTID     SALARY
---------- -------------------- ---------- ----------
         3 Madhu                       103      35000
         4 Rose                        103      40000
         5 Megha                       104      23000


SQL> insert into employee values(1,'milu',101,45000);

1 row created.

SQL> savepoint a;

Savepoint created.
SQL> insert into employee values(8,'navami',101,23000);

1 row created.

SQL> savepoint b;

Savepoint created.

SQL> insert into employee values(9,'nami',103,45000);

1 row created.

SQL> savepoint c;

Savepoint created.

SQL> select * from employee;

     EMPID EMPNAME                  DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 milu                        101      45000
         3 Madhu                       103      35000
         4 Rose                        103      40000
         5 Megha                       104      23000
         8 navami                      101      23000
         9 nami                        103      45000

6 rows selected.

SQL> rollback to a;

Rollback complete.

SQL> select * from employee;

     EMPID EMPNAME                  DEPTID     SALARY
---------- -------------------- ---------- ----------
         1 milu                        101      45000
         3 Madhu                       103      35000
         4 Rose                        103      40000
         5 Megha                       104      23000