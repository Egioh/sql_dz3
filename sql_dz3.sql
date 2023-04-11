#create database firm;
use firm;
create table staff
(
id int  auto_increment primary key not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
post varchar(20) not null,
seniority int not null,
salary int not null,
age int not null
);


insert into staff (first_name,last_name,post,seniority,salary,age) value
('Вася','Петров','Начальник',40, 100000, 60),
('Петр','Власов','Начальник',8, 70000, 30),
('Катя','Катина','Инженер',2, 75000, 25),
('Саша','Сашин','Инженер',12, 50000, 35),
('Иван','Иванов','Рабочий',40, 30000, 59),
('Петр','Петров','Рабочий',20, 25000, 40),
('Сидр','Сидоров','Рабосий',10, 20000, 35),
('Антон','Антонов','Рабочий',8, 15000, 29),
('Юрий','Юрков','Рабочий',5, 15000, 25),
('Максим','Максимов','Рабочий',2, 11000, 22),
('Юрий','Галкин','Рабочий',3, 12000, 24),
('Людмила','Маркина','Уборщик',3, 10000, 49);


/*Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания 
Выведите 5 максимальных заработных плат (saraly)
Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
Найдите количество специальностей
Выведите специальности, у которых средний возраст сотрудников меньше 30 лет */


#select * from staff order by salary;
#select * from staff order by salary desc
#limit 5;

#select post, sum(salary) from staff group by post;

#select count(*) from staff where post =  'Рабочий' and age between 24 and 49;

#select distinct post from staff;

SELECT post FROM staff GROUP BY post HAVING AVG(age) < 30; #нет таких


