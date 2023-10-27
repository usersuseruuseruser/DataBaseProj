ALTER TABLE products 
ADD CONSTRAINT chk_name_length CHECK (LENGTH(name) > 3),
ADD CONSTRAINT chk_price_positive CHECK (price > 0);

ALTER TABLE products_warehouses 
ADD CONSTRAINT chk_products_amount_positive CHECK (products_amount > 0),
ADD CONSTRAINT chk_shabbiness_range CHECK (shabbiness BETWEEN 0 AND 10);

ALTER TABLE warehouses 
ADD CONSTRAINT chk_adress_length CHECK (LENGTH(adress) > 10);
