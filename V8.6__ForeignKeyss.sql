alter table employee_work_in_pickpoint add constraint employee_id_fk foreign key(employee_id) references employee(employee_id);
alter table employee_work_in_pickpoint add constraint pickup_point_id_fk foreign key(pickup_point_id) references pickuppoint(id);

alter table courier_delivers_topointofissue add constraint courier_id_fk foreign key(courier_id) references couriers(courier_id);
alter table courier_delivers_topointofissue add constraint pickup_point_id_fk foreign key(pickuppoint_id) references pickuppoint(id);