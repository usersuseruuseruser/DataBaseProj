create or replace view v_orders_in_progress_virtual as
    SELECT DISTINCT u.user_id, o.order_id, o.final_price, o.status, o.delivery_address
        FROM users as u
        JOIN user_order as uo ON u.user_id = uo.user_id
        JOIN orders as o ON uo.order_id = o.order_id
        WHERE o.status in ('В пути', 'В пункте выдачи');