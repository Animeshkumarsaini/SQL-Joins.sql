![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/9c21f16a-5efd-4aba-97da-ee96c60e1984)# SQL-Joins.sql
# What is Joins in SQL ?
-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
# Different Types of SQL JOINs
-- (INNER) JOIN: Returns records that have matching values in both tables
-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

# Table Creating for data:
# Table 1:
-- create table Emp (Emp_Id int, Ename varchar (100), City varchar (100), salary int, Dept varchar(50), MgrID int)
# inserting data into the table:
Insert into Emp values(101,'Tom','Delhi',12000,'HR',11)
Insert into Emp values(103,'John','Delhi',12000,'IT',11)
Insert into Emp values(106,'Mike','Mumbai',15000,'Admin',12)
Insert into Emp values(109,'Urmila','Jaipur',14000,'Ops',13)
Insert into Emp values(111,'Urmila','Noida',12500,'Ops',15)
Insert into Emp values(112,'Smith','Indore',16000,'IT',18)
Insert into Emp values(125,'Tom','Pune',8000,'HR',17)
Insert into Emp values(130,'Mike','Mumbai',7500,'Account',12)

# Table preview: 

![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/d0c621fc-c2f0-4cb2-a7f6-04b989a98c97)

