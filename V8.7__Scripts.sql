CREATE SEQUENCE employee_seq;
ALTER TABLE employee ADD PRIMARY KEY (employee_id);
ALTER TABLE employee ALTER COLUMN employee_id SET DEFAULT nextval('employee_seq');

CREATE SEQUENCE pickuppoint_seq;
ALTER TABLE pickuppoint ADD PRIMARY KEY (id);
ALTER TABLE pickuppoint ALTER COLUMN id SET DEFAULT nextval('pickuppoint_seq');

CREATE SEQUENCE employee_work_in_pickpoint_seq;
ALTER TABLE employee_work_in_pickpoint ADD PRIMARY KEY (employee_pickpoint_id);
ALTER TABLE employee_work_in_pickpoint ALTER COLUMN employee_pickpoint_id SET DEFAULT nextval('employee_work_in_pickpoint_seq');