/*
SQL脚本文件中的注释，这里的注释信息不会被执行，只给我们看的
  1.查询每个员工的部门名称，显示员工名和部门名称
*/
SELECT e.ename,e.empno,d.dname from emp e join dept d on e.deptno = d.deptno; 

/*
2.查询每个部门平均工资的工资等级，显示平均工资，部门编号，平均工资等级
*/
SELECT deptno ,AVG(SAL) avgsal from emp GROUP BY DEPTNO;
select t.*,s.grade from salgrade s join (SELECT deptno ,AVG(SAL) avgsal from emp GROUP BY DEPTNO) t on  avgsal between s.losal and
s.hisal;