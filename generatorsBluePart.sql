INSERT INTO bucket (bucket_id)
SELECT generate_series(1, 10000);

INSERT INTO usersbuckets(user_id, bucket_id)
SELECT generate_series(1, 10000), generate_series(1, 10000);

INSERT INTO bucket (bucket_id)
SELECT generate_series(1, 10000);

INSERT INTO usersbuckets(user_id, bucket_id)
SELECT generate_series(1, 10000), generate_series(1, 10000);

INSERT INTO products (name, price)
SELECT 
    LEFT(md5(random()::text), 30) AS name, 
    (random() * (50000 - 500) + 500)::INT AS price
FROM generate_series(1, 10000);


INSERT INTO productsbuckets (bucket_id, product_id)
SELECT 
    generate_series(1, 10000) AS bucket_id, 
    (random() * 10000 + 1)::INT AS product_id;

INSERT INTO category_products (product_id, category_id)
SELECT 
    generate_series(1, 10000) AS product_id, 
    (random() * 10 + 1)::INT AS category_id

INSERT INTO products_warehouses (product_id, warehouse_id, products_amount, shabbiness)
SELECT 
    generate_series(1, 10000) AS product_id, 
    (random() * 10 + 1)::INT AS warehouse_id,
    (random() * (50000 - 500) + 500)::INT AS products_amount,
    (random() * 10)::INT AS shabbiness






