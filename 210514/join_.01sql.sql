SELECT * FROM buyTbl;
SELECT * FROM userTbl;

-- JOIN : INNER JOIN(��������)
SELECT u.userID
     , u.name
	 , u.addr
	 , CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.num
	 , b.prodName
	 , b.price
	 , b.amount
  FROM userTbl AS u --�˸��ƽ��Ἥ �ڵ� ���̱�
 INNER JOIN buyTbl AS b
    ON u.userID = b.userID

 WHERE u.userID = 'JYP';
