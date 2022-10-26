--Таблица employees
--Создать таблицу employees (id serial primary key, employee_name varchar(50) not null)
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
)

--Наполнить таблицу employee 70 строками
insert into employees(employee_name)
values ('Adams'),
	   ('Adderiy'),
	   ('Aldridge'),
	   ('Anderson'),
	   ('Andrews'),
	   ('Austin'),
	   ('Backer'),
	   ('Baldwin'),
	   ('Barnes'),
	   ('Barrington'),
	   ('Becker'),
	   ('Bishop'),
	   ('Black'),
	   ('Bradberry'),
	   ('Brooks'),
	   ('Brown'),
	   ('Butler'),
	   ('Campbell'),
	   ('Carter'),
	   ('Chesterton'),
	   ('Coleman'),
	   ('Collins'),
	   ('Cooper'),
	   ('Dalton'),
	   ('Day'),
	   ('Dickinson'),
	   ('Donovan'),
	   ('Edwards'),
	   ('Ellis'),
	   ('Ferguson'),
	   ('Fitzgerald'),
	   ('Ford'), 
       ('Foster'),
       ('Gilbert'),
       ('Gilmore'),
       ('Goodman'),
       ('Green'),
       ('Hancock'),
       ('Harris'),
       ('Harrysoln'),
       ('Hill'),
       ('Howard'),
       ('Hughes'),
       ('Jackson'),
       ('Jones'),
       ('Kelly'),
       ('King'),
       ('Lewis'),
       ('Little'), 
       ('MacDonald'),
       ('Miller'),
       ('Mollygan'),
       ('Nelson'),
       ('Oliver'),
       ('Paterson'),
       ('Phillips'),
       ('Rogers'),
       ('Salomon'),
       ('Scott'),
       ('Sheldon'),
       ('Simpson'),
       ('Smith'),
       ('Taylor'),
       ('Thomas'),
       ('Walker'), 
       ('Wesley'),
       ('White'),
       ('Williams'),
       ('Wilson'),
       ('Yang');
      
 
--Таблица salary
--Создать таблицу salary (id serial primary key, monthly_salary int not null)      
create table salary(
	id serial primary key,
	monthly_salary int not null
)

--Наполнить таблицу salary 15 строками:
-- 1000
-- 1100
-- 1200
-- 1300
-- 1400
-- 1500
-- 1600
-- 1700
-- 1800
-- 1900
-- 2000
-- 2100
-- 2200
-- 2300
-- 2400
-- 2500
insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);


--Таблица employee_salary
--Создать таблицу employee_salary (id serial primary key, employee_id int not null unique, salary_id int not null)	  
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
    salary_id int not null
)

--Наполнить таблицу employee_salary 40 строками: (в 10 строк из 40 вставить несуществующие employee_id)
insert into employee_salary(employee_id, salary_id)
values (1, 1),
	   (2, 2),
	   (3, 3),
	   (4, 4),
	   (5, 5),
	   (6, 6),
	   (7, 7),
	   (8, 8),
	   (9, 9),
	   (10, 10),
	   (11, 11),
	   (12, 12),
	   (13, 13),
	   (14, 14),
	   (15, 15),
	   (16, 16),
	   (17, 1),
	   (18, 2),
	   (19, 3),
	   (20, 4),
	   (21, 5),
	   (22, 6),
	   (23, 7),
	   (24, 8),
	   (25, 9),
	   (26, 10),
	   (27, 11),
	   (28, 12),
	   (29, 13),
	   (30, 14),
	   (71, 15),
	   (72, 16),
	   (73, 1),
	   (74, 2),
	   (75, 3),
	   (76, 4),
	   (77, 5),
	   (78, 6),
	   (79, 7),
	   (80, 8);

	  
--Таблица roles
--Создать таблицу roles (id serial primary key, role_name int not null unique)	  
create table roles(
	id serial primary key,
	role_name int not null unique
)	   
	  
--Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30)
	   
--Наполнить таблицу roles 20 строками:
--id   role_name
--1    Junior Python developer
--2    Middle Python developer
--3    Senior Python developer
--4    Junior Java developer
--5    Middle Java developer
--6    Senior Java developer
--7    Junior JavaScript developer
--8    Middle JavaScript developer
--9    Senior JavaScript developer
--10   Junior Manual QA engineer
--11   Middle Manual QA engineer
--12   Senior Manual QA engineer
--13   Project Manager
--14   Designer
--15   HR
--16   CEO
--17   Sales manager
--18   Junior Automation QA engineer
--19   Middle Automation QA engineer
--20   Senior Automation QA engineer
insert into roles(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');


--Таблица roles_employee
--Создать таблицу roles_employee (id serial primary key, employee_id int not null unique (внешний ключ для таблицы employees, поле id), role_id int not null (внешний ключ для таблицы roles, поле id))	  
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
		references employees(id),
	foreign key(role_id)
		references roles(id)
);

--Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id, role_id)
values (1, 1),
	   (2, 2),
	   (3, 3),
	   (4, 4),
	   (55, 5),
	   (6, 6),
	   (7, 7),
	   (8, 8),
	   (9, 9),
	   (10, 10),
	   (11, 11),
	   (12, 12),
	   (43, 13),
	   (14, 14),
	   (15, 15),
	   (16, 16),
	   (17, 17),
	   (18, 18),
	   (19, 19),
	   (20, 20),
	   (21, 1),
	   (22, 2),
	   (23, 3),
	   (24, 4),
	   (65, 5),
	   (26, 6),
	   (27, 7),
	   (28, 8),
	   (29, 9),
	   (30, 10),
	   (31, 11),
	   (32, 12),
	   (33, 13),
	   (44, 14),
	   (35, 15),
	   (36, 16),
	   (37, 17),
	   (38, 18),
	   (39, 19),
	   (40, 20);	  
	  
select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;






