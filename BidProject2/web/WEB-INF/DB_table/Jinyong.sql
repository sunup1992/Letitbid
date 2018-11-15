drop table user1 purge;
drop table sales purge;
drop table auction purge;
delete sales;

create table user1(
id varchar2(20),
password varchar2(20),
username varchar2(20),
roadFullAddr varchar2(200),
phone varchar2(20)
pwquestion varchar2(100),
pwanswer varchar2(20));

create table sales(
cat1 varchar2(20),
prodname varchar2(200),
price number,
condition varchar2(50),
ref varchar2(1000),
code varchar2(20),
id varchar2(20),
term varchar2(20),
descrip varchar2(4000)
);

drop sequence code_A

create sequence code_AA increment by 1 start with 11 nocache nocycle;
create sequence code_BB increment by 1 start with 11 nocache nocycle;
create sequence code_CC increment by 1 start with 11 nocache nocycle;
create sequence code_DD increment by 1 start with 11 nocache nocycle;
create sequence code_EE increment by 1 start with 11 nocache nocycle;
create sequence code_FF increment by 1 start with 11 nocache nocycle;
create sequence code_GG increment by 1 start with 11 nocache nocycle;
create sequence code_HH increment by 1 start with 11 nocache nocycle;

create sequence code_A increment by 1 start with 11 nocache nocycle;
create sequence code_B increment by 1 start with 11 nocache nocycle;
create sequence code_C increment by 1 start with 11 nocache nocycle;
create sequence code_D increment by 1 start with 11 nocache nocycle;
create sequence code_E increment by 1 start with 11 nocache nocycle;
create sequence code_F increment by 1 start with 11 nocache nocycle;
create sequence code_G increment by 1 start with 11 nocache nocycle;
create sequence code_H increment by 1 start with 11 nocache nocycle;

INSERT INTO AUCTION(ID, CODE, TERM, FINALPRICE, CAT1) VALUES ('encore', 'AA'||CODE_A.NEXTVAL, '2018-11-03 10:00:00', '25000', 'AA')

create table auction(
id varchar2(20),
code varchar2(20),
term varchar2(20),
finalPrice number);

UPDATE SALES SET CONFIRM = 0 WHERE CODE = 'HH11'

select finalprice from auction where id = 'jin' and code = 'DD11'

SELECT PRODNAME, CODE, TERM, FINALPRICE, PRICE
FROM (SELECT MAX(FINALPRICE) AS FINALPRICE, CODE FROM AUCTION WHERE ID='jin' GROUP BY CODE)
JOIN SALES USING(CODE)

SELECT PRODNAME, CODE, TERM, a.PRICE, FINALPRICE, CONFIRM
FROM (SELECT MAX(FINALPRICE) AS PRICE, CODE FROM AUCTION WHERE ID='encore' GROUP BY CODE)a
JOIN SALES USING(CODE)
JOIN (SELECT MAX(FINALPRICE) AS FINALPRICE, CODE FROM AUCTION GROUP BY CODE) USING(CODE)

SELECT USERNAME AS USERNAME_SELLER, ROADFULLADDR AS ROADFULLADDR_SELLER, PHONE AS PHONE_SELLER, CODE, PRODNAME,DESCRIP, FINALPRICE, USERNAME_BIDDER, ROADFULLADDR_BIDDER, PHONE_BIDDER
FROM (SELECT * FROM SALES WHERE CODE = 'BB11')
JOIN (SELECT MAX(FINALPRICE) AS FINALPRICE, CODE FROM AUCTION WHERE CODE = 'BB11' GROUP BY CODE) USING(CODE)
JOIN USER1 USING(ID)
JOIN (SELECT USERNAME AS USERNAME_BIDDER, ROADFULLADDR AS ROADFULLADDR_BIDDER, PHONE AS PHONE_BIDDER, CODE FROM (SELECT ID, CODE FROM AUCTION WHERE CODE = 'BB11' AND FINALPRICE = '333') JOIN USER1 USING(ID)) USING(CODE)



select * from sales where code like 'CC%' order by 6 asc;
select * from user1;
select * from board;
select * from auction order by 2 asc;
select * from tab;
