\set id random(1,9223372036854775806)

begin;
select u.user_id, u.first_name, u.last_name, u.login, p.product_id, p.name, p.price
from users as u
join user_to_favorite_products as ufp on u.user_id = ufp.user_id
join products as p on ufp.product_id = p.product_id
where u.user_id = :id;
end;