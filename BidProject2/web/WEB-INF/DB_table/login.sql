select * from tab;
select * from user1;
drop table users purge;

--primary key : unique + not null
create table users(
id varchar2(10) primary key,
pwd varchar2(10) not null,
name varchar2(20) not null,
point number(7,2));  

insert into users(id,pwd,name,point) values('admin','1111','����',35.34);
insert into users(id,pwd,name,point) values('abcd','1111','�׽�Ʈ',65.78);
commit

select * from users;