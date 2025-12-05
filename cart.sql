create database cart;

use cart;
create table product_info(
	product_id int,
    product_name varchar(15),
    price double,
    quantity int,
    serial_id bigint,
    mfg_date date,
    availability boolean
);
desc product_info;
-- rename table product_info to product_details;
-- drop table product_details;
alter table product_info modify column availability char(5);

insert into product_info values (1,"Apple",200.50,1,12345,'2025-01-30',"yes");
insert into product_info values (2,"Ball",100.50,2,12345,'2025-02-28',"yes"),
								(3,"Cat",150.50,3,12345,'2025-03-30',"yes"),
                                (4,"Dog",250.50,4,12345,'2025-04-30',"yes"),
                                (5,"Egg",300.50,5,12345,'2025-05-30',"yes");
                                
select * from product_info;							
