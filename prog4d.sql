declare

    v_NullVar varchar2(10);

begin
    execute immediate 'create table dept (deptno number(3) primary key, dname varchar2(16), loc varchar2(16))';

    execute immediate 'create table emp( empno number(4) primary key, ename varchar2(16), job varchar2(16), mgr number(4), hiredate date, sal number(7,2), comm number(7,2), deptno number(3) not null references dept(deptno))';
    
    execute immediate 'insert into dept values (:1,:2,:3)' using 10,'ACCOUNTING','NEW YORK';
    execute immediate 'insert into dept values (:1,:2,:3)' using 20, 'RESEARCH', 'DALLAS';
    execute immediate 'insert into dept values (:1,:2,:3)' using 30, 'SALES', 'CHICAGO';
    execute immediate 'insert into dept values (:1,:2,:3)' using 40, 'OPERATIONS', 'WASHINGTON (D.C.)';
    execute immediate 'insert into dept values (:1,:2,:3)' using 50, 'MARKETING', 'BOSTON';
    exception 
        when others then
            dbms_output.put_line('Program executed commited results up to error');
            begin
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7839, 'KING', 'PRESIDENT', v_NullVar, '17-NOV-81', 5000, v_NullVar, 10;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7698, 'BLAKE', 'MANAGER', 7839, '01-MAY-81', 2850, v_NullVar, 30;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7782, 'CLARK', 'MANAGER', 7839, '09-JUN-81', 2450, v_NullVar, 10;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7566, 'JONES', 'MANAGER', 7839, '02-APR-81', 2975, v_NullVar, 20;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7654, 'MARTIN', 'SALESMAN', 7698, '28-SEP-81', 1250, 1400, 30;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7499, 'ALLEN', 'SALESMAN', 7698, '20-FEB-81', 1600, 300, 30;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7844, 'TURNER', 'SALESMAN', 7698, '08-SEP-81', 1500, v_NullVar, 30;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7900, 'JAMES', 'CLERK', 7698, '03-DEC-81', 950, v_NullVar, 30;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7521, 'WARD', 'SALESMAN', 7698, '22-FEB-81', 1250, 500, 30;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7902, 'FORD', 'ANALYST', 7566, '03-DEC-81', 3000, v_NullVar, 20;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7369, 'SMITH', 'CLERK', 7902, '17-DEC-81', 800, v_NullVar, 20;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7788, 'SCOTT', 'ANALYST', 7566, '09-DEC-82', 4000, v_NullVar, 20;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7876, 'ADAMS', 'CLERK', 7788, '12-JAN-83', 1100, v_NullVar, 20;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7934, 'MILLER', 'CLERK', 7782, '22-JAN-82', 1300, v_NullVar, 10;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7698, 'BLAKE', 'MANAGER', 7839, '01-MAY-81', 2850, v_NullVar, 30;
            execute immediate 'insert into emp values (:1,:2,:3,:4,:5,:6,:7,:8)' using 7935, 'JONES', 'ACCOUNT', 7782, '22-JAN-82', 1700, v_NullVar, 10;
            exception
                when others then
                dbms_output.put_line('Program executed commited results up to error');
            end;

        
    commit;

end;



