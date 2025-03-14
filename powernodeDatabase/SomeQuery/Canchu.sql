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
/*1.*/
drop procedure if exists canshu;
create procedure canshu(in sal int , out grade varchar(20))
begin 
  if sal > 10000 then
    set grade := '高收入';
  elseif sal > 6000 then 
    set grade := '中收入';
  else 
    set grade := '低收入';
  end if;
 
 end;
CALL canshu(7000,@grade01);
 select @grade01;

/*2.将传入的工资sal上调10%*/
/*用in  +  out 方式*/
drop procedure if exists p5;
create procedure p5(in sal int, out newsal int)
begin
	set newsal := sal * 1.1 ;
end;
call p5(7000,@newsal);
select @newsal;
/*用inout方式*/
drop procedure if exists p5;
create procedure p5(inout sal int)
begin
	set sal := sal * 1.1;
end;
set @sal := 10000;
call p5(@sal);
select @sal;






