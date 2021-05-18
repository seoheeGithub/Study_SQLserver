USE sampleDB;
GO
CREATE TABLE userTBL 
(
	userID CHAR(8) NOT NULL PRIMARY KEY, --기본키
	name NVARCHAR(10) NOT NULL,
	birthYear INT NOT NULL,
	height SMALLINT
);
-- DDL buyTBL 테이블 생성 
CREATE TABLE buyTBL
(
	num INT NOT NULL PRIMARY KEY, -- 기본기
	userID CHAR(8) NOT NULL 
	  FOREIGN KEY REFERENCES userTBL(userID), -- 외래키, Relational!!
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
);
GO
-- userTBL에 email(유니크제약조건) 추가
-- buyTBL데이터 다 삭제, userTBL 데이터 다 삭제
-- userTBL(email) 컬럼삭제 한뒤, 밑의 쿼리 실행
ALTER TABLE userTBL
  ADD email VARCHAR(50) NOT NULL UNIQUE; 
  ADD email VARCHAR(50) NOT NULL UNIQUE;

-- CHECK
ALTER TABLE userTBL 
  ADD CONSTRAINT CK_birthYear
  CHECK (birthYear >= 1900 AND birthYear <= YEAR(GETDATE()));  
-- 2021까지 


SELECT * FROM sampleDB.dbo.userTBL;

SELECT * FROM sqlDB.dbo.buyTbl;

SELECT * FROM AdventureWorksLT2019.SalesLT.Product;
SELECT * FROM AdventureWorksLT2019.dbo.ErrorLog;
