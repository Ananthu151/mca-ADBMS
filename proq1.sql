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
