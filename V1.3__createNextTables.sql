create table payments
(
	payment_order_id BIGINT,
	payment_id BIGINT,
	order_id BIGINT,
	status VARCHAR(30),
	total FLOAT
);

create table purchases
(
	user_purchase_id BIGINT,
	user_id BIGINT,
	purchase_id BIGINT
);

create table paid_products
(
        payment_order_id BIGINT,
	payment_id BIGINT,
	order_id BIGINT,
	payment_date DATE
);

create table warehouses
(
	warehouse_id BIGINT,
	adress VARCHAR(128)
);

create table producer
(
	producer_id BIGINT,
	producer_name VARCHAR(30),
	registered_address VARCHAR(128)
);

create table replenishments
(
        warehouse_producer_product_id BIGINT,
	warehouse_id BIGINT,
	producer_id BIGINT,
	product_id BIGINT,
	supply_date DATE
);


create table products_warehouses
(
	product_warehouse_id BIGINT,
	product_id BIGINT,
	warehouse_id BIGINT,
	products_amount INT,
	shabbiness INT
);


create table products_orders
(
	order_product_id BIGINT,
	order_id BIGINT,
	product_id BIGINT,
	product_amount INT
);