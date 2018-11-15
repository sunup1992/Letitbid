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


delete auction where code like '%HH%';
delete sales where code like '%HH%';

update auction set term = '2018-12-31 12:00:00' where code = 'EE11'


select count(*) from sales where confirm = 0


SELECT USERNAME AS USERNAME_SELLER, ROADFULLADDR AS ROADFULLADDR_SELLER, PHONE AS PHONE_SELLER, CODE, PRODNAME,DESCRIP, FINALPRICE, USERNAME_BIDDER, ROADFULLADDR_BIDDER, PHONE_BIDDER
			FROM (SELECT * FROM SALES WHERE CODE = 'BB11')
			JOIN (SELECT MAX(FINALPRICE) AS FINALPRICE, CODE FROM AUCTION WHERE CODE = 'BB11' GROUP BY CODE) USING(CODE)
			JOIN USER1 USING(ID)
			JOIN (SELECT USERNAME AS USERNAME_BIDDER, ROADFULLADDR AS ROADFULLADDR_BIDDER, PHONE AS PHONE_BIDDER, CODE FROM (SELECT ID, CODE FROM AUCTION WHERE CODE = 'BB11' AND FINALPRICE = #{finalPrice}) JOIN USER1 USING(ID)) USING(CODE)
			
			
	SELECT PRODNAME, CODE, TERM, FINAL AS PRICE, CONFIRM, A.ID
			FROM (SELECT FINAL, CODE, ID FROM(SELECT MAX(FINALPRICE) AS FINAL,CODE FROM AUCTION GROUP BY CODE) JOIN AUCTION USING(code) WHERE FINALPRICE=FINAL)A
			JOIN SALES B USING(CODE)
			WHERE B.ID='data'
			ORDER BY CONFIRM DESC, TERM ASC