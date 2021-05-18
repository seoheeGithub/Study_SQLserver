-- ���̺����
USE sampleDB;
GO

-- DDL�� ���̺� ����
CREATE TABLE ddlTbl
(
	Id int NOT NULL PRIMARY KEY,
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO



-- DDL�� ���̺� ����
ALTER TABLE ddlTbl ADD newColumn VARCHAR(10) NOT NULL;

DROP TABLE ddlTbl;

CREATE TABLE ddlTbl
(
	Id int NOT NULL PRIMARY KEY INT IDENTITY(1, 1);

)

-- DDL �Ѱ��̻� �÷� PK�� ���� ���̺� ����

CREATE TABLE prodTbl
(
	prodCode NCHAR(3) NOT NULL,
	prodID NCHAR(4) NOT NULL,
	prodDate DATETIME NOT NULL,
	prodCur NCHAR(10) NULL
	CONSTRAINT PK_prodTbl_prodCode_prodID
		PRIMARY KEY (prodCode, prodID)
);
GO




