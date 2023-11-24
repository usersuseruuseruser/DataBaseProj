alter table delivery add constraint courier_id_fk foreign key(courier_id) references couriers(courier_id);

alter table bonusaccounts add constraint bonusaccounts_user_id_fk foreign key(user_id) references users(user_id);

alter table order_bonusaccount add constraint order_bonusaccount_order_id_fk foreign key(order_id) references orders(order_id);
alter table order_bonusaccount add constraint order_bonusaccount_bonusaccount_id_fk foreign key(bonusaccount_id) references bonusaccounts(bonusaccount_id);

alter table productsreviews add constraint productsreviews_product_id_fk foreign key(product_id) references products(product_id);
alter table productsreviews add constraint productsreviews_review_id_fk foreign key(review_id) references reviews(review_id);

alter table purchases add constraint purchases_user_id_fk foreign key(user_id) references users(user_id);

alter table order_undergone_refunds add constraint order_undergone_refunds_order_id_fk foreign key(order_id) references orders(order_id);

alter table products_orders add constraint products_orders_order_id_fk foreign key(order_id) references orders(order_id);
alter table products_orders add constraint products_orders_product_id_fk foreign key(product_id) references products(product_id);