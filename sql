create table loans(accno int,cust_name varchar(50),loan_amount number,instalments int,int_rate number(10,2),start_date date,interest int);
insert into loans values(1,'R.K Gupta',300000,36,12.00,'19-jul-09',1200);
insert into loans values(2,'R.K Gupta',300000,36,12.00,'19-jul-09',1200);
insert into loans values(3,'R.K Gupta',300000,36,12.00,'19-jul-09',1200);
insert into loans values(4,'R.K Gupta',300000,36,12.00,'19-jul-09',1200);
insert into loans values(5,'R.K Gupta',300000,36,12.00,'19-jul-09',1200);
insert into loans values(6,'R.K Gupta',300000,36,12.00,'19-jul-09',1200);
insert into loans values(&acno,'&name',&loan,&inta,&rate,'&date',&inter);