create table employee_payroll(
ID int IDENTITY(101, 1) PRIMARY KEY, 
Name varchar(255),
Salary int ,
StartDate datetime
);

drop table employee_payroll

insert into employee_payroll(Name,Salary,StartDate,gender)values('kajal',54000,GETDATE(),'F');

select * from employee_payroll 
select * from employee_payroll where name='harsh'

select * from employee_payroll where StartDate BETWEEN CAST('2022-09-02 22:43:03.920'AS DATE) AND (now());

alter table employee_payroll add gender char
update employee_payroll set gender='M' where Name='kamlesh' or Name='harsh'

select sum(Salary) from employee_payroll where gender='M' group by gender

select avg(Salary) from employee_payroll where gender='F' group by gender

select min(Salary) from employee_payroll where gender='F' group by gender

select Count(Salary) from employee_payroll where gender='M' group by gender

update employee_payroll set gender='M' where Name='sachin' or Name='ram'

alter table employee_payroll add department varchar(255) not null default (0)

update employee_payroll set address='paithan' where Name='sachin' or Name='ram'

alter table employee_payroll add basic_pay int,deduction int,taxeble_pay int ,income_Tax int,net_pay int

delete from employee_payroll

insert into employee_payroll(Name,Salary,StartDate,gender,phone,address,department,basic_pay,deduction,taxeble_pay,income_tax,net_pay)values('ram',44000,GETDATE(),'M',7688948943,'aurangabad','dev',1000,2000,1000,3000,35000);

select sum(Salary) from employee_payroll where gender='M' group by gender

select avg(Salary) from employee_payroll where gender='M' group by gender

select min(Salary) from employee_payroll where gender='M' group by gender

select max(Salary) from employee_payroll where gender='M' group by gender
