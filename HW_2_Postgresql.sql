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

--Наполнить таблицу salary 16 строками:
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
--id   employee_id   salary_id
--1    3             7
--2    1             4
--3    5             9
--4    40            13
--5    23            4
--6    11            2
--7    52            10
--8    15            13
--9    26            4
--10   16            1
--11   33            7
--...  ...           ...
insert into employee_salary(employee_id, salary_id)
values (3, 7),
	   (1, 4),
	   (5, 9),
	   (40, 13),
	   (23, 4),
	   (11, 2),
	   (52, 10),
	   (15, 13),
	   (26, 4),
	   (16, 1),
	   (33, 7),
	   (12, 16),
	   (51, 3),
	   (25, 9),
	   (6, 15),
	   (72, 10),
	   (10, 5),
	   (18, 2),
	   (39, 8),
	   (19, 11),
	   (31, 9),
	   (2, 6),
	   (29, 14),
	   (4, 1),
	   (75, 12),
	   (44, 11),
	   (47, 2),
	   (78, 16),
	   (7, 3),
	   (50, 8),
	   (71, 15),
	   (80, 7),
	   (63, 1),
	   (61, 2),
	   (79, 13),
	   (8, 4),
	   (45, 5),
	   (59, 14),
	   (66, 7),
	   (30, 10);

	  
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
--id   employee_id   role_id
--1    7             2
--2    20            4
--3    3             9
--4    5             13
--5    23            4
--6    11            2
--7    10            9
--8    22            13
--9    21            3
--10   34            4
--11   6             7
--...  ...           ...
insert into roles_employee(employee_id, role_id)
values (7, 2),
	   (20, 4),
	   (3, 9),
	   (5, 13),
	   (23, 4),
	   (11, 2),
	   (10, 9),
	   (22, 13),
	   (21, 3),
	   (34, 4),
	   (6, 7),
	   (1, 12),
	   (12, 1),
	   (35, 20),
	   (46, 15),
	   (16, 8),
	   (27, 11),
	   (8, 10),
	   (19, 19),
	   (31, 3),
	   (42, 14),
	   (48, 9),
	   (53, 13),
	   (14, 5),
	   (65, 12),
	   (26, 6),
	   (30, 20),
	   (2, 8),
	   (18, 2),
	   (40, 10),
	   (32, 18),
	   (24, 4),
	   (13, 13),
	   (4, 7),
	   (51, 19),
	   (66, 15),
	   (47, 1),
	   (9, 12),
	   (39, 6),
	   (15, 20);

  
	  
	  
	  
select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;






