create database movies;

use movies;

create table movie_info_one(
	movie_id char(4) primary key,
    movie_name varchar(10) unique not null,
    actor_name varchar(10) not null,
    actress_name varchar(10) not null,
    movie_budget bigint check(movie_budget>1000000),
    movie_profit bigint check(movie_profit>100000),
    movie_category varchar(10) not null,
    release_date date not null
);

desc movie_info_one;

alter table movie_info_one add column movie_rating double not null;
alter table movie_info_one add column movie_review varchar(20) not null;

insert into movie_info_one values ('1',"Yevudu","Ram","shruti",11111111,1111111,"Action",'2025-01-30',4.5,"Very good movie"),
							   ('2',"LOTM","Ajay","Martha",22222222,2222222,"Action",'2025-01-30',4.5,"Very good movie"),
                               ('3',"ORV","Kim","Athena",33333333,3333333,"Action",'2025-01-30',4.5,"Very good movie"),
							   ('4',"Tensura","Rimuru","Chloe",44444444,4444444,"Action",'2025-01-30',4.5,"Absolute masterpiece"),
                               ('5',"Shadow","Jinwoo","serena",55555555,5555555,"Action",'2025-01-30',4.5,"Very good movie"),
							   ('6',"Asura 1","Adam","Eva",66666666,6666666,"Action",'2025-01-30',4.5,"Very good movie"),
                               ('7',"Asura 2","Adam","Eva",77777777,7777777,"Action",'2025-01-30',4.5,"Very good movie"),
							   ('8',"Asura 3","Adam","Eva",88888888,8888888,"Action",'2025-01-30',4.5,"Very good movie"),
                               ('9',"Asura 4","Adam","Eva",99999999,9999999,"Action",'2025-01-30',4.5,"Very good movie"),
							   ('10',"Asura 5","Adam","Eva",98765432,1234567,"Action",'2025-01-30',4.5,"Very good movie");

select * from movie_info_one;
select * from movie_info_one where actor_name in ('Ram','Adam');
select * from movie_info_one where actor_name not in ('Ram','Adam');