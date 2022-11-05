--Вывести всех работников, чьи зарплаты есть в базе, вместе с зарплатами
select employees.employee_name, salary.monthly_salary
from employees join salary
on employees.id = salary.id;


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


--Вывести все зарплатные позиции меньше 2000, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, employee_salary.employee_id, salary.monthly_salary  
from employees full outer join employee_salary
on employees.id = employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
where employees.employee_name is null
and monthly_salary < 2000;


--Найти всех работников кому не начислена ЗП
select employees.employee_name, employee_salary.employee_id
from employees full outer join employee_salary
on employees.id = employee_salary.employee_id
where employee_salary.employee_id is null;


--Вывести всех работников с названиями их должности
select employees.employee_name, roles_employee.employee_id, roles.role_name
from employees join roles
on employees.id = roles.id
join roles_employee
on employees.id = roles_employee.employee_id;


--Вывести имена и должность только Java разработчиков
select employees.employee_name, roles.role_name
from employees join roles
on employees.id = roles.id
join roles_employee
on roles.id = roles_employee.role_id 
where roles.role_name like '% Java %';


--Вывести имена и должность только Python разработчиков
select employees.employee_name, roles.role_name
from employees join roles
on employees.id = roles.id
join roles_employee
on roles.id = roles_employee.role_id 
where roles.role_name like '% Python %';


--Вывести имена и должность всех QA инженеров
select employees.employee_name, roles.role_name
from employees join roles
on employees.id = roles.id
join roles_employee
on roles.id = roles_employee.role_id 
where roles.role_name like '% QA %';


--Вывести имена и должность ручных QA инженеров
select employees.employee_name, roles.role_name
from employees join roles
on employees.id = roles.id
join roles_employee
on roles.id = roles_employee.role_id 
where roles.role_name like '% Manual QA %';


--Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles.role_name
from employees join roles
on employees.id = roles.id
join roles_employee
on roles.id = roles_employee.role_id 
where roles.role_name like '% Automation QA %';


--Вывести имена и зарплаты Junior специалистов
select employees.employee_name, salary.monthly_salary, roles.role_name  
from employees join salary
on employees.id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Junior %';


--Вывести имена и зарплаты Middle специалистов
select employees.employee_name, salary.monthly_salary, roles.role_name  
from employees join salary
on employees.id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Middle %';


--Вывести имена и зарплаты Senior специалистов
select employees.employee_name, salary.monthly_salary, roles.role_name  
from employees join salary
on employees.id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Senior %';


--Вывести зарплаты Java разработчиков
select salary.monthly_salary, roles.role_name, employee_salary.salary_id, roles_employee.role_id 
from employees join employee_salary 
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id = salary.id 
join roles_employee
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '% Java developer';


--Вывести зарплаты Python разработчиков
select salary.monthly_salary, roles.role_name, employee_salary.salary_id, roles_employee.role_id 
from employees join employee_salary 
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id = salary.id 
join roles_employee
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '% Python developer';


--Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name, salary.monthly_salary, roles.role_name  
from employees join salary
on employees.id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Junior Python developer';


--Вывести имена и зарплаты Middle JS разработчиков
select employees.employee_name, salary.monthly_salary, roles.role_name  
from employees join salary
on employees.id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Middle JavaScript developer';


-- Вывести имена и зарплаты Senior Java разработчиков
select employees.employee_name, salary.monthly_salary, roles.role_name  
from employees join roles_employee 
on employees.id = roles_employee.employee_id 
join roles
on roles_employee.role_id = roles.id
join employee_salary 
on employees.id = employee_salary.employee_id 
join salary 
on employee_salary.salary_id = salary.id
where roles.role_name like 'Senior Java developer';


--Вывести зарплаты Junior QA инженеров
select salary.monthly_salary, roles.role_name, employee_salary.salary_id, roles_employee.role_id 
from employees join employee_salary 
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id = salary.id 
join roles_employee
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Junior % QA engineer';


--Вывести среднюю зарплату всех Junior специалистов

--1 способ
create table junior_dev(
	id serial primary key,
	role_name varchar(50) not null,
	monthly_salary int not null
)

insert into junior_dev(role_name, monthly_salary)
values ('Junior Java developer', 1300),
       ('Junior JavaScript developer', 2400),
       ('Junior Python developer', 2500),
       ('Junior Manual QA engineer', 1300),
       ('Junior Manual QA engineer', 2200),
       ('Junior JavaScript developer', 1000),
       ('Junior Python developer', 1100);
      
select avg(monthly_salary) from junior_dev;
select * from junior_dev;      
      
--2 способ
select avg(salary.monthly_salary)
from employees join employee_salary 
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id = salary.id 
join roles_employee
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Junior %';


--Вывести сумму зарплат JS разработчиков
select sum(salary.monthly_salary)
from employees join employee_salary 
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id = salary.id 
join roles_employee
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '% JavaScript developer';


--Вывести минимальную ЗП QA инженеров
select min(salary.monthly_salary)
from employees join employee_salary 
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id = salary.id 
join roles_employee
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '% QA engineer';


--Вывести максимальную ЗП QA инженеров
select max(salary.monthly_salary)
from employees join employee_salary 
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id = salary.id 
join roles_employee
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '% QA engineer';


--Вывести количество QA инженеров
select count(roles.role_name)
from employees join employee_salary 
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id = salary.id 
join roles_employee
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '% QA engineer';


--Вывести количество Middle специалистов
select count(roles.role_name)
from employees join employee_salary 
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id = salary.id 
join roles_employee
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like 'Middle %';


--Вывести количество разработчиков
select count(roles.role_name)
from employees join employee_salary 
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id = salary.id 
join roles_employee
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '% developer';


--Вывести фонд (сумму) зарплаты разработчиков
select sum(salary.monthly_salary)
from employees join employee_salary 
on employees.id = employee_salary.employee_id 
join salary
on employee_salary.salary_id = salary.id 
join roles_employee
on roles_employee.employee_id = employees.id
join roles 
on roles_employee.role_id = roles.id
where roles.role_name like '% developer';


--Вывести имена, должности и ЗП всех специалистов по возрастанию

