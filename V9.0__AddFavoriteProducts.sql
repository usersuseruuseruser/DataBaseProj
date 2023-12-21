-- create favorite products table
create table user_to_favorite_products (
    favorite_product_id bigint,
    product_id bigint,
    user_id bigint,
    date_added timestamp
);

-- Minor fix (adding amount of products, added date in bucket)
alter table productsbuckets
add amount int not null
default 1;

alter table productsbuckets
add date_added timestamp not null
default now();

-- Unique
alter table user_to_favorite_products
add constraint product_and_user_unique
unique(product_id, user_id);

alter table productsbuckets
add constraint bucket_and_product_unique
unique(bucket_id, product_id);

alter table usersbuckets
add constraint users_buckets_user_unique
unique(user_id);

alter table usersbuckets
add constraint users_buckets_bucket_unique
unique(bucket_id);

-- Primary key
create sequence favorite_products_seq;
alter table user_to_favorite_products
    add primary key (favorite_product_id);
alter table user_to_favorite_products
    alter column favorite_product_id set default nextval('favorite_products_seq');

-- Foreign key
alter table user_to_favorite_products
    add constraint favorite_products_user_fk
    foreign key (user_id) references users(user_id) on delete cascade;

alter table user_to_favorite_products
    add constraint favorite_products_product_fk
    foreign key (product_id) references products(product_id) on delete cascade;

alter table replenishments
    add constraint replenishments_warehouse_fk
    foreign key (warehouse_id) references warehouses(warehouse_id);

alter table replenishments
    add constraint replenishments_producer_fk
    foreign key (producer_id) references producer(producer_id);

alter table replenishments
    add constraint replenishments_product_fk
    foreign key (product_id) references products(product_id);

-- Check constraints
alter table productsbuckets
add constraint products_buckets_count_check
check (productsbuckets.amount > 0 and productsbuckets.amount < 100000);

alter table user_to_favorite_products
add constraint favorite_product_date_added_check
check (user_to_favorite_products.date_added < now());

alter table productsbuckets
add constraint products_buckets_date_added_check
check (productsbuckets.date_added < now());

alter table saleinfo
add constraint sale_info_names_check
check (length(name) > 0 and length(description) > 0);

alter table saleinfo
add constraint sale_info_percent_check
check (percentslash > 0 and percentslash < 100);