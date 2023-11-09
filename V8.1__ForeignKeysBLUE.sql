alter table usersbuckets add constraint bucket_id_fk foreign key(bucket_id) references bucket(bucket_id);
alter table usersbuckets add constraint user_id_fk foreign key(user_id) references users(user_id);

alter table productsbuckets add constraint bucket_id_fk foreign key(bucket_id) references bucket(bucket_id);
alter table productsbuckets add constraint product_id_fk foreign key(product_id) references products(product_id);

alter table category_products add constraint category_id_fk foreign key(category_id) references category(category_id);
alter table category_products add constraint product_id_fk foreign key(product_id) references products(product_id);

alter table products_warehouses add constraint 	product_id_fk foreign key(product_id) references products(product_id);
alter table products_warehouses add constraint warehouse_id_fk foreign key(warehouse_id) references warehouses(warehouse_id);
