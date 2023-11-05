alter table user_order add constraint user_order_user_id_fk foreign key(user_id) references users(user_id);
alter table user_order add constraint user_order_order_id_fk foreign key(order_id) references orders(order_id);

alter table product_refund add constraint product_refund_product_id_fk foreign key(product_id) references products(product_id);

alter table usersreviews add constraint usersreviews_user_id_fk foreign key(user_id) references users(user_id);
alter table usersreviews add constraint usersreviews_review_id_fk foreign key(review_id) references reviews(review_id);

alter table payments add constraint payments_order_id_fk foreign key(order_id) references orders;

alter table paid_products add constraint paid_products_payment_id_fk foreign key(payment_id) references payments;
alter table paid_products add constraint paid_products_order_id_fk foreign key(order_id) references orders;
