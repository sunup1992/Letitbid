drop table USER1 purge;
select * from USER1

CREATE TABLE USER1(
ID varchar2(20) primary key,
USERNAME varchar2(20) not null,
PASSWORD varchar2(20) not null,
ROADFULLADDR varchar2(200) not null,
PHONE varchar2(20) not null,
PWQUESTION varchar2(100) not null,
PWANSWER varchar2(20) not null
);


insert into USER1 values('1','TEST','1','TEST ADDR','1111','??','!!')
insert into USER1 values('encore','���ھ�','encore','��õ�� 202ȣ','1111','1+1=?','2');
insert into USER1 values('play','�÷���','play','��ŵ� 210ȣ','1111','1+1=?','2');
insert into USER1 values('data','������','data','ȿ�ڵ� 505ȣ','1111','1+1=?','2');
insert into USER1 values('momo','���!','momo','���� ����','1111','1+1=?','2');
insert into USER1 values('jenni7','��','jenni7','���̵�','1111','1+1=?','2');
insert into USER1 values('jeongjin','����','jeongjin','���� ź��','1111','1+1=?','2');
insert into USER1 values('jin','�t','jin','����','1111','1+1=?','2');
insert into USER1 values('may','����','may','����','1111','1+1=?','2');
