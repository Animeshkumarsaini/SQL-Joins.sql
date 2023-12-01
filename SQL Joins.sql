-- ""SQL Joins""

-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

-- Different Types of SQL JOINs
-- (INNER) JOIN: Returns records that have matching values in both tables
-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

create table Emp (Emp_Id int, Ename varchar (100), City varchar (100), salary int, Dept varchar(50), MgrID int)

Insert into Emp values(101,'Tom','Delhi',12000,'HR',11)
Insert into Emp values(103,'John','Delhi',12000,'IT',11)
Insert into Emp values(106,'Mike','Mumbai',15000,'Admin',12)
Insert into Emp values(109,'Urmila','Jaipur',14000,'Ops',13)
Insert into Emp values(111,'Urmila','Noida',12500,'Ops',15)
Insert into Emp values(112,'Smith','Indore',16000,'IT',18)
Insert into Emp values(125,'Tom','Pune',8000,'HR',17)
Insert into Emp values(130,'Mike','Mumbai',7500,'Account',12)

Select * from Emp

create table Mgr (Mgr_Id int, Manager varchar (50), Gend_Id int)
Insert into Mgr values(10,'Jay',1)
Insert into Mgr values(11,'Meena',2)
Insert into Mgr values(12,'Rati',2)
Insert into Mgr values(13,'Pooja',1)
Insert into Mgr values(14,'Vikas',1)
Insert into Mgr values(15,'Rahul',0)

select * from Mgr

create table GenderTbl (G_Id int, G_Name varchar (50)) 
Insert into GenderTbl values(1,'Male')
Insert into GenderTbl values(2,'Female')
Insert into GenderTbl values(0,'Not to disclose')
Insert into GenderTbl values(4,'Unknown')
Select * from GenderTbl


Select * from Emp
select * from Mgr
Select * from GenderTbl

-- (INNER) JOIN: Returns records that have matching values in both tables

Select ID,name,D_ID,Incetive,Manager,Gend_Id from Emp
inner join Mgr 
on 
D_id=Mgr_Id

Select * from Emp
select * from Mgr

-- Left Joins: The LEFT JOIN keyword returns all records from the left table (table1), 
-- and the matching records from the right table (table2). 
-- The result is "null" records from the right side, if there is no match.

Select ID,name,D_ID,Incetive,Manager,Gend_Id from Emp
left join Mgr 
on 
D_id=Mgr_Id

Select * from Emp
select * from Mgr


-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table

Select Emp_Id,Ename,City,salary,Dept,MgrID,mgr_id,manager,Gend_id from Emp
left join Mgr 
on 
MgrID=Mgr_Id

Select Ename,MgrID, manager from Emp
left join Mgr 
on 
MgrID=Mgr_Id

-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table

Select Emp_Id,Ename,City,salary,Dept,MgrID,mgr_id,manager,Gend_id from Emp
right join Mgr 
on 
MgrID=Mgr_Id

Select Emp_Id,Ename,City,salary,Dept,MgrID,mgr_id,manager,Gend_id from Emp
right join Mgr 
on 
MgrID=Mgr_Id

-- The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.
-- Tip: FULL OUTER JOIN and FULL JOIN are the same.

Select Emp_Id,Ename,City,salary,Dept,MgrID,mgr_id,manager,Gend_id from Emp
full join Mgr 
on 
MgrID=Mgr_Id

-- SQL FULL OUTER JOIN Keyword

Select Emp_Id,Ename,City,salary,Dept,MgrID,mgr_id,manager,Gend_id from Emp
full outer join Mgr 
on
Emp.MgrID=Mgr.Mgr_Id
where salary < 12000

-- SQL Self Join : A self join is a regular join, but the table is joined with itself.
Select * from Emp
select * from Mgr
Select * from GenderTbl

Select Emp_Id,Ename,City,salary,Dept,MgrID,mgr_id,manager,Gend_id from Emp
cross join Mgr, GenderTbl where salary >12000

-- The SQL UNION Operator
--The UNION operator is used to combine the result-set of two or more SELECT statements.

Select * from Emp
select * from Mgr

Select mgrid from Emp
union
Select mgr_id from Mgr

-- UNION ALL Syntax :
--The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:
Select * from Emp
select * from Mgr
Select * from GenderTbl

Select mgrid from Emp
union all
select Mgr_Id from mgr









