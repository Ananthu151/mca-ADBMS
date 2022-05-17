declare
cursor c is select * from bill;
begin
for i in c
loop
if i.unit<100
then
update bill set amount=i.unit*3 where billno=i.billno;
elsif i.unit>100 and i.unit<200
then
update bill set amount=i.unit*4 where billno=i.billno;
else
update bill set amount=i.unit*5 where billno=i.billno;
end if;
end loop;
end;
/