--Таблица employees

/* Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null */

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--Наполнить таблицу employee 70 строками.

insert into employees(employee_name)
values  ('Alexander'),
		('Alexey'),
		('Alena'),
		('Alina'),
		('Alisa'),
		('Alla'),
		('Anastasiya'),
		('Andrey'),
		('Anna'),
		('Anton'),
		('Arina'),
		('Artem'),
		('Artur'),
		('Bogdan'),
		('Boris'),
		('Boris'),
		('Vadim'),
		('Valentin'),
		('Valeriy'),
		('Varvara'),
		('Vasiliy'),
		('Vera'),
		('Viktor'),
		('Vitaliy'),
		('Vlad'),
		('Galina'),
		('Gennadiy'),
		('Georgiy'),
		('Gleb'),
		('Grigoriy'),
		('David'),
		('Daniil'),
		('Daryia'),
		('Denis'),
		('Diana'),
		('Dmitriy'),
		('Evgeniy'),
		('Egor'),
		('Ekaterina'),
		('Elena'),
		('Elizaveta'),
		('Zhanna'),
		('Zahar'),
		('Ivan'),
		('Igor'),
		('Ilya'),
		('Inna'),
		('Kirill'),
		('Konstantin'),
		('Larisa'),
		('Lev'),
		('Leonid'),
		('Maksim'),
		('Marat'),
		('Margarita'),
		('Marina'),
		('Mariya'),
		('Mark'),
		('Matvey'),
		('Mihail'),
		('Nadezhda'),
		('Natalya'),
		('Nika'),
		('Nikita'),
		('Nikolay'),
		('Nina'),
		('Oksana'),
		('Oleg'),
		('Olga'),
		('Pavel');
	
--Таблица salary


/* Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null */

create table salary(
	id serial primary key,
	monthly_salary int not null
);	

/*Наполнить таблицу salary 16 строками:
	-1000
	...
	-2500 */	

insert into salary(monthly_salary)
	values  (1000),
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

/*Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null */
			
create table employee_salary(
	id serial primary key,
	employee_id int not null,
	salary_id int not null
);

/* Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id */

insert into employee_salary(employee_id, salary_id)
	values  (3, 7),
			(1, 4),
			(5, 9),
			(40, 13),
			(23, 4),
			(11, 2),
			(52, 10),
			(15, 10),
			(26, 4),
			(16, 1),
			(33, 7),
			(2, 12),
			(39, 5),
			(70, 15),
			(75, 10),
			(80, 12),
			(4, 22),
			(8, 8),
			(12, 32),
			(38, 1),
			(6, 7),
			(33, 4),
			(54, 9),
			(42, 13),
			(24, 4),
			(14, 2),
			(55, 10),
			(22, 10),
			(29, 4),
			(25, 1),
			(37, 7),
			(29, 12),
			(34, 5),
			(74, 15),
			(78, 10),
			(79, 12),
			(44, 22),
			(33, 8),
			(35, 32),
			(36, 1);
			
--Таблица roles

/*Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique */

create table roles(
	id serial primary key,
	role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

/* Наполнить таблицу roles 20 строками:
-Junior Python developer,
-....
-Senior Automation QA engineer */

insert into roles(role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Seinor Java developer'),
		('Junior Javascript developer'),
		('Middle Javascript developer'),
		('Senior Javascript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

--Таблица roles_employee

/* Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id) */
		
create table roles_employee(
	id serial primary key,
	employee_id int not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

--Наполнить таблицу roles_employee 40 строками

insert into roles_employee(employee_id, role_id)
values  (7, 2),
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
		(1, 4),
		(2, 12),
		(4, 11),
		(8, 10),
		(9, 3),
		(12, 5),
		(13, 7),
		(14, 8),
		(15, 5),
		(16, 4),
		(17, 6),
		(18, 9),
		(19, 11),
		(40, 14),
		(24, 15),
		(25, 16),
		(26, 3),
		(27, 6),
		(28, 2),
		(29, 8),
		(30, 3),
		(31, 5),
		(32, 7),
		(33, 13),
		(35, 6),
		(36, 12),
		(37, 4),
		(38, 1),
		(39, 7);