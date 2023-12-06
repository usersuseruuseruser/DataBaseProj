create or replace view v_products_virtual as
select distinct p.product_id, p."name", p.price
from products p
join productsreviews pr
on p.product_id = pr.product_id
join reviews r
on pr.review_id = r.review_id
where r.rating > 5;