CREATE TABLE category
(
    category_id BIGINT,
    name VARCHAR(64),
    description VARCHAR(255)
);

CREATE TABLE category_products
(
    category_products_id BIGINT,
    category_id BIGINT,
    product_id BIGINT
);

CREATE TABLE cost_change
(
    cost_change_id BIGINT,
    cost_change_date TIMESTAMP,
    new_cost FLOAT
);

CREATE TABLE product_undergone_costChanges
(
    products_costchange_id BIGINT,
    product_id BIGINT,
    cost_change_id BIGINT
);

CREATE TABLE orders_has_destinations
(
    order_destination_id BIGINT,
    order_id BIGINT,
    destination_id BIGINT,
    delivery_date DATE,
    days_to_store INT,
    product_id BIGINT,
    product_amount INT
);

CREATE TABLE product_refund
(
    product_refund_id BIGINT,
    refund_id BIGINT,
    product_id BIGINT,
    product_amount INT,
    shabbiness INT
);

CREATE TABLE order_undergone_refunds
(
    order_refund_id BIGINT,
    order_id BIGINT,
    refund_id BIGINT,
    refund_create_date TIMESTAMP
);
