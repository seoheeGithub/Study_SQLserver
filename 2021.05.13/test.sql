 -- ������ ��ȸ
SELECT * FROM userTbl;

-- ������ ��ȸ ���͸� 
SELECT * FROM  userTbl
 WHERE userID= 'BBK'

 SELECT * FROM userTbl
  WHERE name LIKE '%��%'

SELECT userID, name, addr /** == ALL*/ FROM userTbl -- ���ϴ� �÷��� �����ؼ� ����

-- Ư�� ���̺� ���ڵ�(������) ����Ȯ��
SELECT COUNT(*) FROM userTbl;


-- ����� ���̺��� Ű�� 180�̻��̰� 
-- ����⵵�� 1970�� ���� �¾ �����
-- ���̵�, �̸�, Ű�� ��ȸ�ϼ���
SELECT userID, name, height FROM userTbl
 WHERE height >= 180 AND birthYear >= 1970;


 -- ����⵵��(��������)���� �����ؼ� ��ȸ
SELECT * FROM userTbl
 ORDER BY birthYear DESC; -- ASC(ENDING) | DESC(ENDING)

-- SELECT INTO  ����� �� ���
-- userTbl_New ���̺��� ���� (PK Ű������ �̻���)

SELECT * INTO userTbl_New FROM userTbl;
SELECT * FROM userTbl_New;

SELECT userID, name, addr INTO userTbl Backup From userTbl;
 WHERE addr ='����';

SELECT * FROM userTbl_Backup; -- ���ϴ� ���̺� ����� �� 

SELECT * FROM userTbl_Backup2;

