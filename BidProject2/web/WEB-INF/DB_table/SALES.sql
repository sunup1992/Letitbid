drop table test3 purge;
select * from sales
select * from tab
create table sales(
cat1 varchar2(20) not null,
prodname varchar2(200) not null,
price number not null,
condition varchar2(50) not null,
ref varchar2(1000),
code varchar2(20) primary key,
id varchar2(20) not null,
term varchar2(20) not null,
descrip varchar2(4000),
FOREIGN KEY(ID) REFERENCES USER1(ID)
);

alter table sales modify (confirm default 0)

drop   sequence code_AA;
drop   sequence code_BB;
drop   sequence code_CC;
drop   sequence code_DD;
drop   sequence code_EE;
drop   sequence code_FF;
drop   sequence code_GG;
drop   sequence code_HH;



create sequence code_AA increment by 1 start with 11 nocache nocycle;
create sequence code_BB increment by 1 start with 11 nocache nocycle;
create sequence code_CC increment by 1 start with 11 nocache nocycle;
create sequence code_DD increment by 1 start with 11 nocache nocycle;
create sequence code_EE increment by 1 start with 11 nocache nocycle;
create sequence code_FF increment by 1 start with 11 nocache nocycle;
create sequence code_GG increment by 1 start with 11 nocache nocycle;
create sequence code_HH increment by 1 start with 11 nocache nocycle;


