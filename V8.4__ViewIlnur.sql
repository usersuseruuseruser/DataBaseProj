create or replace view v_users_virtual as
SELECT DISTINCT u.user_id, u.first_name, u.last_name
FROM users u
JOIN user_order uo ON u.user_id = uo.user_id
JOIN payments p ON uo.order_id = p.order_id
WHERE p.status = 'Оплачено';