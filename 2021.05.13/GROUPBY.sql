-- GROUP BY
-- GROUP BY�� ���� �Լ� ���� �� �� ����
-- ���̵𺰷� ���� � ����� ��ȸ
SELECT userID, SUM(amount) AS '�ѱ��Ű���'
  FROM buyTbl
 GROUP BY userID;


-- �츮 ���θ����� ���� �� ���� �� ����� 
-- ���̵𺰷� ��ȸ�ϰ� �� �ݾ��� ���� ����϶�
SELECT userID, SUM(amount * price) AS '�ѱ��űݾ�'
  FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(amount * price) DESC;


 SELECT userID, SUM(amount * price) AS '�ѱ��űݾ�'
  FROM buyTbl;


  -- ��ձ��űݾ�
 SELECT AVG(price) AS [��ձ��űݾ�] FROM buyTbl;

  -- ��������̺��� Ű�� ���� ū����ϰ� ���� ������� ��ȸ
 SELECT * FROM userTbl
  ORDER BY height DESC;
  
 SELECT * FROM userTbl
  WHERE height = 166 OR height = 186; /* X!! */


 SELECT * FROM userTbl
  WHERE height = (SELECT MAX(height) FROM userTbl)
	  OR height = (SELECT MIN(height) FROM userTbl) /* OK */


-- GROUP BY(�ƽ�Ʈ�� X) / HAVING
SELECT userID AS '����ھ��̵�'
	 , SUM(price * amount) AS [�ѱ��űݾ�]
  FROM buyTbl



 -- WHERE SUM(price * amount)  >= 1000// ����Ұ�
  GROUP BY userID
 HAVING SUM(price * amount)  >= 1000;


 -- ���
 -- ��ǰ�׷캰�� ����ڰ� �󸶸�ŭ 
SELECT userID
	    SUM(price * amount) AS [�ѱ��űݾ�]
   FROM buyTbl
 GROUP BY ROLLUP(userID, groupName);