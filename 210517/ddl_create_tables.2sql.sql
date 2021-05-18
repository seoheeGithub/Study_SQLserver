-- 테이블생성
USE sampleDB;
GO

-- DDL로 테이블 생성
CREATE TABLE ddlTbl
(
	Id int NOT NULL PRIMARY KEY,
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO



-- DDL로 테이블 수정
ALTER TABLE ddlTbl ADD newColumn VARCHAR(10) NOT NULL;

DROP TABLE ddlTbl;

CREATE TABLE ddlTbl
(
	Id int NOT NULL PRIMARY KEY INT IDENTITY(1, 1);

)

-- DDL 한개이상 컬럼 PK로 지정 테이블 생성

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




