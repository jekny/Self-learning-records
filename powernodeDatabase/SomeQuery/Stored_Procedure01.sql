/*
删除存储过程
*/
drop procedure if exists p1;

/*
创建第一个存储过程
*/
create procedure p1()
begin 
  select empno,ename from emp;
end;



/*
调用第一个存储过程
*/
call p1();

