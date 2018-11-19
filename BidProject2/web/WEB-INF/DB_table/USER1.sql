drop table USER1 purge;
select * from USER1

CREATE TABLE USER1(
ID varchar2(20) primary key,
USERNAME varchar2(20) not null,
PASSWORD varchar2(20) not null,
ROADFULLADDR varchar2(200) not null,
PHONE varchar2(20) not null,
PWQUESTION varchar2(100) not null,
PWANSWER varchar2(20) not null,
NAVER_CODE varchar2(20)
);

ALTER TABLE USER1 ADD (NAVER_CODE varchar2(20)); 

insert into USER1 values('1','TEST','1','TEST ADDR','1111','??','!!')
insert into USER1 values('encore','엔코아','encore','봉천동 202호','1111','1+1=?','2');
insert into USER1 values('play','플레이','play','행신동 210호','1111','1+1=?','2');
insert into USER1 values('data','데이터','data','효자동 505호','1111','1+1=?','2');
insert into USER1 values('momo','모모!','momo','반포 자이','1111','1+1=?','2');
insert into USER1 values('jenni7','쌤','jenni7','이촌동','1111','1+1=?','2');
insert into USER1 values('jeongjin','진쌤','jeongjin','파주 탄현','1111','1+1=?','2');
insert into USER1 values('jin','즨','jin','마곡','1111','1+1=?','2');
insert into USER1 values('may','매이','may','강남','1111','1+1=?','2');

update user1 set naver_code = '0' where id='momo'
update user1 set naver_code = '48996137' where id='momo'


