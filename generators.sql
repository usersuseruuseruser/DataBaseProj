insert into users(first_name, last_name, login, password)
select
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
	md5(id::varchar),
	md5(random()::text)

from generate_series(1,10000) id;

insert into reviews(reviewtext, rating)
select
	case
		when random() < 0.3 then 'Отличный продукт!'
		when random() < 0.3 then 'Не могу нарадоваться!'
		when random() < 0.3 then 'Не понравилось...'
		when random() < 0.3 then 'Замечательное качество.'
		else 'Фёдоров'
	end,
	(random()*10)::int
from generate_series(1,10000) id;

insert into usersreviews (user_id , review_id, review_date)
select
	(random()*10000)::int,
	(random()*10000)::int,
	current_date - random() * interval '365 days'
from generate_series(1,10000) id;


insert into orders (status , delivery_address, start_price, final_price, registration_date)
select
		case
		when random() < 0.3 then 'Ожидает подтверждения'
		when random() < 0.3 then 'В обработке'
		when random() < 0.3 then 'Готов к доставке'
		when random() < 0.3 then 'В пути'
		else 'Доставлен'
	end,
	(random() * 1000)::int || ' ' || 
    (case when random() < 0.5 then 'Main Street' else 'Park Avenue' end) || ', ' || 
    (CASE when random() < 0.5 then 'City A' else 'City B' end) || ', ' || 
    (random() * 90000 + 10000)::int,

	(random()*99000 + 1000)::int,
	(random()*99000 + 1000)::int,
	current_date - random() * interval '365 days'
from generate_series(1,10000) id;


insert into user_order (user_id , order_id)
select
	(random()*10000)::int,
	(random()*10000)::int
from generate_series(1,10000) id;