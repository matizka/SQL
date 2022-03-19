--SQL_DDL
--Первая часть.

--Таблица employees

--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees
(id serial primary key,
employee_name varchar(50) not null);

select * from employees;

insert into employees (employee_name)
values ('Иван Иванов'),
('Петр Петров'),
('Степан Степанов'),
('Илья Баранов'),
('Алла Пугачева'),
('Иван Дорн'),
('Лев Толстой'),
('Лев Лещенко'),
('Владимир Путин'),
('Анна Вакумова'),
('София Ротару'),
('Анна Нетребко'),
('София Морозова'),
('Дима Билан'),
('Петр Черкассов'),
('Валентина Матвиенко'),
('Лев Дуров'),
('Павел Дуров'),
('Анна Дурова'),
('Петр Иванов'),
('Александр Белов'),
('Артем Ващенко'),
('Ольга Глухова'),
('Ольга Петренко'),
('Артем Кушнеров'),
('Полина Баженова'),
('Владислав Герасимов'),
('Владимир Савельев'),
('Мария Шапошникова'),
('Злата Романова'),
('Тимур Герасимов'),
('Аделина Тарасова'),
('Макар Кочетов'),
('Марк Олейников'),
('Полина Румянцева'),
('Александра Андрианова'),
('Максим Медведев'),
('Каролина Белякова'),
('Вероника Щукина'),
('Ева Никитина'),
('Степан Минаев'),
('Валерия Соболева'),
('Иван Головин'),
('Александра Миронова'),
('Денис Андреев'),
('Таисия Пономарева'),
('Евгений Денисов'),
('Семён Алексеев'),
('Михаил Лаврентьев'),
('Александр Игнатов'),
('Антонина Федосеева'),
('Михаил Борисов'),
('Кира Горбунова'),
('Родион Алехин'),
('Арина Тимофеева'),
('Анастасия Зимина'),
('Андрей Хохлов'),
('Станислав Кулагин'),
('Илья Демидов'),
('Амелия Корчагина'),
('Ева Терентьева'),
('Елисей Козлов'),
('Кристина Лазарева'),
('Дмитрий Максимов'),
('Оливия Скворцова'),
('Максим Токарев'),
('Милана Нечаева'),
('Иван Соколов'),
('Валерия Литвинова'),
('Алиса Бурьяновская');

--Таблица salary

--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
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

create table salary 
(id serial primary key,
monthly_salary Int not null);

select * from salary;

--ALTER TABLE salary RENAME TO salary1; на уроке создавали таблицу salary, поэтому пришлось переименовать

insert into salary (monthly_salary)
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

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary 
(id serial primary key,
employee_id int not null unique,
salary_id int not null);

select * from employee_salary;

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id,salary_id)
values (3,7),
(1,4),
(5,9),
(40,13),
(23,4),
(11,2),
(52,10),
(15,13),
(26,4),
(16,1),
(33,7),
(12,4),
(51,9),
(42,13),
(34,4),
(13,2),
(58,10),
(19,13),
(29,4),
(17,1),
(63,7),
(10,4),
(56,9),
(30,13),
(61,4),
(21,3),
(41,10),
(14,13),
(27,14),
(22,1),
(301,15),
(71,4),
(171,9),
(400,13),
(203,4),
(111,2),
(520,10),
(150,13),
(206,4),
(106,1);

select * from employee_salary;

--Таблица roles

--Создать таблицу roles
-- id. Serial  primary key,
--role_name. int, not null, unique

create table roles
(id serial primary key,
role_name int not null unique);

select * from roles;

--ALTER TABLE public.roles RENAME TO roles1;

--Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками:

insert into roles (role_name)
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

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee 
(id serial primary key,
employee_id int not null unique,
  foreign key (employee_id)
  references employees (id),
role_id int not null,
  foreign key (role_id)
  references roles (id)
 );

select * from roles_employee;

--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id,role_id)
values (1,7),
(2,4),
(3,9),
(4,13),
(5,4),
(6,2),
(7,10),
(8,13),
(9,4),
(11,1),
(33,7),
(12,4),
(51,9),
(42,13),
(34,4),
(13,2),
(58,10),
(19,13),
(29,4),
(17,1),
(63,7),
(10,4),
(56,9),
(31,13),
(61,4),
(21,3),
(41,10),
(14,13),
(27,14),
(22,1),
(30,15),
(70,4),
(32,13),
(44,4),
(20,3),
(39,10),
(38,13),
(37,14),
(24,1);


