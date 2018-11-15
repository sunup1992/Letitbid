drop table auction purge;
delete auction
create table auction(
id varchar2(20),
code varchar2(20),
cat1 varchar2(20),
term varchar2(20) NOT NULL,
finalPrice number NOT NULL,
FOREIGN KEY(ID) REFERENCES USER1(ID),
FOREIGN KEY(CODE) REFERENCES SALES(CODE)
);
ALTER TABLE auction
ADD (cat1 VARCHAR2(20));

drop   sequence code_A;
drop   sequence code_B;
drop   sequence code_C;
drop   sequence code_D;
drop   sequence code_E;
drop   sequence code_F;
drop   sequence code_G;
drop   sequence code_H;



create sequence code_A increment by 1 start with 11 nocache nocycle;
create sequence code_B increment by 1 start with 11 nocache nocycle;
create sequence code_C increment by 1 start with 11 nocache nocycle;
create sequence code_D increment by 1 start with 11 nocache nocycle;
create sequence code_E increment by 1 start with 11 nocache nocycle;
create sequence code_F increment by 1 start with 11 nocache nocycle;
create sequence code_G increment by 1 start with 11 nocache nocycle;
create sequence code_H increment by 1 start with 11 nocache nocycle;



delete auction where code = 'BB10'
select * from auction where code = 'HH3';
select * from auction where code like 'BB%'
SELECT FINALPRICE, TERM FROM AUCTION WHERE FINALPRICE = (SELECT MAX(FINALPRICE) AS FINALPRICE FROM AUCTION WHERE CODE = 'BB6') AND CODE = 'BB6'
SELECT FINALPRICE, TERM FROM AUCTION WHERE FINALPRICE = (SELECT MAX(FINALPRICE) AS FINALPRICE FROM AUCTION WHERE CODE = 'HH5')

INSERT INTO AUCTION VALUES('data','BB10','2018-11-01 09:09:00',150000);

select * from auction

