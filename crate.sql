create database crate;

use crate;
create table crate_info(
	item_id int,
    item_name varchar(10),
    item_price double,
    items_number int,
    item_serial_id bigint,
    item_mfg_date date,
    item_availability boolean
);

desc crate_info;
rename table crate_info to item_details;
-- drop table item_details;
desc item_details;

alter table item_details add item_exp_date date;
alter table item_details drop column item_availability;
alter table item_details rename column item_mfg_date to item_mfd_date;
alter table item_details modify column item_serial_id int;

insert into item_details values (1,"Apple",200.50,1,12345,'2025-01-30','2025-01-30');
-- insert into item_details(item_id,
-- 					   item_name,
-- 					   item_price,
--                        item_serial_id,
--                        item_mfd_date)
--                        values (2,"Ball",200.50,12345,'2025-02-30');
insert into item_details values (2,"Ball",200.50,2,12345,'2025-02-28','2025-02-28'),
								(3,"Cat",200.50,3,12345,'2025-03-30','2025-03-30'),
							    (4,"Dall",200.50,4,12345,'2025-04-30','2025-04-30'),
							    (5,"Egg",200.50,5,12345,'2025-05-30','2025-05-30'),
							    (6,"Fan",200.50,6,12345,'2025-06-30','2025-06-30'),
								(7,"Game",200.50,7,12345,'2025-07-30','2025-07-30'),
								(8,"Hen",200.50,8,12345,'2025-08-30','2025-08-30'),
								(9,"Image",200.50,9,12345,'2025-09-30','2025-09-30'),
								(10,"Joker",200.50,10,12345,'2025-10-30','2025-10-30');
-- update item_details set items_number=9 where item_id=1;    
update item_details set item_mfd_date='2025-11-30',items_number=9 where item_id=1;    
    
delete from item_details where item_id=9;

select * from item_details;