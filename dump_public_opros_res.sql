create table opros_res
(
    dattim timestamp,
    n_op   varchar(4),
    answ   varchar(10)
);

alter table opros_res
    owner to postgres;

INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-01-16 20:35:00.000000', '1', '1,4,6');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-01-27 19:41:00.000000', '3', '6,5,2');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-01-29 16:23:00.000000', '3', '1,6,7');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-01-30 12:45:00.000000', '4', '7,4,5');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-01-30 12:53:00.000000', '5', '6,1');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-01 14:29:00.000000', '9', '2,7');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-06 11:36:00.000000', '3', '2,1,6');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-10 13:52:00.000000', '2', '7,1');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-15 11:19:00.000000', '3', '5,3,2');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-17 14:51:00.000000', '7', '6,7');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-24 13:11:00.000000', '4', '4,7');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-24 13:16:00.000000', '5', '1,3,6');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-24 13:26:00.000000', '8', '5,7');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-04-24 13:26:00.000000', '9', '7,3,1');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-04-24 14:39:00.000000', '2', '3,2,7');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-24 18:35:00.000000', '1', '3,2');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-24 18:36:00.000000', '1', '2,5,1');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-24 18:36:00.000000', '1', '7');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-24 18:38:00.000000', '8', '1,5');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-02-27 15:18:00.000000', '6', '1,5,3');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-03-05 16:59:00.000000', '3', '6,7,2');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-03-12 16:57:00.000000', '1', '4,6');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-03-20 14:58:00.000000', '4', '3');
INSERT INTO public.opros_res (dattim, n_op, answ) VALUES ('2014-04-24 09:55:00.000000', '8', '2,6,7');