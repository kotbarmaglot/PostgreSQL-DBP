/* Показать работников у которых нет почты или почта 
не в корпоративном домене (домен dualbootpartners.com) */
SELECT * FROM Employees WHERE IS NULL OR Email NOT LIKE '%dualbootpartners.com';

--Получить список работников нанятых в последние 30 дней
SELECT * FROM Employees WHERE Hire_date > (NOW() - INTERVAL '30 days');

--Найти максимальную и минимальную зарплату по каждому департаменту
SELECT MIN(Sallary) as min_Sallary, MAX(Sallary) as max_Sallary FROM Employees;

--Посчитать количество работников в каждом регионе
SELECT COUNT(e.Id), r.Name
FROM Employees AS e
JOIN Departaments AS d ON e.Departament_id = d.Id
JOIN Locations AS l ON d.Location_id = l.Id
JOIN Regions AS r ON l.Region_id=r.id
GROUP BY r.Name;

--Показать сотрудников у которых фамилия длиннее 10 символов
SELECT * FROM Employees WHERE length(Last_name)>10;

--Показать сотрудников с зарплатой выше средней по всей компании
SELECT * FROM Employees
WHERE Sallary > (SELECT AVG(Sallary) FROM Employees);