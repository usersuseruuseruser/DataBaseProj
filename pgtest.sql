\set category_id random(1, 10)
BEGIN;

SELECT cp.category_id, cp.product_id, p.name, p.price
FROM category_products cp
JOIN products p ON p.product_id = cp.product_id 
WHERE cp.category_id = :category_id;

END;