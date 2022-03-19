--SQL_DDL
--������ �����.

--������� employees

--������� ������� employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--��������� ������� employee 70 ��������.

create table employees
(id serial primary key,
employee_name varchar(50) not null);

select * from employees;

insert into employees (employee_name)
values ('���� ������'),
('���� ������'),
('������ ��������'),
('���� �������'),
('���� ��������'),
('���� ����'),
('��� �������'),
('��� �������'),
('�������� �����'),
('���� ��������'),
('����� ������'),
('���� ��������'),
('����� ��������'),
('���� �����'),
('���� ���������'),
('��������� ���������'),
('��� �����'),
('����� �����'),
('���� ������'),
('���� ������'),
('��������� �����'),
('����� �������'),
('����� �������'),
('����� ��������'),
('����� ��������'),
('������ ��������'),
('��������� ���������'),
('�������� ��������'),
('����� �����������'),
('����� ��������'),
('����� ���������'),
('������� ��������'),
('����� �������'),
('���� ���������'),
('������ ���������'),
('���������� ����������'),
('������ ��������'),
('�������� ��������'),
('�������� ������'),
('��� ��������'),
('������ ������'),
('������� ��������'),
('���� �������'),
('���������� ��������'),
('����� �������'),
('������ ����������'),
('������� �������'),
('���� ��������'),
('������ ����������'),
('��������� �������'),
('�������� ���������'),
('������ �������'),
('���� ���������'),
('������ ������'),
('����� ���������'),
('��������� ������'),
('������ ������'),
('��������� �������'),
('���� �������'),
('������ ���������'),
('��� ����������'),
('������ ������'),
('�������� ��������'),
('������� ��������'),
('������ ���������'),
('������ �������'),
('������ �������'),
('���� �������'),
('������� ���������'),
('����� ������������');

--������� salary

--������� ������� salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--��������� ������� salary 15 ��������:
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

--ALTER TABLE salary RENAME TO salary1; �� ����� ��������� ������� salary, ������� �������� �������������

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

--������� employee_salary

--������� ������� employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary 
(id serial primary key,
employee_id int not null unique,
salary_id int not null);

select * from employee_salary;

--��������� ������� employee_salary 40 ��������:
-- � 10 ����� �� 40 �������� �������������� employee_id

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

--������� roles

--������� ������� roles
-- id. Serial  primary key,
--role_name. int, not null, unique

create table roles
(id serial primary key,
role_name int not null unique);

select * from roles;

--ALTER TABLE public.roles RENAME TO roles1;

--�������� ��� ������ role_name � int �� varchar(30)

alter table roles 
alter column role_name type varchar(30);

--��������� ������� roles 20 ��������:

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

--������� roles_employee

--������� ������� roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)

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

--��������� ������� roles_employee 40 ��������:

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


