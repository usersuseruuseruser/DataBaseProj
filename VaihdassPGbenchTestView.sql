\set id random(1,9223372036854775806)

begin;
select *
from v_favorite_products
where user_id = :id;
end;