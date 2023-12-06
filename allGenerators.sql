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

	(random()*99000 + 50000)::int,
	(random()*49000 + 1000)::int,
	current_date - random() * interval '365 days'
from generate_series(1,10000) id;


insert into user_order (user_id , order_id)
select
	(random()*9999)::int + 1,
	(random()*9999)::int + 1
from generate_series(1,10000) id;

insert into payments (payment_id, order_id, status, total)
select
	(random() * 9999)::int + 1,
	(random() * 9999)::int + 1,
	case
		when random() < 0.3 then 'Оплачено'
		when random() < 0.3 then 'В ожидании оплаты'
		when random() < 0.3 then 'Отклонено'
		else 'Возврат'
	end,
	(random()*99000 + 1000)::int
from generate_series(1, 10000) id;

insert into paid_products (payment_id, order_id, payment_date)
select
	(random()*9999)::int + 1,
	(random()*9999)::int + 1,
	current_date - random() * interval '365 days'
from generate_series(1,10000) id;


INSERT INTO bucket (bucket_id)
SELECT generate_series(1, 10000);

INSERT INTO usersbuckets(user_id, bucket_id)
SELECT generate_series(1, 10000), generate_series(1, 10000);

INSERT INTO products (name, price)
SELECT 
    LEFT(md5(random()::text), 30) AS name, 
    (random() * (50000 - 500) + 500)::INT AS price
FROM generate_series(1, 10000);


INSERT INTO productsbuckets (bucket_id, product_id)
SELECT 
    generate_series(1, 10000) AS bucket_id, 
    (random() * 9999)::INT + 1 AS product_id;

INSERT INTO category_products (product_id, category_id)
SELECT 
    generate_series(1, 10000) AS product_id, 
    (random() * 9)::INT + 1 AS category_id;

INSERT INTO products_warehouses (product_id, warehouse_id, products_amount, shabbiness)
SELECT 
    generate_series(1, 10000) AS product_id, 
    (random() * 9)::INT + 1 AS warehouse_id,
    (random() * (50000 - 500) + 500)::INT AS products_amount,
    (random() * 10)::INT AS shabbiness;


insert into product_refund (refund_id, product_id, product_amount, shabbiness)
select
	(random()*9999)::int + 1,
	(random()*9999)::int + 1,
	(random()*99 + 1)::int,
	(random()*10)::int
from generate_series(1,10000) id;

insert into usersreviews (user_id , review_id, review_date)
select
	(random()*9999)::int + 1,
	(random()*9999)::int + 1,
	current_date - random() * interval '365 days'
from generate_series(1,10000) id;

insert into couriers (courier_id, first_name, last_name)
select
	generate_series(1,10000),
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
	end;


insert into delivery (status, courier_id, delivery_date, type_delivery)
select 
	case
		when random() < 0.3 then 'Курьер забрал ваш заказ'
		when random() < 0.3 then 'Курьер доставил Ваш заказ'
		else 'Курьер отменил Ваш заказ'
	end,
	generate_series(1,10000),
	'2023-10-20'::timestamp + (random() * ('2023-11-03'::timestamp - '2023-10-20'::timestamp)),
	case
		when random() < 0.3 then 'На дом'
		else 'На пункт выдачи заказов'
	end;

	

	
insert into bonusaccounts (bonusaccount_id, user_id, bonuses)
select
	id,
	id,
	(random() * 1000)::int
from generate_series(1,10000) id;

	
insert into order_bonusaccount (order_bonusacc_id, order_id, bonusaccount_id, bonuses, withdrawal_date)
select
	generate_series(1,10000),
	(random() * 9999)::int + 1,
	(random() * 9999)::int + 1,
	(random() * 9999)::int + 1,
	'2023-10-20'::timestamp + (random() * ('2023-11-03'::timestamp - '2023-10-20'::timestamp));

	
insert into productsreviews (product_review_id, product_id, review_id, review_date)
select
	generate_series(1,10000),
	(random() * 9999)::int + 1,
	(random() * 9999)::int + 1,
	'2023-10-20'::timestamp + (random() * ('2023-11-03'::timestamp - '2023-10-20'::timestamp));


insert into purchases
select
	generate_series(1,10000),
	(random() * 9999)::int + 1,
	(random() * 9999)::int + 1;

	
insert into order_undergone_refunds (order_refund_id, order_id, refund_id, refund_create_date)
select
	generate_series(1,10000),
	(random() * 9999)::int + 1,
	(random() * 9999)::int + 1,
	'2023-10-20'::timestamp + (random() * ('2023-11-03'::timestamp - '2023-10-20'::timestamp));


insert into products_orders
select
	generate_series(1,10000),
	(random() * 9999)::int + 1,
	(random() * 9999)::int + 1,
	(random() * 99)::int + 1;
	

	

	
