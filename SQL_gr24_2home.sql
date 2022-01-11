 create table employees (
 id serial primary key,
 employee_name varchar (50) not null
 )
 
insert into  employees (employee_name)
values ('Марина Виноградова'), ('Антон Пирожков'), ('Антон Куликов'), ('Алиса Курова'),	('Алена Тарасова'),	('Валерий Булыков'),
('Яна Испич'), 	('Полина Калугина'), ('Юрий Пашков'), ('Сергей Ефимов'), ('Дмитрий Епифанов'), ('Евгения Смородинова'),
('Матвей Евсеев'), ('Ольга Капазура'), ('Александр Матвеев'), ('Захар Харетонов'), ('Марина Косич'), ('Елена Мондрич'),
('Алиса Ромашка'), ('Анна Веренич'), ('Василий Кук'), ('Игорь Сухарев'), ('Светлана Силинова'), ('Глеб Тетеров'),
('Андрей Костян'), ('Зоатослава Миролюбова'), ('Иван Марков'), ('Владислав Питбуль'), ('Екатерина Фурка'), 	('Тарас Википулькин'),
('Федор Лапухов'), ('Маргарита Чуйковская'), ('Станислав Лимонов'), ('Илья Никончик'), ('Валерия Рахта'), ('Мария Сидарчук'),
('Владимир Высоцкий'), ('Вадим Туманов'), ('Сергей Песочкин'), ('Андрей Варежкин'), ('Вероника Клубничкина'), ('Зоя Космоденьянская'),
('Арсений Федоров'), ('Диана Лопаткина'), ('Александр Невысыпалов'), ('Захар Марабян'), ('Андрей Книжкин'), ('Мария Дубовая'),
('Тамара Пельмень'), ('Анастасия Дрозд'), ('Валерий Бутербродович'), ('Иван Блинчик'), ('Светлана Ресничкина'), ('Федор Зонтиков'), ('Степан Садинкин'),
('Матвей Будюк'), ('Дарья Макарчук'), ('Руслан Малич'), ('Глеб Пижамов'), ('Полина Елкина'), ('Артур Бурыков'), ('Глеб Вальтюк'), ('Эльвира Матылькова'),
('Александр Кириянов'), ('Елизавета Пушок'), ('Вячеслав Рыжов'), ('Елена Рыжовская'), ('Сергей Умейкин'), ('Диана Березкина'), ('Андрей Зубастов')
	
select * from employees

drop table employees 
		
	create table salary (
		id serial primary key,
		monthly_salary int not null
	)
	
	insert into salary (monthly_salary)
		values (1000), 	(1100), (1200), (1300), (1400), (1500), (1600), (1700), (1800), (1900), (2000), (2100),
		(2200), (2300), (2400), (2500)
		
create table employee_salary (
id serial  primary key,
employee_id int not null unique,
salary_id int not null
)

insert into employee_salary (id, employee_id, salary_id)
values (1, 3 , 7), (2, 81, 8), (3, 15, 15), (4, 4, 12), (5, 44, 14),  (6, 12, 7), (7, 37, 16), (8, 66, 2),  (9, 26, 4),
(10, 16, 1), (11, 33, 7), (12, 72, 8), (13, 8, 16), (14, 6, 14), (15, 75, 1), (16, 85, 6), (17, 64, 12), (18, 69, 15),
(19, 87, 3), (20, 92, 9), (21, 13, 6), (22, 46, 14), (23, 77, 1), (24, 36, 3), (25, 39, 8), (26, 74, 6), (27, 43, 4),
(28, 48, 12), (29, 98, 11), (30, 54, 2), (31, 82, 7), (32, 24, 8), (33, 28, 1), (34, 96, 1), (35, 50, 2), (36, 7, 13),
(37, 67, 16), (38, 35, 6), (39, 14, 4), (40, 47, 3)

create table roles (
id serial primary key,
role_name int not null unique
)

ALTER TABLE roles ALTER COLUMN role_name TYPE varchar(30);

insert into roles (id, role_name)
values (1, 'Junior Python developer'),
(2, 'Middle Python developer'),
(3, 'Senior Python developer'),
(4, 'Junior Java developer'),
(5, 'Middle Java developer'),
(6, 'Senior, Java developer'),
(7, 'Junior JavaScript developer'),
(8, 'Middle JavaScript developer'),
(9, 'Senior JavaScript developer'),
(10, 'Junior Manual QA engineer'),
(11, 'Middle Manual QA engineer'),
(12, 'Senior Manual QA engineer'),
(13, 'Project Manager'),
(14, 'Designer'),
(15, 'HR'),
(16, 'CEO'),
(17, 'Sales manager'),
(18, 'Junior Automation QA engineer'),
(19, 'Middle Automation QA engineer'),
(20, 'Senior Automation QA engineer')


create table roles_employee (
id serial primary key,
employee_id int not null unique ,
role_id int not null,
foreign key (employee_id)
	references employees (id),
foreign key (role_id)
	references roles (id)
)

insert into roles_employee (id, employee_id, role_id)
values  (1, 7, 4), (2, 20, 4), (3, 3, 9), (4, 5, 13), (5, 23, 4), (6, 11, 2),
(7, 10, 9), (8, 22, 13), (9, 21, 3), (10, 30, 4), (11, 6, 7), (12, 45, 9), 
(13, 64, 5), (14, 51, 15), (15, 63, 4), (16, 58, 8), (17, 44, 11), (18, 28, 7),
(19, 40, 13), (20, 32, 3), (21, 9, 5), (22, 56, 10), (23, 69, 2), (24, 34, 12), 
(25, 39, 6), (26, 1, 4), (27, 8, 7), (28, 48, 9), (29, 25, 13), (30, 67, 1), (31, 57, 3),
(32, 65, 9), (33, 47, 7), (34, 62, 11), (35, 31, 11), (36, 14, 13), (37, 24, 14), 
(38, 59, 14), (39, 17, 2), (40, 53, 1)

