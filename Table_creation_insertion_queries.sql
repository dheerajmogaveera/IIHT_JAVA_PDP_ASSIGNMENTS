create database cogniAssignments;
use cogniAssignments;

/* worker table */

create table worker(worker_id int primary key,first_name varchar(20),last_name varchar(20),salary int,joining_date date,department varchar(20));

INSERT INTO `cogniassignments`.`worker` (`worker_id`, `first_name`, `last_name`, `salary`, `joining_date`, `department`) VALUES ('001', 'Monika', 'Arora', '100000', '2014-02-20 09:00:00 ', 'HR');
INSERT INTO `cogniassignments`.`worker` (`worker_id`, `first_name`, `last_name`, `salary`, `joining_date`, `department`) VALUES ('02', 'Niharika', 'Verma', '80000', '2014-06-11 09:00:00', 'Admin');
INSERT INTO `cogniassignments`.`worker` (`worker_id`, `first_name`, `last_name`, `salary`, `joining_date`, `department`) VALUES ('003', 'Vishal', 'Singhal', '300000', '2014-02-20 09:00:00', 'HR');
INSERT INTO `cogniassignments`.`worker` (`worker_id`, `first_name`, `last_name`, `salary`, `joining_date`, `department`) VALUES ('004', 'Amitabh', 'Singh', '500000', '2014-02-20 09:00:00', 'Admin');
INSERT INTO `cogniassignments`.`worker` (`worker_id`, `first_name`, `last_name`, `salary`, `joining_date`, `department`) VALUES ('005', 'Vivek', 'Bhati', '500000', '2014-06-11 09:00:00', 'Admin');
INSERT INTO `cogniassignments`.`worker` (`worker_id`, `first_name`, `last_name`, `salary`, `joining_date`, `department`) VALUES ('006', 'Vipul', 'Diwan', '200000', '2014-06-11 09:00:00', 'Account');
INSERT INTO `cogniassignments`.`worker` (`worker_id`, `first_name`, `last_name`, `salary`, `joining_date`, `department`) VALUES ('07', 'Satish', 'Kumar', '75000', '2014-01-20 09:00:00', 'Account');
INSERT INTO `cogniassignments`.`worker` (`worker_id`, `first_name`, `last_name`, `salary`, `joining_date`, `department`) VALUES ('08', 'Geetika', 'Kumar', '90000', '2014-04-11 09:00:00', 'Admin');

/* bonus table */
create table bonus(worker_ref_id int ,bonus_date date,bonus_amount int  ,
constraint fk_bonus foreign key(worker_ref_id) references worker(worker_id));

insert into bonus(worker_ref_id,bonus_date,bonus_amount)
 values(1,str_to_date('2016-02-20','%Y-%m-%d'),5000);
 insert into bonus(worker_ref_id,bonus_date,bonus_amount)
 values(2,str_to_date('2016-06-11','%Y-%m-%d'),3000);
 insert into bonus(worker_ref_id,bonus_date,bonus_amount)
 values(3,str_to_date('2016-02-20','%Y-%m-%d'),4000);
 insert into bonus(worker_ref_id,bonus_date,bonus_amount)
 values(1,str_to_date('2016-02-20','%Y-%m-%d'),4500);
 insert into bonus(worker_ref_id,bonus_date,bonus_amount)
 values(2,str_to_date('2016-06-11','%Y-%m-%d'),3500);
 
/*title table*/

 create table title(worker_ref_id int ,worker_title varchar(20), affected_from date  ,
constraint fk_title foreign key(worker_ref_id) references worker(worker_id));

insert into title(worker_ref_id,worker_title,affected_from)
 values(1,'Manager',str_to_date('2016-06-20','%Y-%m-%d'));
 insert into title(worker_ref_id,worker_title,affected_from)
 values(2,'Executive',str_to_date('2016-06-11','%Y-%m-%d'));
 insert into title(worker_ref_id,worker_title,affected_from)
 values(8,'Executive',str_to_date('2016-06-11','%Y-%m-%d'));
 insert into title(worker_ref_id,worker_title,affected_from)
 values(5,'Manager',str_to_date('2016-06-11','%Y-%m-%d'));
 insert into title(worker_ref_id,worker_title,affected_from)
 values(4,'Asst. Manager',str_to_date('2016-06-11','%Y-%m-%d'));
 insert into title(worker_ref_id,worker_title,affected_from)
 values(7,'Executive',str_to_date('2016-06-11','%Y-%m-%d'));
 insert into title(worker_ref_id,worker_title,affected_from)
 values(6,'Lead',str_to_date('2016-06-11','%Y-%m-%d'));
 insert into title(worker_ref_id,worker_title,affected_from)
 values(3,'Lead',str_to_date('2016-06-11','%Y-%m-%d'));
 
 
