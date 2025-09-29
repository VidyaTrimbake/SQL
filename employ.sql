create table customer_information(
customer_name VARCHAR (150), 
Address VARCHAR (500),
MObile_no VARCHAR(10),
Email VARCHAR (100));

DESCRIBE customer_information;
select * from customer_information;
insert into customer_information VALUES('rsff','srrsrt',676667776,'huhhh');
insert into customer_information VALUES('dhgh','fbgjj',947777985,'gdfhff');
insert into customer_information VALUES('rsff','srrsrt',676667776,'fsfg');
insert into customer_information VALUES('rsff','srrsrt',676667776,'hfhst');
insert into customer_information VALUES('rsff','srrsrt',676667776,'ttst');
select*from customer_information;

alter table customer_information add customer_id varchar(20);
alter table customer_information MODIFY customer char(20);

update customer_information set customer_id= '1' where customer_name='dhgh';
alter rename to customer_information 

select*from customer_information;