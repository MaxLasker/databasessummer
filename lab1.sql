
/*task1 */
create database lab1;

/*task2 */

create table users (
    id serial,
    firstname varchar(50),
    lastname varchar(50)

);

/*task3 */

alter table users
add column isadmin int;

/*task4 */

alter table users
alter isadmin type boolean using isadmin::boolean;

/*task5 */

alter table users
alter isadmin set default false;

/*task6 */

alter table users
add constraint id primary key (id);

/*task7 */

create table tsaks(
    id serial,
    name varchar(50),
    user_id int
);

/*task8 */

drop table tsaks;

/*task8 */

drop database lab1;





