-- �ܺ�����
-- �츮 ���θ����� ������ �ѹ��� �������� ���� ȸ������ ��ȸ
SELECT u.userID
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID;



SELECT u.userID
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
 RIGHT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID



 -- �л� / ���Ƹ� / �������� ���̺�
 -- OUTERJOIN

 -- �л�Tbl ���� 
 SELECT s.StdID, s.StdName, s.Region
	  , c.ClubName, c.ClubRoom
	  , r.RegDate
  FROM stdTbl AS s
  LEFT OUTER JOIN reginfoTbl AS r
	 ON s.StdID = r.StdID
  LEFT OUTER JOIN clubTbl AS c
	 ON c.ClubName = r.ClubName;

-- Ŭ��Tbl ����
 SELECT s.StdID, s.StdName, s.Region
	  , r.ClubName, c.ClubRoom  -- , c.ClubName ���̺� ���ؿ� ���� ������ �ȳ�����
	  , r.RegDate
  FROM stdTbl AS s
  LEFT OUTER JOIN reginfoTbl AS r
	 ON s.StdID = r.StdID
  RIGHT OUTER JOIN clubTbl AS c -- Ŭ�� Tbl ����
	 ON c.ClubName = r.ClubName;



--

SELECT c.ClubName, c.ClubRoom, r.id, r.RegDate
  FROM clubTbl AS c
  LEFT OUTER JOIN reginfoTbl AS r
    ON c.ClubName = r.ClubName











