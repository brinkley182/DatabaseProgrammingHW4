drop table zipcode cascade constraints;
drop table customers cascade constraints;
drop table employees cascade constraints;

create table zipcode(
zip char(5) not null,
city varchar(25),
primary key (zip)
);

create table customers(
cno varchar(4),
cname varchar(25),
street varchar(40),
zip char(5),
phone char(10),
primary key(cno),
foreign key(zip) references zipcode(zip)
);

create table employees(
eno char(4),
ename varchar(25),
zip char(5),
hdate date,
primary key(eno),
foreign key(zip) references zipcode(zip)
);
commit;