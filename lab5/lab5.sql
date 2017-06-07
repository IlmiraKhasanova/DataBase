1.1 Выбрать первые два значения из таблицы owner, поля name
SELECT TOP 2 name FROM owner;

2.1 Выбрать из таблицы owner значения полей passport_number, у которых поле name равно NULL
SELECT passport_number FROM owner WHERE name IS NULL;

2.2 Выбрать из таблицы owner значения поля name, не равные NULL
SELECT name FROM owner WHERE fio_subscriber IS NOT NULL;

2.3 Выбрать из таблицы telephone поле id_telephone, значение которого от 1 до 3
SELECT id_telephone FROM telephone WHERE id_telephone BETWEEN 1 AND 3;

2.4 Выбрать из таблицы owner значения, у которых id равен 1, 2 или 3
SELECT * FROM owner WHERE id_owner In (1,2,3);

2.5 Выбрать поле name из таблицы owner, где id_owner равен 2
SELECT name FROM owner WHERE id_owner = 2;

2.6 Выбрать поле id_owner из таблицы owner, где имя не "Ivan Ivanov"
SELECT name FROM owner WHERE name <> "Nikolay Petrov";

3.1 Выбрать значения из таблицы telephone и отсортировать по id владельца в порядке возрастания
SELECT * FROM telephone ORDER BY id_owner ASC;

3.2 То же самое, что в 3.1, но в порядке убывания
SELECT * FROM telephone ORDER BY id_owner DESC;

3.3 Выбрать id телефона из таблицы telephone и отсортировать в порядке убывания по полям id_telephone и id_publisher
SELECT id_telephone FROM telephone ORDER BY id_telephone DESC ,id_service1 DESC;

3.4 Выбрать id и ФИО владельца из таблицы owner, отсортировать по id_owner в порядке убывания
SELECT id_owner, name FROM owner ORDER BY 1 DESC;

4.1 Выбрать из таблицы payment минимальную стоимость 
SELECT MIN(amount) FROM payment;

4.2 Выбрать из таблицы payment максимальную стоимость 
SELECT MAX(amount) FROM payment;

4.3 Выбрать из таблицы payment максимальную стоимость 
SELECT AVG(amount) FROM payment;

4.3 Выбрать из таблицы payment сумму всех стоимостей
SELECT SUM(amount) FROM payment;

5.1 Выбрать все уникальные значения имён владельцев из таблицы owner
SELECT DISTINCT (name) FROM owner;

5.2 Подсчитать кол-во полей с уникальными значениями
SELECT Count(*) FROM (SELECT DISTINCT (name) FROM owner)

6.1 Выбрать из таблицы виды услуг название услуги и его суммарную стоимость. 
SELECT name, SUM(payment_service) FROM the_types_of_services GROUP BY name;

6.2 Выбрать из таблицы виды услуг название услуги и его суммарную стоимость, при условии что стоимость одной услуги больше 0 рублей
SELECT name, SUM(payment_service) FROM the_types_of_services WHERE (payment_service > 0) GROUP BY name;

6.3 Выбрать из таблицы виды услуг поля название услуги и его суммарную стоимость, при условии что суммарная стоимость больше 200 рублей
SELECT name, Sum(payment_service) FROM the_types_of_services GROUP BY name HAVING (Sum(payment_service) > 200);
