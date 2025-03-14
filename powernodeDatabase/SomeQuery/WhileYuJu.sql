/*传入一个数字n，计算1~n中所有偶数的和。*/
drop procedure if exists p6;
create procedure p6(in n int ,out sum int)
begin 
set sum :=  0;
 while n>0 do 
   if n% 2 =0 then
      set sum := sum + n;
    end if;
    set n := n  - 1;
end while;
end;

CALL p6(100,@sum);
select @sum;