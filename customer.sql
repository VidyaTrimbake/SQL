create table customer1(
customer_name VARCHAR (150), 
Address VARCHAR (1500),
MObile_no VARCHAR(20),
Email VARCHAR (100));

rename customer1 to customer11;
select*from customer11;
insert into customer11 VALUES ('rama','mumbai',9876543,'ramamumbai@gmail.com');
insert into customer11 VALUES ('sham','pune',865738,'shampune@gmail.com');
insert into customer11 VALUES ('kailas','nagar',8464873,'kailasnagar@gmail.com');
insert into customer11 VALUES ('gita','satara',327652,'ditasatara@gmail.com');
insert into customer11 VALUES ('abhya','karad',356528,'abhya@gmail.com');
insert into customer11 VALUES ('rohan','karad',18337,'rohan@gmail.com');

select*from customer11;
delete from customer11 where customer_name='rama';
delete from customer11 where customer_name='rama' and address='mumbai';
alter table customer11 add age VARCHAR (10);
alter table customer11 add abc VARCHAR (10);
ALTER TABLE customer11 DROP COLUMN age;
desc customer11;
ALTER TABLE customer11 MODIFY  age INT;
ALTER TABLE customer11 DROP COLUMN age;
UPDATE CUSTOMER11 SET AGE ='19' WHERE CUSTOMER_NAME ='sham';
alter table customer11 rename to customer111;
select*from customer111;
select max (mobile_no) from customer111;
select max (mobile_no) from customer111 where mobile_no <(select max (mobile_no) from customer111);
select min(mobile_no) from customer111;
alter table customer111 rename column age to agee;
select avg (mobile_no)from customer111;
ALTER TABLE customer111 DROP COLUMN agee;
desc customer111;
ALTER TABLE customer111 DROP COLUMN email;
select Distinct ADDRESS from customer111;
SELECT distinct address from customer111;
select distinct *from customer111;
select *from customer111 where email like '%d%'; 
select *from customer111 order by MOBILE_NO desc;
select MOBILE_NO from customer111 order by MOBILE_NO asc; 
select *from customer111 order by MOBILE_NO asc;
