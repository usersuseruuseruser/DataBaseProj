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
	

	

	
