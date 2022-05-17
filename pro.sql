create or replace procedure pname is
begin
dbms_output.put_line('hii');
end;
/


create or replace procedure added(a number,b number) is
s number;
begin
s:=a+b;
dbms_output.put_line('Sum'||s);
end;
/