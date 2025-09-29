create table customer_01(
customer_name varchar (150),
address varchar(50),
movile_no varchar(29),
email_id varchar(30));

SELECT * FROM customer_01;
desc customer_01;
RENAME customer_01 to cust;
INSERT INTO cust VALUES ('raj','pune','986544578','hfhffiuhe@gmail.com');
SELECT * FROM cust;
INSERT INTO cust VALUES ('ram','mumbai','469737332','ghdfhine@gmail.com');
INSERT INTO cust VALUES ('sham','nashik','88765467','fsffdfs@gmail.com');
INSERT INTO cust VALUES ('sita','kolkata','67547543','fdfsffv@gmail.com');
INSERT INTO cust VALUES ('gita','pune','70764328','mhgdgyfb@gmail.com');
INSERT INTO cust VALUES ('arti','pune','90567321','kgdfyeef@gmail.com');

SELECT address FROM cust;
update cust set address = 'nashik' where customer_name= 'raj';
DELETE cust where address = 'nashik';