create table ban(
code varchar2(20),
prodname varchar2(200) not null,
seller_name varchar2(200),
buyer_name varchar2(200),
reason varchar2(1000) NOT NULL,
FOREIGN KEY(CODE) REFERENCES SALES(CODE)
);

select * from tab;
select * from user1 where id = 'jeongjin'

insert into ban values('DD4','������ �ִϾ� ī��Ʈ', 'jeongjin', 'momo', '���')
delete ban where code like 'HH%'