drop procedure if exists p9;
create procedure p9()
begin 
  declare dept_no int ;
  declare dept_name varchar(255);
  
  /*声明游标*/
  declare dept_cursor cursor for select deptno,dname from dept ;
  
  /*打开游标*/
  open dept_cursor ;
  
  /*通过游标取数据*/
  /*fetch dept_cursor into dept_no,dept_name;*/ /*调整为与游标字段顺序一致*/
  
  /*select dept_no,dept_name; *//*查询一次数据（指针指向开头的数据）*/
  
  while true do
    fetch dept_cursor into dept_no,dept_name; /*将上面两个语句联合起来写到while do里面，遍历输出读取*/
    select dept_no,dept_name;
  end while;
  
  
  /*关闭游标*/
  close dept_cursor;
  
  end;
 CALL p9();
  
  
  