INSERT INTO AUCTION(id, code,term,finalprice) VALUES('data','BB10','2018-11-15 14:00:00',150000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('jeongjin','DD4','2018-11-15 12:00:00',75650);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('data','EE4','2018-11-14 21:00:00',350000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('may','GG1','2018-11-12 21:00:00',15000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('momo','BB4','2018-11-13 19:00:00',250000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('may','DD7','2018-11-15 08:00:00',24500);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('jenni7','GG5','2018-11-13 12:00:00',30000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('momo','GG6','2018-11-13 23:00:00',10000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('may','GG9','2018-11-13 21:00:00',14000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('encore','BB9','2018-11-13 15:00:00',70000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('data','CC6','2018-11-12 21:00:00',22500);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('play','FF4','2018-11-15 11:00:00',140000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('data','FF5','2018-11-14 16:00:00',40000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('play','FF6','2018-11-15 12:00:00',70000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('momo','CC7','2018-11-15 15:00:00',32300);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('momo','CC8','2018-11-13 21:00:00',22000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('encore','HH1','2018-11-12 21:00:00',45000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('jenni7','HH2','2018-11-13 18:00:00',35000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('encore','GG10','2018-11-14 12:00:00',10000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('jin','HH3','2018-11-14 09:00:00',70000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('momo','HH4','2018-11-13 21:00:00',13000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('data','HH5','2018-11-12 23:00:00',30000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('play','EE7','2018-11-15 10:00:00',40000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('data','EE8','2018-11-14 17:00:00',100000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('jeongjin','BB7','2018-11-13 24:00:00',100000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('jin','BB8','2018-11-12 24:00:00',50000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('play','EE9','2018-11-13 20:00:00',150000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('data','EE10','2018-11-14 14:00:00',80000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('jin','HH6','2018-11-14 12:00:00',35000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('data','HH7','2018-11-14 12:00:00',100000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('momo','GG4','2018-11-14 15:00:00',50000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('jeongjin','HH10','2018-11-12 21:00:00',110000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('encore','AA1','2018-11-13 21:00:00',150000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('play','AA2','2018-11-13 23:00:00',50000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('encore','HH8','2018-11-13 12:00:00',150000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('data','HH9','2018-11-14 18:00:00',115000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('encore','AA9','2018-11-14 22:00:00',89000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('play','AA10','2018-11-15 13:00:00',200000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('play','BB1','2018-11-13 21:00:00',400000);
INSERT INTO AUCTION(id, code,term,finalprice) VALUES('data','BB2','2018-11-14 12:00:00',80000);


insert into auction(id, code,term,finalprice) values('may','AA6','2018-11-15 15:00:00',89000);
insert into auction(id, code,term,finalprice) values('jeongjin','AA7','2018-11-14 10:00:00',80000);
insert into auction(id, code,term,finalprice) values('momo','AA4','2018-11-13 15:00:00',120000);
insert into auction(id, code,term,finalprice) values('jenni7','AA5','2018-11-12 22:00:00',80000);
insert into auction(id, code,term,finalprice) values('jenni7','BB5','2018-11-12 23:00:00',70000);
insert into auction(id, code,term,finalprice) values('may','BB6','2018-11-15 11:00:00',80000);
insert into auction(id, code,term,finalprice) values('encore','CC1','2018-11-13 21:00:00',28560);
insert into auction(id, code,term,finalprice) values('jin','AA8','2018-11-12 22:00:00',60000);
insert into auction(id, code,term,finalprice) values('encore','BB3','2018-11-13 17:00:00',150000);
insert into auction(id, code,term,finalprice) values('play','CC4','2018-11-15 11:00:00',42500);
insert into auction(id, code,term,finalprice) values('play','DD9','2018-11-13 21:00:00',332500);
insert into auction(id, code,term,finalprice) values('may','GG3','2018-11-12 24:00:00',5000);
insert into auction(id, code,term,finalprice) values('jin','CC9','2018-11-13 21:00:00',24000);
insert into auction(id, code,term,finalprice) values('jin','CC10','2018-11-12 21:00:00',45050);
insert into auction(id, code,term,finalprice) values('jenni7','DD1','2018-11-14 21:00:00',29900);
insert into auction(id, code,term,finalprice) values('encore','CC2','2018-11-14 21:00:00',29900);
insert into auction(id, code,term,finalprice) values('play','CC3','2018-11-12 21:00:00',13340);
insert into auction(id, code,term,finalprice) values('momo','DD5','2018-11-15 09:00:00',151000);
insert into auction(id, code,term,finalprice) values('data','DD10','2018-11-13 21:00:00',17380);
insert into auction(id, code,term,finalprice) values('play','EE1','2018-11-15 18:00:00',90000);
insert into auction(id, code,term,finalprice) values('jeongjin','DD3','2018-11-12 21:00:00',121260);
insert into auction(id, code,term,finalprice) values('play','EE5','2018-11-15 12:00:00',60000);
insert into auction(id, code,term,finalprice) values('play','FF8','2018-11-14 22:00:00',200000);
insert into auction(id, code,term,finalprice) values('data','GG2','2018-11-13 12:00:00',20000);
insert into auction(id, code,term,finalprice) values('may','DD6','2018-11-12 21:00:00',5800);
insert into auction(id, code,term,finalprice) values('data','FF9','2018-11-13 22:00:00',400000);
insert into auction(id, code,term,finalprice) values('play','FF10','2018-11-13 19:00:00',400000);
insert into auction(id, code,term,finalprice) values('data','EE6','2018-11-13 11:00:00',400000);
insert into auction(id, code,term,finalprice) values('play','FF1','2018-11-14 16:00:00',400000);
insert into auction(id, code,term,finalprice) values('data','AA3','2018-11-14 24:00:00',50000);
insert into auction(id, code,term,finalprice) values('data','FF2','2018-11-15 10:00:00',120000);
insert into auction(id, code,term,finalprice) values('play','FF3','2018-11-13 21:00:00',10000);
insert into auction(id, code,term,finalprice) values('data','EE2','2018-11-13 18:00:00',150000);
insert into auction(id, code,term,finalprice) values('play','EE3','2018-11-14 18:00:00',250000);
insert into auction(id, code,term,finalprice) values('jenni7','DD2','2018-11-14 21:00:00',28400);
insert into auction(id, code,term,finalprice) values('data','FF7','2018-11-13 21:00:00',20000);
insert into auction(id, code,term,finalprice) values('play','GG7','2018-11-14 12:00:00',10000);
insert into auction(id, code,term,finalprice) values('play','GG8','2018-11-12 21:00:00',30000);
insert into auction(id, code,term,finalprice) values('data','CC5','2018-11-14 21:00:00',33150);
insert into auction(id, code,term,finalprice) values('momo','DD8','2018-11-12 21:00:00',42660);







