insert into user_to_favorite_products (favorite_product_id, product_id, user_id, date_added)
select
    generate_series(1, 10000) as favorite_product_id,
    (random() * 9999)::INT + 1 as product_id,
    (random() * 9999)::INT + 1 as user_id,
    now();

insert into cost_change (cost_change_id, cost_change_date, new_cost)
select
    generate_series(1, 10000),
    now() - interval '24 weeks' + random() * interval '24 weeks' as cost_change_date,
    (random() * 249999)::INT + 1 AS new_cost;

insert into employee (employee_id, first_name, last_name, job_title)
select
    generate_series(1, 10000) as employee_id,
	case
		when random() < 0.3 then 'Мария'
		when random() < 0.3 then 'Ярик'
		when random() < 0.3 then 'Влад'
		when random() < 0.3 then 'Денис'
		else 'Саня'
	end,
	case
		when random() < 0.3 then 'Иванова'
		when random() < 0.3 then 'Яковлев'
		when random() < 0.3 then 'Беляев'
		when random() < 0.3 then 'Никитин'
		else 'Фёдоров'
	end,
    case
		when random() < 0.1 then 'Региональный управляющий'
		when random() < 0.2 then 'Директор'
		when random() < 0.5 then 'Сотрудник пункта выдачи'
		when random() < 0.4 then 'Грузчик'
		else 'Кассир'
	end;

insert into producer (producer_id, producer_name, registered_address)
select
    generate_series(1, 1000) as employee_id,
	case
		when random() < 0.3 then 'Владимир'
		when random() < 0.3 then 'Ярослав'
		when random() < 0.3 then 'Станислав'
		when random() < 0.3 then 'Денис'
		else 'Александр'
	end,
	case
		when random() < 0.3 then 'ул. Первая, д.1'
		when random() < 0.3 then 'пр-т Второй, д.2'
		when random() < 0.3 then 'ул. Третья, д.3'
		when random() < 0.3 then 'пр-т Восьмой, д.8'
		else 'ул. Пятая, д.5'
	end;