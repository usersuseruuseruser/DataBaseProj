CREATE SEQUENCE category_seq;
ALTER TABLE category ADD PRIMARY KEY (category_id);
ALTER TABLE category ALTER COLUMN category_id SET DEFAULT nextval('category_seq');

CREATE SEQUENCE category_products_seq;
ALTER TABLE category_products ADD PRIMARY KEY (category_products_id);
ALTER TABLE category_products ALTER COLUMN category_products_id SET DEFAULT nextval('category_products_seq');

CREATE SEQUENCE cost_change_seq;
ALTER TABLE cost_change ADD PRIMARY KEY (cost_change_id);
ALTER TABLE cost_change ALTER COLUMN cost_change_id SET DEFAULT nextval('cost_change_seq');

CREATE SEQUENCE product_undergone_costChanges_seq;
ALTER TABLE product_undergone_costChanges ADD PRIMARY KEY (products_costchange_id);
ALTER TABLE product_undergone_costChanges ALTER COLUMN products_costchange_id SET DEFAULT nextval('product_undergone_costChanges_seq');

CREATE SEQUENCE orders_has_destinations_seq;
ALTER TABLE orders_has_destinations ADD PRIMARY KEY (order_destination_id);
ALTER TABLE orders_has_destinations ALTER COLUMN order_destination_id SET DEFAULT nextval('orders_has_destinations_seq');

CREATE SEQUENCE product_refund_seq;
ALTER TABLE product_refund ADD PRIMARY KEY (product_refund_id);
ALTER TABLE product_refund ALTER COLUMN product_refund_id SET DEFAULT nextval('product_refund_seq');

CREATE SEQUENCE order_undergone_refunds_seq;
ALTER TABLE order_undergone_refunds ADD PRIMARY KEY (order_refund_id);
ALTER TABLE order_undergone_refunds ALTER COLUMN order_refund_id SET DEFAULT nextval('order_undergone_refunds_seq');

CREATE SEQUENCE employee_seq;
ALTER TABLE employee ADD PRIMARY KEY (employee_id);
ALTER TABLE employee ALTER COLUMN employee_id SET DEFAULT nextval('employee_seq');

CREATE SEQUENCE courier_delivers_toPointOfIssue_seq;
ALTER TABLE courier_delivers_toPointOfIssue ADD PRIMARY KEY (courier_pickup_delivery_id);
ALTER TABLE courier_delivers_toPointOfIssue ALTER COLUMN courier_pickup_delivery_id SET DEFAULT nextval('courier_delivers_toPointOfIssue_seq');

CREATE SEQUENCE pickupPoint_seq;
ALTER TABLE pickupPoint ADD PRIMARY KEY (id);
ALTER TABLE pickupPoint ALTER COLUMN id SET DEFAULT nextval('pickupPoint_seq');

CREATE SEQUENCE employee_work_in_pickpoint_seq;
ALTER TABLE employee_work_in_pickpoint ADD PRIMARY KEY (employee_pickpoint_id);
ALTER TABLE employee_work_in_pickpoint ALTER COLUMN employee_pickpoint_id SET DEFAULT nextval('employee_work_in_pickpoint_seq');

CREATE SEQUENCE orders_seq;
ALTER TABLE orders ADD PRIMARY KEY (order_id);
ALTER TABLE orders ALTER COLUMN order_id SET DEFAULT nextval('orders_seq');

CREATE SEQUENCE user_order_seq;
ALTER TABLE user_order ADD PRIMARY KEY (user_order_id);
ALTER TABLE user_order ALTER COLUMN user_order_id SET DEFAULT nextval('user_order_seq');

CREATE SEQUENCE bonusAccounts_seq;
ALTER TABLE bonusAccounts ADD PRIMARY KEY (bonusAccount_id);
ALTER TABLE bonusAccounts ALTER COLUMN bonusAccount_id SET DEFAULT nextval('bonusAccounts_seq');

CREATE SEQUENCE order_bonusAccount_seq;
ALTER TABLE order_bonusAccount ADD PRIMARY KEY (order_bonusAcc_id);
ALTER TABLE order_bonusAccount ALTER COLUMN order_bonusAcc_id SET DEFAULT nextval('order_bonusAccount_seq');

CREATE SEQUENCE couriers_seq;
ALTER TABLE couriers ADD PRIMARY KEY (courier_id);
ALTER TABLE couriers ALTER COLUMN courier_id SET DEFAULT nextval('couriers_seq');

CREATE SEQUENCE delivery_seq;
ALTER TABLE delivery ADD PRIMARY KEY (delivery_id);
ALTER TABLE delivery ALTER COLUMN delivery_id SET DEFAULT nextval('delivery_seq');

