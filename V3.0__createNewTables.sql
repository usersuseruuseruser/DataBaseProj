create table employee
(
	employee_id bigint,
	first_name varchar(30),
	last_name varchar(30),
	job_title text
);
create table courier_delivers_toPointOfIssue
(
	courier_pickup_delivery_id BIGINT,
	courier_id bigint,
	pickupPoint_id bigint,
	delivery_id bigint
);
create table pickupPoint
(
	id bigint,
	adress text
);
create table employee_work_in_pickpoint
(
	employee_pickpoint_id BIGINT,
	pickup_point_id bigint,
	employee_id bigint,
	employee_status text
);