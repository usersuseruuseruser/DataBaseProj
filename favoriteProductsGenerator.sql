insert into user_to_favorite_products (favorite_product_id, product_id, user_id, date_added)
select
    generate_series(1, 10000) as favorite_product_id,
    (random() * 9999)::INT + 1 as product_id,
    (random() * 9999)::INT + 1 as user_id,
    now();