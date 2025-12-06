use bin;

create table bin_info(
	id int,
    item_name char(10),
    item_price int,
    exp_date date,
    availability boolean
);

desc bin_info;
rename table bin_info to bin_details;
desc bin_details;

alter table bin_details add item_serial_id bigint;
alter table bin_details add mfg_date date;
alter table bin_details drop column availability;
alter table bin_details rename column item_price to price;
alter table bin_details rename column item_name to name;
alter table bin_details rename column item_serial_id to serial_id;
alter table bin_details modify column name varchar(15);

insert into bin_details values (1,"Papers",15,'2026-01-30',123456789,'2025-01-30');
insert into bin_details values (2,"Gadgets",3000,'2026-01-30',123456789,'2025-01-30'),
							   (3,"Laptop",60000,'2026-01-30',123456789,'2025-01-30');
                               
insert into bin_details (id,name,price) values (4,"Mobile",20000);                               

select * from bin_details;