-- Содержание таблицы
SELECT *
FROM opros_res;

-- Развбиение отвеов по строкам, округление даты до месяца
SELECT
       date_trunc('month', dattim ) as datround,
       regexp_split_to_table(answ, ',') as answer
FROM opros_res;

-- Подсчет ответов по каналам в разрезе месяца
SELECT
       date_trunc('month', dattim ) as datround,
       regexp_split_to_table(answ, ',') as answer,
       count(*) as kol
FROM opros_res
GROUP BY datround, answer
ORDER BY datround, answer;


-- Подсчет ответов по каналам в разрезе месяца
SELECT to_char(datround, 'Mon YYYY') as Месяц,
       t.answer as Номер_телеканала,
       t.kol as Количество_голосов
       FROM
            (SELECT
                   date_trunc('month', dattim ) as datround,
                   regexp_split_to_table(answ, ',') as answer,
                   count(*) as kol
            FROM opros_res
            GROUP BY datround, answer
            ORDER BY datround, answer ) AS t
ORDER BY datround, answer;

-- Формирование запроса с нарастающим итогом
SELECT to_char(datround, 'Mon YYYY') as Месяц,
    t.answer as Номер_телеканала,
    sum(t.kol) over(partition by  t.answer order by datround) Количество_голосов
        FROM
            (SELECT
                date_trunc('month', dattim ) as datround,
                regexp_split_to_table(answ, ',') as answer,
                count(*) as kol
            FROM opros_res
            GROUP BY datround, answer
            ORDER BY datround, answer
            ) AS t
ORDER BY datround, answer;