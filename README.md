# SQL-Joins
# What is Joins in SQL ?
-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.<br />
# Different Types of SQL JOINs
-- (INNER) JOIN: Returns records that have matching values in both tables<br />
-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table.<br/>
-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table. <br />
-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table. <br />

# Table Creating for data:
# Table 1 (Emp) :
-- create table Emp (Emp_Id int, Ename varchar (100), City varchar (100), salary int, Dept varchar(50), MgrID int)
# inserting data into the table:
--Insert into Emp values(101,'Tom','Delhi',12000,'HR',11)
--Insert into Emp values(103,'John','Delhi',12000,'IT',11)
--Insert into Emp values(106,'Mike','Mumbai',15000,'Admin',12)
--Insert into Emp values(109,'Urmila','Jaipur',14000,'Ops',13)
--Insert into Emp values(111,'Urmila','Noida',12500,'Ops',15)
--Insert into Emp values(112,'Smith','Indore',16000,'IT',18)
--Insert into Emp values(125,'Tom','Pune',8000,'HR',17)
--Insert into Emp values(130,'Mike','Mumbai',7500,'Account',12)

# Table view with "Select command"
--Select * from Emp
# Table preview: 
![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/d0c621fc-c2f0-4cb2-a7f6-04b989a98c97)

# Table 2 (Mgr): 

--create table Mgr (Mgr_Id int, Manager varchar (50), Gend_Id int)
--Insert into Mgr values(10,'Jay',1)
--Insert into Mgr values(11,'Meena',2)
--Insert into Mgr values(12,'Rati',2)
--Insert into Mgr values(13,'Pooja',1)
--Insert into Mgr values(14,'Vikas',1)
--Insert into Mgr values(15,'Rahul',0)

# Table view with "Select command"
--Select * from Mgr
# Table preview: 
![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/2f4a5cdc-96a6-4022-bbc1-40e364956ea0)

# Table 3 (Mgr): 

# INNER JOIN: 
--Returns records that have matching values in both tables.
# Syntax
SELECT columns (enter as many required)    
FROM table1    
INNER JOIN table2 
ON 
condition 

# Code 
> table 1 -- Select * from Emp
> table 2 -- select * from Mgr
> code for Inner jpin
--Select Emp_Id,Ename, salary,Manager, city, Dept from Emp ( table 1: emp)
--Inner join Mgr ( table 2: Mgr)
--on
--MgrID = Mgr_Id  ( condition)
![image](https://github.com/Animeshkumarsaini/SQL-Joins.sql/assets/143740775/c4728c9c-c93f-44b0-b6be-9bb841d46dbb)



 

