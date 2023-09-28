create table employee
(
	employee_id bigint,
	first_name varchar(30),
	last_name varchar(30),
	job_title text
);
create table courier_delivers_toPointOfIssue
(
	courier_id bigint,
	destination_id bigint,
	delivery_id bigint
);
create table destination
(
	id bigint,
	address bigint
);
create table byCourierToTheAddress
(
	status text,
	id bigint
);
create table controlledDestinations
(
	description_howToFind text
);
create table parcelLocker
(
	status text,
	id bigint
);
create table pickupPoint
(
	status text,
	id bigint
);
create table employee_work_in_pickpoint
(
	pickup_point_id bigint,
	employee_id bigint,
	employee_status text
);