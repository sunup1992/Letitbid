select * from reply

drop table reply purge;
SELECT COUNT(*) FROM REPLY WHERE CODE = 'BB10'

SELECT SEQ,ID,CONTENT,REF,LEV,STEP,PSEQ,TO_CHAR(LOGTIME,'YYYY.MM.DD')AS LOGTIME FROM (SELECT ROWNUM RN, AA.* FROM(SELECT * FROM REPLY  WHERE CODE = 'BB10' ORDER BY REF,STEP)AA)


CREATE TABLE reply(
     seq NUMBER NOT NULL,                     --�۹�ȣ
     id VARCHAR2(20) NOT NULL,              --���̵�
     content VARCHAR2(4000) NOT NULL,   --���� 

     code varchar2(20) NOT NULL,
     ref NUMBER NOT NULL,                       --�׷��ȣ
     lev NUMBER DEFAULT 0 NOT NULL,      --�ܰ�
     step NUMBER DEFAULT 0 NOT NULL,    --�ۼ���
     pseq NUMBER DEFAULT 0 NOT NULL,   --���۹�ȣ

     logtime DATE DEFAULT SYSDATE,
     FOREIGN KEY(ID) REFERENCES USER1(ID)
 );
 
 --�� ������ ��ü �ۼ�
create sequence seq_reply  nocache nocycle;

--�� ������ ��ü ����
drop   sequence seq_reply

INSERT INTO BOARD VALUES(SEQ_BOARD.NEXTVAL,?,?,BB10,SEQ_BOARD.CURRVAL,0,0,0,SYSDATE)
INSERT INTO REPLY(SEQ, ID, CONTENT, CODE, REF,STEP, LOGTIME) VALUES(SEQ_REPLY.NEXTVAL, 'jenni7', '�ƴ�','BB10', '2',0,SYSDATE)
INSERT INTO REPLY(SEQ, ID, CONTENT, CODE, REF,STEP, LOGTIME) VALUES(SEQ_REPLY.NEXTVAL, 'momo', '�����մϴ�','BB10','2', 0,SYSDATE)

select * from reply where code='BB10'

update reply set lev=lev+1 where seq=25 or seq=23 or seq=24



SELECT SEQ,ID,CONTENT,CODE,REF,LEV,STEP,PSEQ,TO_CHAR(LOGTIME,'YYYY.MM.DD')AS LOGTIME FROM (SELECT ROWNUM RN, AA.* FROM(SELECT * FROM REPLY  WHERE CODE = 'BB10' ORDER BY REF,STEP DESC)AA)

