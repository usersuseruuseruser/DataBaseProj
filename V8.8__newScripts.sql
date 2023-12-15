ALTER TABLE employee 
ADD CONSTRAINT chk_name_length CHECK (LENGTH(first_name) > 1),
ADD CONSTRAINT chk_job_title CHECK (LENGTH(job_title) > 3);

ALTER TABLE pickuppoint 
ADD CONSTRAINT chk_adress CHECK (LENGTH(adress) > 4),
ADD CONSTRAINT chk_id CHECK (id BETWEEN 0 AND 1000000);

ALTER TABLE courier_delivers_topointofissue 
ADD CONSTRAINT chk_delivery_id CHECK (delivery_id BETWEEN 0 AND 10000000),
ADD CONSTRAINT chk_courier_id CHECK (courier_id BETWEEN 0 AND 1000000);

ALTER TABLE employee_work_in_pickpoint 
ADD CONSTRAINT chk_employee_status CHECK (LENGTH(employee_status) > 4),
ADD CONSTRAINT chk_employee_pickpoint_id CHECK (employee_pickpoint_id BETWEEN 0 AND 1000000);