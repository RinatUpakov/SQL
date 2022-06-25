<h1 align= "center">SQL</h1>
<h2 align= "center">Задание 1</h2>

### Файл с выполненным заданием: [SQL_SELECTS_HW1.sql](https://github.com/RinatUpakov/SQL/blob/c6826ac53f04301165151087db4d63b97732d6f0/SQL_SELECTS_HW1.sql)

___

```sql
--Таблица students представляет собой 5 колонок: id (тип данных serial4), name (varchar(50)), email(varchar(50)), password(varchar(50)), created_on(timestamp)

--1. Вывести все поля и все строки


SELECT * FROM students

--2. Вывести всех студентов в таблице

SELECT name FROM students

--3. Вывести только ID пользователей

SELECT id FROM students

--4. Вывести только имя пользователей

SELECT name FROM students

--5. Вывести только email пользователей

SELECT email FROM students

--6. Вывести имя и email пользователей

SELECT name, email FROM students

--7. Вывести id, имя, email и дату создания пользователей

SELECT id, name, email, created_on FROM students

--8. Вывести пользователей где password 12333

SELECT * FROM students WHERE password='12333'

--9. Вывести пользователей которые были созданы 2021-03-26 00:00:00

SELECT * FROM students WHERE created_on='2021-03-26 00:00:00'

--10. Вывести пользователей где в имени есть слово Анна

SELECT * FROM students WHERE name LIKE '%anna%'

--11. Вывести пользователей где в имени в конце есть 8

SELECT * FROM students WHERE name LIKE '%8'

--12. Вывести пользователей где в имени в есть буква а

SELECT * FROM students WHERE name LIKE '%a%'

--13. Вывести пользователей которые были созданы 2021-07-12 00:00:00

SELECT * FROM students WHERE created_on='2021-07-12 00:00:00'

--14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313

SELECT * FROM students WHERE created_on='2021-07-12 00:00:00' AND password='1m313'

--15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey

SELECT * FROM students WHERE created_on='2021-07-12 00:00:00' AND name LIKE '%Andrey%'

--16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8

SELECT * FROM students WHERE created_on='2021-07-12 00:00:00' AND name LIKE '%8%'

--17. Вывести пользователя у которых id равен 110

SELECT * FROM students WHERE id=110

--18. Вывести пользователя у которых id равен 153

SELECT * FROM students WHERE id=153

--19. Вывести пользователя у которых id больше 140

SELECT * FROM students WHERE id>140

--20. Вывести пользователя у которых id меньше 130

SELECT * FROM students WHERE id<130

--21. Вывести пользователя у которых id меньше 127 или больше 188

SELECT * FROM students WHERE id<127 OR id>188

--22. Вывести пользователя у которых id меньше либо равно 137

SELECT * FROM students WHERE id=<137

--23. Вывести пользователя у которых id больше либо равно 137

SELECT * FROM students WHERE id>=137

--24. Вывести пользователя у которых id больше 180 но меньше 190 //Вопрос с подвохом

SELECT * FROM students WHERE id>180 AND id>=190

--25. Вывести пользователя у которых id между 180 и 190

SELECT * FROM students WHERE id BETWEEN 180 AND 190

--26. Вывести пользователей где password равен 12333, 1m313, 123313

SELECT * FROM students WHERE PASSWORD='12333' OR password='1m313' OR password='123313'

--27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00

SELECT * FROM students WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00')

--28. Вывести минимальный id

SELECT MIN(id) FROM students

--29. Вывести максимальный.

SELECT max(id) FROM students

--30. Вывести количество пользователей

SELECT COUNT(name) FROM students

--31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.

SELECT id, name, created_on FROM students ORDER BY created_on

--32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.

SELECT id, name, created_on FROM students ORDER BY created_on DESC
```
___


<h2 align= "center">Задание 2</h2>

### Файл с выполненным заданием: [SQL_DDL_HW2.sql](https://github.com/RinatUpakov/SQL/blob/c6826ac53f04301165151087db4d63b97732d6f0/SQL_DDL_HW2.sql)

