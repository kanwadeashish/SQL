create database app_store;
use app_store;

create table app_info (
	app_id char(4) primary key,
    app_name varchar(15) unique,
    downloads bigint check(downloads>100),
    size double check(size>10),
    reviews varchar(20) not null,
    ratings float check(ratings >0 and ratings <=5),
    company varchar(10) not null
);

insert into app_info values ('1',"PUBG",100000000,1500,"Very good",4.5,"Tencent"),
							('2',"COD",100000111,2000,"Good",4.3,"Lambo"),
                            ('3',"NFS",999900000,3000,"Very good",4.9,"Speed");
insert into app_info values ('4',"Candy",1000,100,"Good",4.5,"Crush");
insert into app_info values ('5',"Dr.driving",100000000,1500,"Very good",4.5,"Tencent"),
							('6',"Solo leveling",100000111,2000,"Good",4.3,"Lambo"),
                            ('7',"One piece",999900000,3000,"Very good",4.9,"Speed"),
                            ('8',"Hill climbing",100000000,1500,"Very good",4.5,"Tencent"),
							('9',"Shadow monarch",100000111,2000,"Good",4.3,"Lambo"),
                            ('10',"NFS2",999900000,3000,"Very good",4.9,"Speed"),
                            ('11',"BGMI",100000000,1500,"Very good",4.5,"Tencent"),
							('12',"Fighter",100000111,2000,"Good",4.3,"Lambo"),
                            ('13',"Highway rider",999900000,3000,"Very good",4.9,"Speed"),
                            ('14',"Carrom",100000111,2000,"Good",4.3,"Lambo"),
                            ('15',"Tennis",999900000,3000,"Very good",4.9,"Speed"),
                            ('16',"Cricket",100000000,1500,"Very good",4.5,"Tencent"),
							('17',"Basket ball",100000111,2000,"Good",4.3,"Lambo"),
                            ('18',"Zombie shooting",999900000,3000,"Very good",4.9,"Speed"),
                            ('19',"Shooting",100000000,1500,"Very good",4.5,"Tencent"),
							('20',"Sniper pro",100000111,2000,"Good",4.3,"Lambo");
delete from app_info where app_id=4;    
                       
select * from app_info;    

create table  food_apps(
	food_app_id char(3) primary key,
    food_app_name varchar(10) unique,
    food_items varchar(10) check(food_items in ('dosa','idli','pohe')),
    app_id char(4),
    foreign key(app_id) references app_info(app_id)
);
desc food_apps;

insert into food_apps values('1',"zomato","dosa",1),
							('2',"swiggy","idli",2),
                            ('3',"zepto","pohe",3),
                            ('4',"mcdonolds","dosa",4),
                            ('5',"dominoz","idli",5);

select * from food_apps;

set autocommit = 0;
insert into food_apps values('6',"blinkit","idli",6);    
update food_apps set food_app_name = 'mcd' where  food_app_id='4';             
delete from food_apps where food_app_id='2';

rollback;

commit;      