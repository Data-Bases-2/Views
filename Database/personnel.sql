drop database if exists personnel;
create database personnel;
use personnel;

create table
DEPT(
DEPTNO numeric(2),
DNAME varchar(24),
LOC char(23)
);
insert into
DEPT
(DEPTNO, DNAME, LOC)
values
(50, 'SALES', 'ATHENS'),
(60, 'ACCOUNTING', 'ATHENS'),
(70, 'PAYROL', 'VOLOS');

create table
JOB(
JOBCODE numeric(3),
JOB_DESCR varchar(24),
SAL numeric(10,2)
);
insert into
JOB
(JOBCODE, JOB_DESCR, SAL)
values
(100, 'SALESMAN', 2000),
(200, 'ANALYST', 2000),
(300, 'DBA', 3000);

create table
EMP(
EMPNO numeric(4),
NAME varchar(255),
JOBNO numeric(3),
DEPTNO numeric(2),
COMM numeric(10,2)
);
insert into
EMP
(EMPNO, NAME, JOBNO, DEPTNO, COMM)
values
(10, 'CODD', 100, 50, NULL),
(20, 'NAVATHE', 200, 50, 450),
(30, 'ELMASRI', 300, 60, NULL),
(40, 'DATE', 100, 50, NULL);



