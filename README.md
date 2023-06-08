## Урок 2. SQL – создание объектов, простые запросы выборки
1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
2. Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.
3. Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE
4. Чем NULL отличается от 0?


## Урок 3. SQL – выборка данных, сортировка, агрегатные функции

================ТАБЛИЦА 1: ПРОДАВЦЫ (SALESPEOPLE) ================
----------------------------------------------
snum | sname | city | comm
--------|-----------|--------------|----------
1001 | Peel | London | .12
1002 | Serres | San Jose | .13
1004 | Motika | London | .11
1007 | Rifkin | Barcelona | .15
1003 | Axelrod | New York | .10
---------------------------------------------
================== ТАБЛИЦА 2: ЗАКАЗЧИКИ (CUSTOMERS) ===============
----------------------------------------------
cnum | cname | city | rating | snum
-------|------------|---------|--------|------
2001 | Hoffman | London | 100 | 1001
2002 | Giovanni | Rome | 200 | 1003
2003 | Liu | SanJose | 200 | 1002
2004 | Grass | Berlin | 300 | 1002
2006 | Clemens | London | 100 | 1001
2008 | Cisneros | SanJose | 300 | 1007
2007 | Pereira | Rome | 100 | 1004

================== ТАБЛИЦА 3: ЗАКАЗЫ (ORDERS) ==================
-----------------------------------------------
onum | amt | odate | cnum | snum
-------|-----------|-------------|------|------
3001 | 18.69 | 10/03/1990 | 2008 | 1007
3003 | 767.19 | 10/03/1990 | 2001 | 1001
3002 | 1900.1 | 10/03/1990 | 2007 | 1004
3005 | 5160.45 | 10/03/1990 | 2003 | 1002
3006 | 1098.16 | 10/03/1990 | 2008 | 1007
3009 | 1713.23 | 10/04/1990 | 2002 | 1003
3007 | 75.75 | 10/04/1990 | 2004 | 1002
3008 | 4723 | 10/05/1990 | 2006 | 1001
3010 | 1309.95 | 10/06/1990 | 2004 | 1002
3011 | 9891.88 | 10/06/1990 | 2006 | 1001
-----------------------------------------------

# Задание:
1. Напишите запрос, который вывел бы таблицу со столбцами в следующем порядке: city, sname, snum, comm. (к первой или второй таблице, используя SELECT)
2. Напишите команду SELECT, которая вывела бы оценку(rating), сопровождаемую именем каждого заказчика в городе San Jose. (“заказчики”)
3. Напишите запрос, который вывел бы значения snum всех продавцов из таблицы заказов без каких бы то ни было повторений. (уникальные значения в “snum“ “Продавцы”)
4. Напишите запрос, который бы выбирал заказчиков, чьи имена начинаются с буквы G.Используется оператор "LIKE": (“заказчики”) https://dev.mysql.com/doc/refman/8.0/en/string-comparison-functions.html
5. Напишите запрос, который может дать вам все заказы со значениями суммы выше чем $1,000. (“Заказы”, “amt” - сумма)
6. Напишите запрос который выбрал бы наименьшую сумму заказа.
(Из поля “amt” - сумма в таблице “Заказы” выбрать наименьшее значение)
7. Напишите запрос к таблице “Заказчики”, который может показать всех заказчиков, у которых рейтинг больше 100 и они находятся не в Риме.

# Таблица для работы (из классной работы)
1. Отсортируйте поле “зарплата” в порядке убывания и
возрастания
2. ** Отсортируйте по возрастанию поле “Зарплата” и выведите 5
строк с наибольшей заработной платой (возможен подзапрос)
3. Выполните группировку всех сотрудников по специальности ,
суммарная зарплата которых превышает 100000


## Урок 4. SQL – работа с несколькими таблицами
1. Условие:
Табличка:
https://drive.google.com/file/d/1PQn576YVakvlWrIgIjSP9YEf5id4cqYs/view?usp=sharing
1. Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA

2. Вывести на экран марку авто(количество) и количество авто не этой
марки.
100 машин, их них 20 - BMW и 80 машин другой марки , AUDI - 30 и 70 машин другой
марки, LADA - 15, 85 авто другой марки

3. Даны 2 таблицы, созданные следующим образом:
create table test_a (id number, data varchar2(1));
create table test_b (id number);
insert into test_a(id, data) values
(10, 'A'),
(20, 'A'),
(30, 'F'),
(40, 'D'),
(50, 'C');
insert into test_b(id) values
(10),
(30),
(50);
__
__
Напишите запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b, НЕ используя ключевого слова NOT.



## Урок 5. SQL – оконные функции
1. Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов;
2. Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW);
3. Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди” (аналогично)
4. Добавьте новый столбец под названием «время до следующей станции». Чтобы получить это значение, мы вычитаем время станций для пар смежных станций. Мы можем вычислить это значение без использования оконной функции SQL, но это может быть очень сложно. Проще это сделать с помощью оконной функции LEAD . Эта функция сравнивает значения из одной строки со следующей строкой, чтобы получить результат. В этом случае функция сравнивает значения в столбце «время» для станции со станцией сразу после нее.

## Урок 6. SQL – Транзакции. Временные таблицы, управляющие конструкции, циклы
1. Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '
2.   ыяВыведите только четные числа от 1 до 10. Пример: 2,4,6,8,10 Данная промежуточная аттестация оценивается по системе "зачет" / "не зачет" "Зачет" ставится, если слушатель успешно выполнил 1 или 2 задачи "Незачет" ставится, если слушатель успешно выполнил 0 задач Критерии оценивания: 1 - слушатель верно создал функцию, которая принимает кол-во сек и формат их в кол-во дней часов. 2 - слушатель выведили только четные числа от 1 до 10.