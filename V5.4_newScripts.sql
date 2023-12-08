ALTER TABLE employee 
ADD CONSTRAINT chk_name_length CHECK (LENGTH(name) > 1),
ADD CONSTRAINT chk_job_title CHECK (LENGTH(job_title) > 3);

ALTER TABLE pickuppoint 
ADD CONSTRAINT chk_status CHECK (LENGTH(status) > 4),
ADD CONSTRAINT chk_id CHECK (id BETWEEN 0 AND 1_000_000);

ALTER TABLE courier_delivers_topointofissue 
ADD CONSTRAINT chk_status CHECK (LENGTH(status) > 4),
ADD CONSTRAINT chk_id CHECK (id BETWEEN 0 AND 1_000_000);

ALTER TABLE employee_work_in_pickpoint 
ADD CONSTRAINT chk_status CHECK (LENGTH(status) > 4),
ADD CONSTRAINT chk_employee_pickpoint_id CHECK (id BETWEEN 0 AND 1_000_000);