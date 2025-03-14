/*系统变量*/
/*
- 全局作用域是指对所有连接和所有数据库都适用；
- 会话作用域是指只对当前连接和当前数据库适用。
*/

/*查询所有系统变量，不加global就是session会话级的*/
show variables;
show global variables;
/*上面两条show都是一样的结果，因为没有对系统变量进行操作，所以他们并没有改变其原本的意思*/


/*模糊查找：不知到具体系统变量名字时可用*/
show variables like '%char%';
show variables like '%commit%';/*有一个自动提交autocommit，值是on打开的*/

/*当知道具体系统变量名时用select @@*/
select @@global.autocommit;/*值是1代表打开状态*/
select @@session.autocommit;/*不加session会话级也是会话级*/
select @@global.transaction_isolation;


/*将当前会话级（当前数据库的当前连接下的数据库）的自动提交关闭
set  session  autocommit  =  0;  或 set  autocommit  =  0; 
*/

/*将全局级（所有数据库的所有连接）的自动提交关闭
set  global autocommit  =  0;  或 set @@global.autocommit  =  0; 
*/

/*
用户变量（只在当前会话有效，退出当前mysql后失效（空间被释放））
set @name = 'jackson';
select @name;//读取用户自定义变量的值
*/




