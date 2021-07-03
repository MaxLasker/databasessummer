
/*task1 */
create database lab2;
/*task2 */
create table countries(
    country_id serial,
    country_name varchar(100),
    region_id int,
    population int
)
/*task3 */
insert into countries values(default, 'Kazakhstan', 1, 16000000);

/*task4 */

insert into countries(country_id, country_name) values(default, 'Russia');

/*task5 */

insert into countries values(default, 'Kyrgyzstan', null, 6500000);

/*task6 */

insert into countries values(default, 'Uzbekistan', null, 6500000), (default, 'Tajikistan ', null, 90000000), (default, 'Iran', null, 12000000);

/*task7 */

alter table countries alter country_name set default 'Kazakhstan';

/*task8 */

insert into countries values(default, default, 5, 123123123);

/*task9 */

insert into countries values default;

/*task9 */

create table countries_new(
    like countries
);

/*task11 */

insert into countries_new select * from countries;

/*task12 */

update countries set region_id=1 where region_id is null;

/*task13 */

update countries set population = population*1.1
returning country_name, population as 'New Populaton';

/*task14 */

delete from countries where population< 100000;

/*task15 */

delete from countries_new using countries where countries_new.country_id == countries.country_id returning *;

/*task16 */

delete from countries returning *;