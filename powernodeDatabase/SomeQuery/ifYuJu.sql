/*用局部变量测试
declare 变量名 数据类型 [default ...]; 
declare 变量名 数据类型 default 值;   
注意：declare通常出现在begin end之间的开始部分。
create PROCEDURE p2()
begin 
	declare emp_count int default 0;
	declare sal double(10,2) default 0.0;
	select count(*) into emp_count from emp;
	set sal := 5000.0;
	select emp_count;
	select sal;
end;
*/

/*if语句
if 条件 then
......
elseif 条件 then
......
elseif 条件 then
......
else
......
end if;
*/
drop procedure if exists fun;
create procedure fun()
begin 
  declare sal int default 0;
  declare grade varchar(20);
  set sal := 7000;
  
  if sal > 10000 then
    set grade := '高收入';
  elseif sal > 6000 then 
    set grade := '中收入';
  else 
    set grade := '低收入';
  end if;
  select grade;
 end;
CALL fun();















