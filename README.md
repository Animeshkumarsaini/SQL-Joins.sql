# SQL-Joins
# What is Joins in SQL ?
-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.<br/>
# Different Types of SQL JOINs
-- (INNER) JOIN: Returns records that have matching values in both tables.<br/>
-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table.<br/>
-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table. <br/>
-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table. <br/>

# Table Creating for data:<br/>
# Table 1 (Emp) :<br/>
-- create table Emp (Emp_Id int, Ename varchar (100), City varchar (100), salary int, Dept varchar(50), MgrID int)<br/>
# inserting data into the table:<br/>
Insert into Emp values(101,'Tom','Delhi',12000,'HR',11) <br/>
Insert into Emp values(103,'John','Delhi',12000,'IT',11) <br/>
Insert into Emp values(106,'Mike','Mumbai',15000,'Admin',12) <br/>
Insert into Emp values(109,'Urmila','Jaipur',14000,'Ops',13) <br/>
Insert into Emp values(111,'Urmila','Noida',12500,'Ops',15) <br/>
Insert into Emp values(112,'Smith','Indore',16000,'IT',18) <br/>
Insert into Emp values(125,'Tom','Pune',8000,'HR',17) <br/>
Insert into Emp values(130,'Mike','Mumbai',7500,'Account',12) <br/>

# Table view with "Select command"<br/>
--Select * from Emp<br/>
# Table preview: <br/>
![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/d0c621fc-c2f0-4cb2-a7f6-04b989a98c97)

# Table 2 (Mgr): <br/>

create table Mgr (Mgr_Id int, Manager varchar (50), Gend_Id int)<br/>
Insert into Mgr values(10,'Jay',1)<br/>
Insert into Mgr values(11,'Meena',2)<br/>
Insert into Mgr values(12,'Rati',2)<br/>
Insert into Mgr values(13,'Pooja',1)<br/>
Insert into Mgr values(14,'Vikas',1)<br/>
Insert into Mgr values(15,'Rahul',0)<br/>

# Table view with "Select command"<br/>
--Select * from Mgr<br/>
# Table preview: <br/>
![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/2f4a5cdc-96a6-4022-bbc1-40e364956ea0)

# Table 3 (Mgr): <br/>

# INNER JOIN: <br/>
--Returns records that have matching values in both tables.<br/>
![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/69426aa1-2d85-4ea5-b8bb-108845628854)

# Syntax<br/>
SELECT columns (enter as many required)    <br/>
FROM table1    <br/>
INNER JOIN table2 <br/>
ON <br/>
condition <br/>

# Inner Join on table 1 (Emp) & table 2 (Mgr)
> table 1 -- Select * from Emp<br/>
> table 2 -- select * from Mgr<br/>
> # Code <br/>
Select Emp_Id,Ename, salary,Manager, city, Dept from Emp ( table 1: emp)<br/>
Inner join Mgr ( table 2: Mgr)<br/>
on<br/>
MgrID = Mgr_Id  ( condition)<br/>
![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/c4728c9c-c93f-44b0-b6be-9bb841d46dbb)

# Left Join: <br/>
The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2).<br/> The result is 0 records from the right side, if there is no match.<br/>

# Note: In some databases LEFT JOIN is called "LEFT OUTER JOIN".<br/>
![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/8dba9a42-2279-408d-828d-0c8f467cbf94)

# Syntax: 
SELECT column_name(s)...<br/> from table1<br/>
LEFT JOIN table2<br/>
ON table1.column_name = table2.column_name;<br/>

## Inner Join on table 1 (Emp) & table 2 (Mgr)
> # table 1 -- Select * from Emp<br/>
![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/487027f1-7e33-432d-b98f-10017c185332)

># table 2 -- select * from Mgr<br/>
![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/825e7861-a2bd-4333-b4d2-260a66b9b361)

> # Code <br/>
Select Emp_Id,Ename, salary,Manager, city, Dept from Emp ( table 1: emp)<br/>
Left join Mgr ( table 2: Mgr)<br/>
on<br/>
MgrID = Mgr_Id  ( condition)<br/>

# Left Join Resut
![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/6c96de9e-4aaf-4649-a492-8cd02e21859f)

-# Result:
-  Return all records from the left table with matched records from the right table and null values for any rows which cannot be matched, as such it's my understanding that it should be impossible to return more rows than exist in the left table, but it's happening all the same!




 

