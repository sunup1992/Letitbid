select * from tab;
drop table board purge;
select * from board;
SELECT COUNT(*) FROM BOARD

SELECT FINALPRICE, TERM FROM AUCTION WHERE FINALPRICE = (SELECT MAX(FINALPRICE) AS FINALPRICE FROM AUCTION WHERE CODE = 'GG03')

SELECT MAX(FINALPRICE) AS FINALPRICE FROM AUCTION WHERE CODE = 'GG01'
SELECT * FROM AUCTION
INSERT INTO AUCTION values('a','GG01',SYSDATE,50000)


INSERT INTO AUCTION(ID, CODE, FINALPRICE) VALUES ('a', 'AA02', 22222)


SELECT COUNT(*) AS NUM FROM BOARD
update 
select * from board
CREATE TABLE board(
     seq NUMBER NOT NULL,                     --�۹�ȣ
     id VARCHAR2(20) NOT NULL,              --���̵�
     username VARCHAR2(40) NOT NULL,         --�̸�
     subject VARCHAR2(255) NOT NULL,     --����
     content VARCHAR2(4000) NOT NULL,   --���� 

     ref NUMBER NOT NULL,                       --�׷��ȣ
     lev NUMBER DEFAULT 0 NOT NULL,      --�ܰ�
     step NUMBER DEFAULT 0 NOT NULL,    --�ۼ���
     pseq NUMBER DEFAULT 0 NOT NULL,   --���۹�ȣ
     reply NUMBER DEFAULT 0 NOT NULL,   --�亯��

     hit NUMBER DEFAULT 0,                      --��ȸ��
     logtime DATE DEFAULT SYSDATE,
     FOREIGN KEY(ID) REFERENCES USER1(ID)
 );

 select * from board;

--�� ������ ��ü �ۼ�
create sequence ��������ü��
create sequence seq_board  nocache nocycle;

--�� ������ ��ü ����
drop   sequence ��������ü��
drop   sequence seq_board

--�� �ڵ����� 1�� �����ϴ� ���� ������
select seq_board.nextval from dual


select seq,id,name,email,subject,content,ref,lev,step,pseq,reply,hit,to_char(logtime,'YYYY.MM.DD')as logtime from 
(select rownum rn, aa.* from(select * from board order by ref desc,step asc)aa) where rn>=1 and rn<=10

update board set pseq = (rn/10)+1 

select * from board;
delete board


insert into board values(seq_board.nextval,'momo','���','���ǵ帳�ϴ�','��� ����� �˰� �ͽ��ϴ�~~~~',seq_board.currval,0,0,0,0,0,sysdate);



update board set pseq=23 where seq='38'


insert into board values('21','reply','TEST','SUNUP','����','����','1','1','1','0','0','0','2018-10-20')


select * from test2;

create table test2(
num number
); 

insert into test2 values(2);
insert into test2 values(4);
insert into test2 values(5);
insert into test2 values(6);