use PHCDC
CREATE TABLE Students (regno int, stname varchar(50), sqlmark int, pythonmark int, total int)

--a.	Insert any five records (Note: insert null records to the total column)
insert into Students values ('', '', '', '', '')
insert into Students values (101, 'abu', 12, 23, '')
insert into Students values (102, 'ali', 45, 21, '')
insert into Students values (103, 'aru', 14, 26, '')
insert into Students values (104, 'asan', 45, 89, '')
insert into Students values (105, 'awa', 23, 46, '')

--b.	Update the total column. (Note:  total= sqlmark+pythonmark) 
select sqlmark, pythonmark from Students 
update Students set total = sqlmark + pythonmark

--c.	Display all student records
select * from Students

--d.	Display number of records in student table (Note: Count student)
select count(*) from Students

--e.	Display the student records whose got lowest mark in sql subject (Note: min mark)
SELECT * FROM Students WHERE sqlmark = (select min(sqlmark) from Students)

--f.	Display the student records whose got highest mark in python subject (Note: max mark)
SELECT * FROM Students WHERE pythonmark = (select max (pythonmark) from Students)

--g.	Display the sum of  value of total column
select SUM (total) from Students

--h.	Display the average value of total column
select AVG (total) from Students