___

```sql
-Таблица employees

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
		. . .
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
			    . . .
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
			. . .
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
		. . .
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
		. . .
		(38, 1),
		(39, 7);
```
___

<h2 align= "center">Задание 3</h2>

### Файл с выполненным заданием: [SQL_JOINS_HW3.sql](https://github.com/RinatUpakov/SQL/blob/c6826ac53f04301165151087db4d63b97732d6f0/SQL_JOINS_HW3.sql)

___

```sql
--Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами

select employee_name, salary.monthly_salary from employees
join employee_salary on employee_id = employees.id
join salary on salary_id = salary.id;

--Вывести всех работников у которых ЗП меньше 2000

select employee_name, salary.monthly_salary from employees
join employee_salary on employee_id = employees.id
join salary on salary_id = salary.id where monthly_salary < 2000;

--Вывести все зарплатные позиции, но работник по ним не назначен (ЗП есть, но не понятно кто её получает)

select monthly_salary from salary s
full join employee_salary es on s.id = es.salary_id
where es.employee_id is null

--Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен (ЗП есть, но не понятно кто её получает)

select salary.monthly_salary from employees
join employee_salary on employee_id = employees.id
join salary on salary_id = salary.id where monthly_salary < 2000;

--Найти всех работников кому не начислена ЗП

select id, employee_name from employees 
where id not in (select employee_id from employee_salary);

--Вывести всех работников с названиями их должности

select employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id;

--Вывести имена и должность только Java разработчиков

select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java %';

--Вывести имена и должность только Python разработчиков

select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Python%';

--Вывести имена и должность всех QA инженеров

select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';

--Вывести имена и должность ручных QA инженеров

select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Manual QA%';

--Вывести имена и должность автоматизаторов QA

select e.employee_name, r.role_name from employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
where role_name like '%Automation QA%';

--Вывести имена и зарплаты Junior специалистов

select e.employee_name, s.monthly_salary  from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id
where r.role_name like '%Junior%';

--Вывести имена и зарплаты Middle специалистов

select employee_name, monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id
where role_name like '%Middle%';

--Вывести имена и зарплаты Senior специалистов

select employee_name, monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id
where role_name like '%Senior%';

--Вывести зарплаты Java разработчиков

select monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id;

--Вывести зарплаты Python разработчиков

select monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id
where role_name like '%Python%';

--Вывести имена и зарплаты Junior Python разработчиков

select employee_name, monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%Junior Python%';

--Вывести имена и зарплаты Middle JS разработчиков

select employee_name, monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%Middle Javas%';

--Вывести имена и зарплаты Senior Java разработчиков

select  employee_name, monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%Senior Java %';

--Вывести зарплаты Junior QA инженеров

select monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%Junior%QA%';

--Вывести среднюю зарплату всех Junior специалистов

select AVG(monthly_salary) from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%Junior%';

--Вывести сумму зарплат JS разработчиков

select SUM(monthly_salary) from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%Javas%';

--Вывести минимальную ЗП QA инженеров

select MIN(monthly_salary) from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%QA%';

--Вывести максимальную ЗП QA инженеров

select MAX(monthly_salary) from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%QA%';

--Вывести количество QA инженеров

select COUNT(*) from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%QA%';

--Вывести количество Middle специалистов

select COUNT(*) from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%Middle%';

--Вывести количество разработчиков

select COUNT(*) from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%developer%';

--Вывести фонд (сумму) зарплаты разработчиков

select sum(monthly_salary) from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where role_name like '%developer%';

--Вывести имена, должности и ЗП всех специалистов по возрастанию

select employee_name, role_name, monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
order by monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, role_name, monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where monthly_salary between 1700 and 2300;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, role_name, monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where monthly_salary < 2300;
order by monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, role_name, monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where monthly_salary in (1100, 1500, 2000);
order by monthly_salary;
```
