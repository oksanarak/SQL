--Вывести всех работников, чьи зарплаты есть в базе, вместе с зарплатами
select employees.employee_name, employee_salary.employee_id, salary.monthly_salary
from employees join employee_salary 
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id;


--Вывести всех работников, у которых ЗП меньше 2000
create table company(
	id serial primary key,
	employee_name varchar(50) not null,
	monthly_salary int not null
)

insert into company(employee_name, monthly_salary)
values ('Adams', 1000),
	   ('Adderiy', 1100),
	   ('Aldridge', 1200),
	   ('Anderson', 1300),
	   ('Andrews', 1400),
	   ('Austin', 1500),
	   ('Backer', 1600),
	   ('Baldwin', 1700),
	   ('Barnes', 1800),
	   ('Barrington', 1900),
	   ('Becker', 2000),
	   ('Bishop', 2100),
	   ('Black', 2200),
	   ('Bradberry', 2300),
	   ('Brooks', 2400),
	   ('Brown', 2500);

select * from company	
where monthly_salary < 2000;

select * from company;


--Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, employee_salary.employee_id, salary.monthly_salary  
from employees full outer join employee_salary
on employees.id = employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
where employees.employee_name is null; 



