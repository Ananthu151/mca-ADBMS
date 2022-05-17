declare
cursor c is select * from bank;
begin
for i in c
loop
if i.amount<1000
then
update bank set intrate=i.amount*.1 where amount=i.amount;
elif i.amount>1000 and i.amount<5000
then
update bank set intrate=i.amount*.2 where amount=i.amount;
else
then
update bank set intrate=i.amount*.3 where amount=i.amount;
end if;
end loop;
end;
/