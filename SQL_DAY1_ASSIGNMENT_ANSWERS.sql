use cogniassignments;

/* Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>. */
Select first_name AS WORKER_NAME from worker;

/* Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case. */
Select upper(first_name) from Worker;

/* Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.*/
select distinct department from worker;

/* Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.*/
Select substring(first_name,1,3) from worker;

/* Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.*/
Select INSTR(first_name, BINARY'a') as position_of_char_a_in_Amitabh from worker where first_name = 'Amitabh';

/* Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side. */
Select RTRIM(first_name) from worker;

/*  Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.*/
Select LTRIM(department) from worker;

/* Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length. */
Select distinct length(department) from worker;

/* Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’. */
Select REPLACE(first_name,'a','A') as first_name from worker;

/*  Q-10.Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.*/
Select CONCAT(first_name, ' ', last_name) AS complete_name from worker;

/* Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending. */
Select * from worker order by first_name asc;

/* Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.*/
Select * from worker order by first_name asc,department desc;

/* Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.*/
Select * from worker where first_name in ('Vipul','Satish');

/* Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.*/
Select * from worker where first_name not in ('Vipul','Satish');

/* Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.*/
select * from worker where department='Admin';

/* Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’. */
select * from worker where first_name like '%a%';

/* Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.*/
select * from worker where first_name like '%a';

/* Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.*/
select * from worker where first_name like '_____h';

/* Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.*/
select * from worker where salary between 100000 and 500000;

/* Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.*/
Select * from worker where year(joining_date) = 2014 and month(joining_date) = 2;

/* Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.*/
select count(*) as count_of_admin from worker where department='Admin';

/* Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.*/
select concat(first_name,' ',last_name) as worker_name from worker where salary>=50000 and salary<=100000;

/* Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.*/
select department,count(department) as count from worker group by department order by count desc;

/* Q-24. Write an SQL query to print details of the Workers who are also Managers.*/
select distinct w.first_name, t.worker_title from worker w inner join title t 
on w.worker_id = t.worker_ref_id and t.worker_title in ('Manager');

/* Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.*/
select worker_title, affected_from, count(*)  as count from title group by worker_title, affected_from
having count(*) > 1;

/* Q-26. Write an SQL query to show only odd rows from a table.*/
select * from worker where mod (worker_id, 2) <> 0;

/* Q-27. Write an SQL query to show only even rows from a table.*/
select * from worker where mod (worker_id, 2) = 0;

/* Q-28. Write an SQL query to clone a new table from another table.*/
select * into worker_clone from worker;

/* Q-29. Write an SQL query to fetch intersecting records of two tables.*/
(select worker_id from worker) intersect (select worker_ref_id FROM bonus);

/* Q-30. Write an SQL query to show records from one table that another table does not have.*/
(select * from worker)
minus
(select * from title);











