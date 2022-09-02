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
