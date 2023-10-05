create table orders
(
	order_id bigint,
	status text,
	delivery_address text,
	start_price float,
	final_price float,
	registration_date date
);
create table user_order
(
	user_order_id BIGINT,
	user_id bigint,
	order_id bigint
);
create table bonusAccounts
(
	bonusAccount_id bigint,
	user_id bigint,
	bonuses bigint
);
create table order_bonusAccount
(
	order_bonusAcc_id BIGINT,
	order_id bigint,
	bonusAccount_id bigint,
	bonuses bigint,
	withdrawal_date date
);
create table couriers
(
	courier_id bigint,
	first_name varchar(30),
	last_name varchar(30)
);
create table delivery
(
	delivery_id bigint,
	status text,
	courier_id bigint,
	delivery_date date,
	type_delivery text
);
create table order_delivery
(
    	order_delivery_id BIGINT,
	order_id bigint,
	delivery_id bigint,
	list_products text
);