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
     seq NUMBER NOT NULL,                     --글번호
     id VARCHAR2(20) NOT NULL,              --아이디
     username VARCHAR2(40) NOT NULL,         --이름
     subject VARCHAR2(255) NOT NULL,     --제목
     content VARCHAR2(4000) NOT NULL,   --내용 

     ref NUMBER NOT NULL,                       --그룹번호
     lev NUMBER DEFAULT 0 NOT NULL,      --단계
     step NUMBER DEFAULT 0 NOT NULL,    --글순서
     pseq NUMBER DEFAULT 0 NOT NULL,   --원글번호
     reply NUMBER DEFAULT 0 NOT NULL,   --답변수

     hit NUMBER DEFAULT 0,                      --조회수
     logtime DATE DEFAULT SYSDATE,
     FOREIGN KEY(ID) REFERENCES USER1(ID)
 );

 select * from board;

--☆ 시퀀스 객체 작성
create sequence 시퀀스객체명
create sequence seq_board  nocache nocycle;

--☆ 시퀀스 객체 삭제
drop   sequence 시퀀스객체명
drop   sequence seq_board

--☆ 자동으로 1씩 증가하는 값을 얻어오기
select seq_board.nextval from dual


select seq,id,name,email,subject,content,ref,lev,step,pseq,reply,hit,to_char(logtime,'YYYY.MM.DD')as logtime from 
(select rownum rn, aa.* from(select * from board order by ref desc,step asc)aa) where rn>=1 and rn<=10

update board set pseq = (rn/10)+1 

select * from board;
delete board


insert into board values(seq_board.nextval,'momo','모모','문의드립니당','경매 방법을 알고 싶습니다~~~~',seq_board.currval,0,0,0,0,0,sysdate);



update board set pseq=23 where seq='38'


insert into board values('21','reply','TEST','SUNUP','답장','제발','1','1','1','0','0','0','2018-10-20')


select * from test2;

create table test2(
num number
); 

insert into test2 values(2);
insert into test2 values(4);
insert into test2 values(5);
insert into test2 values(6);