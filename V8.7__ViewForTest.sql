create or replace view v_orders_virtual as
select uo.user_id, o.order_id, o.status, o.delivery_address, o.start_price, o.final_price, o.registration_date
from user_order uo
join orders o ON uo.user_id = o.order_id;