/*输出1 2 3 4 6 7 8 9 10（跳过5输出其他的值）*/
drop procedure if exists p8;
create procedure p8(in i int , out sum int)
begin 
 declare i int default 0; 
  myloop:loop
  set i := i+1;
  if i = 5 then 
			iterate myloop; /*iterate相当于continue*/
		end if;
  if i=11 then 
    leave myloop; /*leave相当于break*/
  end if;
  select i;

 end loop;
end;
call p8(1,@sum);
select @sum;
