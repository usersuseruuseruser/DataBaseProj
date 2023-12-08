\set id random(1,9223372036854775806)

begin;
select * from v_orders_virtual
where user_id = :id;
end;

