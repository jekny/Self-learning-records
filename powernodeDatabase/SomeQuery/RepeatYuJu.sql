/*传入一个数字n，计算1~n中所有偶数的和。*/
drop procedure if exists p7;
create procedure p7(in n int ,out sum int)
begin
set sum :=0;
repeat 
  if n % 2 = 0 then 
      set sum := sum+n;
  end if;
    set  n := n -1;
  until n < 0
end repeat;
end;
call p7(100,@sum);
select @sum
