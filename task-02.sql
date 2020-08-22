-- Данные табицы
SELECT *
FROM opros_res;

-- Количество опросов конкретного оператора в день
SELECT
       date_trunc('day', dattim ) as date,
       n_op, count(*) as kol
FROM opros_res
GROUP BY date, n_op
ORDER BY date, n_op;


-- Количество дней опроса, количество оперторов и количество проведенных опросов, а так же максим колво на 1 оператора
SELECT date_trunc('month', date ) as mdate,
       count(DISTINCT (t.date)) as kol_d,
       count(DISTINCT (t.n_op)) as kol_op,
       sum(countq) as kol_q,
       max(countq) as max_q
FROM
     (SELECT date_trunc('day', dattim ) as date, n_op, count(*) as countq
     FROM opros_res
     GROUP BY date, n_op
     ORDER BY date, n_op)  t
GROUP BY mdate
ORDER BY mdate;


-- Cреднее и максмальное кол во опросов на 1 оператора в разрезе месяца
SELECT to_char(mdate, 'Month YYYY') as Месяц,
       round(kol_q/(kol_d*kol_op), 3) as Среднее,
       max_q as Максимальное
       FROM
        (SELECT date_trunc('month', date ) as mdate,
               count(DISTINCT (t.date)) as kol_d,
               count(DISTINCT (t.n_op)) as kol_op,
               sum(countq) as kol_q,
               max(countq) as max_q
        FROM
             (SELECT date_trunc('day', dattim ) as date, n_op, count(*) as countq
             FROM opros_res
             GROUP BY date, n_op
             ORDER BY date, n_op)  t
        GROUP BY mdate
        ORDER BY mdate) l;