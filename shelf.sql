use shelf;

create table item_details(
	item_id int primary key,
    item_name varchar(10) not null,
    item_price int check(item_price>0),
    item_serial_id varchar(10) unique,
    item_availability boolean,
    mfg_date date,
    exp_date date,
    item_discount double not null
);

desc item_details;

insert into item_details values (1,"Apple",100,"1234abcd",true,'2025-01-30','2025-12-30',8.8),
								(2,"Ball",30,"1235abce",true,'2025-01-30','2025-12-30',8.8),
                                (3,"Carrom",500,"1434aecd",true,'2025-01-30','2025-12-30',8.8),
                                (4,"Dall",200,"1234abcf",true,'2025-01-30','2025-12-30',8.8),
                                (5,"Bat",300,"1234abcg",true,'2025-01-30','2025-12-30',8.8),
                                (6,"Food",50,"1234abch",true,'2025-01-30','2025-12-30',8.8),
                                (7,"Drick",70,"1234abci",true,'2025-01-30','2025-12-30',8.8),
                                (8,"Juice",90,"1234abcj",true,'2025-01-30','2025-12-30',8.8);
                                
select * from item_details;                             