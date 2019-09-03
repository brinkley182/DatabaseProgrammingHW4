insert into zipcode values('67226','Wichita');
insert into zipcode values('60606','Fort Dodge');
insert into zipcode values('50302','Kansas City');
insert into zipcode values('54444','Columbia');
insert into zipcode values('66002','Liberal');
insert into zipcode values('61111','Fort Hays');

insert into customers values('1111','Charles','123 Main St.','67226','3166365555');
insert into customers values('2222','Bertram','237 Ash Ave.','67226','3166895555');
insert into customers values('3333','Barbara','111 Inwood St.','60606','3161111234');

insert into employees values('1000','Jones','67226',date'1995-12-12');
insert into employees values('1001','Smith','60606',date'1992-01-01');
insert into employees values('1002','Brown','50302',date'1994-11-01');

select * from zipcode;
select * from customers;
select * from employees;


commit;
