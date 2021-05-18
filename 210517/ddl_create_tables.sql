USE sampleDB;
GO
CREATE TABLE userTBL 
(
	userID CHAR(8) NOT NULL PRIMARY KEY, --�⺻Ű
	name NVARCHAR(10) NOT NULL,
	birthYear INT NOT NULL,
	height SMALLINT
);
-- DDL buyTBL ���̺� ���� 
CREATE TABLE buyTBL
(
	num INT NOT NULL PRIMARY KEY, -- �⺻��
	userID CHAR(8) NOT NULL 
	  FOREIGN KEY REFERENCES userTBL(userID), -- �ܷ�Ű, Relational!!
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
);
GO
-- userTBL�� email(����ũ��������) �߰�
-- buyTBL������ �� ����, userTBL ������ �� ����
-- userTBL(email) �÷����� �ѵ�, ���� ���� ����
ALTER TABLE userTBL
  ADD email VARCHAR(50) NOT NULL UNIQUE; 
  ADD email VARCHAR(50) NOT NULL UNIQUE;

-- CHECK
ALTER TABLE userTBL 
  ADD CONSTRAINT CK_birthYear
  CHECK (birthYear >= 1900 AND birthYear <= YEAR(GETDATE()));  
-- 2021���� 


SELECT * FROM sampleDB.dbo.userTBL;

SELECT * FROM sqlDB.dbo.buyTbl;

SELECT * FROM AdventureWorksLT2019.SalesLT.Product;
SELECT * FROM AdventureWorksLT2019.dbo.ErrorLog;
