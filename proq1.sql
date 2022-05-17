create or replace procedure withdraw(ac number,amount number) is
begin
update account set balance=balance-amount where acno=ac;
end;
/

create or replace procedure deposit(ac number,amount number) is
begin
update account set balance=balance+amount where acno=ac;
end;
/

create or replace procedure balance(ac number) is
cursor c is select * from account where acno=ac;
r c%rowtype;
begin
open c;
loop
fetch c into r;
exit when c%notfound;
dbms_output.put_line(r.acno||r.name||r.balance);
end loop;
end;
/

declare
n number;
i number:=0;
am number;
ac number;
begin
while i<1
loop
	dbms_output.put_line('1:withdraw');
	dbms_output.put_line('2:deposit');
	dbms_output.put_line('3:balance');
	dbms_output.put_line('4:Exit');
	&n;
	if n=1
		then
		dbms_output.put_line('Enter Account number:');
		&ac;
		dbms_output.put_line('Enter Amount:');
		&am;
		withdraw(ac,am);
	elsif n=2
		then
		dbms_output.put_line('Enter Account number:');
		&ac;
		dbms_output.put_line('Enter Amount:');
		&am;
		deposit(ac,am);
	elsif n=3
		then
		dbms_output.put_line('Enter Account number:');
		&ac;
		balance(ac);
	else
		then
		i:=1;
		end if;
end loop;
end;
/




declare
am number;
ac number;
c number;
begin
ac:=&ac;
am:=&am;
c:=&c;
if c=1
then
withdraw(ac,am);
elsif c=2
then
deposit(ac,am);
else
balance(ac);
end if;
end;
/




create or replace procedure balance(ac number) is
cursor c is select * from account where acno=ac;
begin
for i in c
loop
dbms_output.put_line(i.acno||i.name||i.balance);
end loop;
end;
/