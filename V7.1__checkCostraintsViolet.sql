alter table products_orders
add constraint products_amount_check check(product_amount > 0);

alter table bonusaccounts
add constraint bonuses_amount_check check(bonuses between 0 and 10000);

alter table delivery
add constraint delivery_date_check check(delivery_date >= '2023-10-20');