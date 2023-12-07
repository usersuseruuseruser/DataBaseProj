CREATE OR REPLACE VIEW card_product_info AS

	WITH products_with_rating AS (
		SELECT p_v.product_id, 
			   (round(AVG(r.rating), 2)) avg_rating 
		FROM productsreviews p_v
		JOIN reviews r
		ON r.review_id = p_v.review_id
		GROUP BY p_v.product_id
	), products_with_category_and_price AS (
		SELECT p.product_id, 
			   p.name product_name, 
			   c.name category_name 
		FROM category_products c_p
		JOIN products p
		ON p.product_id = c_p.product_id
		JOIN category c
		ON c.category_id = c_p.category_id
	), products_with_orders AS (
		SELECT p_o.product_id,
			   COUNT(p_o.product_id) product_orders_count
		FROM products_orders p_o
		GROUP BY p_o.product_id
	)

	SELECT t1.product_name, 
		   t1.category_name, 
		   t2.avg_rating,
		   t3.product_orders_count
	FROM products_with_category_and_price t1
	JOIN products_with_rating t2
	ON t1.product_id = t2.product_id
	JOIN products_with_orders t3
	ON t1.product_id = t3.product_id;
