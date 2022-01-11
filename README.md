Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:

id  role_name
1 Junior Python developer
2 Middle Python developer
3 Senior Python developer
4 Junior Java developer
5 Middle Java developer
6 Senior Java developer
7 Junior JavaScript developer
8 Middle JavaScript developer
9 Senior JavaScript developer
10 Junior Manual QA engineer
11 Middle Manual QA engineer
12 Senior Manual QA engineer
13 Project Manager
14 Designer
15 HR
16 CEO
17 Sales manager
18 Junior Automation QA engineer
19 Middle Automation QA engineer
20 Senior Automation QA engineer

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:
