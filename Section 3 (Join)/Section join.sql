CREATE database JoinTable;

use JoinTable;

show databases ;


CREATE TABLE DataOfCustomer(

custid     VARCHAR(6) primary key ,
fname      VARCHAR(30) ,
mname      VARCHAR(30) ,
ltname     VARCHAR(30) ,
city       VARCHAR(15) ,
age        int(10),
mobileNum  VARCHAR(10) ,
occupation VARCHAR(10) ,
dob 	   DATE


);


Create Table customer (

custid     VARCHAR(6) ,
fname      VARCHAR(30) ,
mname      VARCHAR(30) ,
ltname     VARCHAR(30) ,
city       VARCHAR(15) ,
age        int(10),
mobileNum  VARCHAR(11) ,
occupation VARCHAR(10) ,
dob 	   DATE,
constraint customer_custid_pk primary key(custid)

);



CREATE TABLE account(

acnumber         VARCHAR(10),
custid 	         VARCHAR(10),
bid              VARCHAR(10),
openning_balance INT(7),
aod 			 DATE,
atype    		 VARCHAR(10),
astatus		     VARCHAR(10),
constraint account_acnumber_pk primary key(acnumber),
constraint account_custid_pk foreign key(custid) references customer(custid)

);

insert into customer VALUES('C00001' , 'Mohamed' , 'Salah' , 'Abdulhamid' , 'Cairo' ,20 ,  '01025581235' , 'Service', '2022-06-15');

insert into customer VALUES('C00002' , 'Ahmed' , 'Mohamed' , 'Wael' , 'ALex' , 30 ,'01125581235' , 'Student', '2022-08-15');

insert into customer VALUES('C00003' , 'Ali' , 'Said' , 'Mohamed' , 'Giza' , 18 ,'01038481235' , 'Student', '2022-06-30');

insert into customer VALUES('C00004' , 'Mahmoud' , 'Ali' , 'Yousef' , 'Aswan' , 28 ,'01025123535' , 'Service', '2022-01-01');

insert into customer VALUES('C00005' , 'Sayed' , 'Mahmoud' , 'Ayman' , 'Cairo' , 60 ,'01025577895' , 'Student', '2022-12-17');

insert into customer VALUES('C00006' , 'Noura' , 'Saif' , 'Bakr' , 'Minya' , 55 ,'01525581235' , 'Service', '2022-08-05');





insert into account VALUES('A00001' , 'C00001' , 'B00001' , 1000 , '2022-06-15' , 'Saving', 'Active');

insert into account VALUES('A00002' , 'C00002' , 'B00002' , 1000 , '2022-08-15' , 'Saving', 'Suspended');

insert into account VALUES('A00003' , 'C00003' , 'B00003' , 1000 , '2022-06-30' , 'Saving', 'Terminated');

insert into account VALUES('A00004' , 'C00004' , 'B00004' , 1000 , '2022-12-17' , 'Saving', 'Active');

insert into account VALUES('A00005' , 'C00005' , 'B00005' , 1000 , '2022-01-01' , 'Saving', 'Terminated');



select * from customer ;

select * from account ;


select fname , ltname from customer inner join account on customer.custid = account.custid;




SET SQL_SAFE_UPDATES = 0 ; 
drop database JoinTable;