CREATE SEQUENCE order_delivery_seq;
ALTER TABLE order_delivery ADD PRIMARY KEY (order_delivery_id);
ALTER TABLE order_delivery ALTER COLUMN order_delivery_id SET DEFAULT nextval('order_delivery_seq');

CREATE SEQUENCE payments_seq;
ALTER TABLE payments ADD PRIMARY KEY (payment_order_id);
ALTER TABLE payments ALTER COLUMN payment_order_id SET DEFAULT nextval('payments_seq');

CREATE SEQUENCE purchases_seq;
ALTER TABLE purchases ADD PRIMARY KEY (user_purchase_id);
ALTER TABLE purchases ALTER COLUMN user_purchase_id SET DEFAULT nextval('purchases_seq');

CREATE SEQUENCE paid_products_seq;
ALTER TABLE paid_products ADD PRIMARY KEY (payment_order_id);
ALTER TABLE paid_products ALTER COLUMN payment_order_id SET DEFAULT nextval('paid_products_seq');

CREATE SEQUENCE warehouses_seq;
ALTER TABLE warehouses ADD PRIMARY KEY (warehouse_id);
ALTER TABLE warehouses ALTER COLUMN warehouse_id SET DEFAULT nextval('warehouses_seq');

CREATE SEQUENCE producer_seq;
ALTER TABLE producer ADD PRIMARY KEY (producer_id);
ALTER TABLE producer ALTER COLUMN producer_id SET DEFAULT nextval('producer_seq');

CREATE SEQUENCE replenishments_seq;
ALTER TABLE replenishments ADD PRIMARY KEY (warehouse_producer_product_id);
ALTER TABLE replenishments ALTER COLUMN warehouse_producer_product_id SET DEFAULT nextval('replenishments_seq');

CREATE SEQUENCE products_warehouses_seq;
ALTER TABLE products_warehouses ADD PRIMARY KEY (product_warehouse_id);
ALTER TABLE products_warehouses ALTER COLUMN product_warehouse_id SET DEFAULT nextval('products_warehouses_seq');

CREATE SEQUENCE products_orders_seq;
ALTER TABLE products_orders ADD PRIMARY KEY (order_product_id);
ALTER TABLE products_orders ALTER COLUMN order_product_id SET DEFAULT nextval('products_orders_seq');

CREATE SEQUENCE Bucket_seq;
ALTER TABLE Bucket ADD PRIMARY KEY (bucket_id);
ALTER TABLE Bucket ALTER COLUMN bucket_id SET DEFAULT nextval('Bucket_seq');

CREATE SEQUENCE ProductsReviews_seq;
ALTER TABLE ProductsReviews ADD PRIMARY KEY (product_review_id);
ALTER TABLE ProductsReviews ALTER COLUMN product_review_id SET DEFAULT nextval('ProductsReviews_seq');

CREATE SEQUENCE ProductsBuckets_seq;
ALTER TABLE ProductsBuckets ADD PRIMARY KEY (bucket_product_id);
ALTER TABLE ProductsBuckets ALTER COLUMN bucket_product_id SET DEFAULT nextval('ProductsBuckets_seq');

CREATE SEQUENCE Reviews_seq;
ALTER TABLE Reviews ADD PRIMARY KEY (review_id);
ALTER TABLE Reviews ALTER COLUMN review_id SET DEFAULT nextval('Reviews_seq');

CREATE SEQUENCE saleInfoProduct_seq;
ALTER TABLE saleInfoProduct ADD PRIMARY KEY (saleInfo_product_id);
ALTER TABLE saleInfoProduct ALTER COLUMN saleInfo_product_id SET DEFAULT nextval('saleInfoProduct_seq');

CREATE SEQUENCE SaleInfo_seq;
ALTER TABLE SaleInfo ADD PRIMARY KEY (saleInfo_id);
ALTER TABLE SaleInfo ALTER COLUMN saleInfo_id SET DEFAULT nextval('SaleInfo_seq');

CREATE SEQUENCE UsersBuckets_seq;
ALTER TABLE UsersBuckets ADD PRIMARY KEY (user_bucket_id);
ALTER TABLE UsersBuckets ALTER COLUMN user_bucket_id SET DEFAULT nextval('UsersBuckets_seq');

CREATE SEQUENCE UsersReviews_seq;
ALTER TABLE UsersReviews ADD PRIMARY KEY (user_review_id);
ALTER TABLE UsersReviews ALTER COLUMN user_review_id SET DEFAULT nextval('UsersReviews_seq');

CREATE SEQUENCE Products_seq;
ALTER TABLE Products ADD PRIMARY KEY (product_id);
ALTER TABLE Products ALTER COLUMN product_id SET DEFAULT nextval('Products_seq');

CREATE SEQUENCE users_seq;
ALTER TABLE users ADD PRIMARY KEY (user_id);
ALTER TABLE users ALTER COLUMN user_id SET DEFAULT nextval('users_seq');
