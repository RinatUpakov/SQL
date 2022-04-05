--Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами

select employee_name, salary.monthly_salary from employees
join employee_salary on employee_id = employees.id
join salary on salary_id = salary.id;

--Вывести всех работников у которых ЗП меньше 2000

select employee_name, salary.monthly_salary from employees
join employee_salary on employee_id = employees.id
join salary on salary_id = salary.id where monthly_salary < 2000;

--Вывести все зарплатные позиции, но работник по ним не назначен (ЗП есть, но не понятно кто её получает)

select salary.monthly_salary from employees
join employee_salary on employee_id = employees.id
join salary on salary_id = salary.id;

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

