USE sampleDB;
GO
-- VIEW	
CREATE VIEW v_userTBl
AS
	SELECT userID, name, addr FROM userTBL;
GO


SELECT userID, name, addr FROM v_userTBl

SELECT * FROM v_buyTbl

SELECT num, userID, price FROM buyTbl


CREATE VIEW v_userbuyInfo
AS
	SELECT u.userID, u.name, b.prodName, b.price 
	  FROM userTbl as u
	 INNER JOIN buyTbl as b
		ON u.userID = b.userID;
GO

SELECT * FROM v_userbuyInfo
 ORDER BY price DESC;


DROP VIEW v_userTBl 