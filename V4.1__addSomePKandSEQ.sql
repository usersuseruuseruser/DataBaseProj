alter table users add primary key(user_id);
create sequence users_seq;
alter table users alter column user_id set default nextval('users_seq');

alter table orders add primary key(order_id);
create sequence orders_seq;
alter table orders alter column order_id set default nextval('orders_seq');

alter table payments add primary key(payment_id);
create sequence payments_seq;
alter table payments alter column payment_id set default nextval('payments_seq');

alter table usersreviews add primary key(review_id);
create sequence usersreviews_seq;
alter table usersreviews alter column review_id set default nextval('usersreviews_seq');

alter table products add primary key(product_id);
create sequence products_seq;
alter table products alter column product_id set default nextval('products_seq');

alter table category add primary key(category_id);
create sequence category_seq;
alter table category alter column category_id set default nextval('category_seq');
