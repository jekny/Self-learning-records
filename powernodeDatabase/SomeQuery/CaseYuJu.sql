/*case的第一中语法格式*/
drop procedure if exists season;
create procedure season(in zhi int , out fuzhi varchar(10))
begin 
 case zhi
  when 3 THEN set fuzhi := '春季';
  when 4 THEN set fuzhi := '春季';
  when 5 then set fuzhi := '春季';
  when 6 then set fuzhi := '夏季';
  when 7 then set fuzhi := '夏季';
  when 8 then set fuzhi := '夏季';
  when 9 then set fuzhi := '秋季';
  when 10 then set fuzhi := '秋季';
  when 11 then set fuzhi := '秋季';
  else set fuzhi := '非法输入';
 end case ;
end;
call season(3,@nadaola);
select @nadaola;

  
