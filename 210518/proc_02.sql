-- 파라미터(매개변수) 들어가는 프로시저
CREATE PROC usp_users1
	@userName NVARCHAR(10)
AS
	-- 로직
	SELECT userID, name, birthYear FROM userTbl
	 WHERE name = @userName;
GO

EXEC usp_users1 '성시경';

SELECT * FROM v_userbuyinfo WHERE name = '성시경'


CREATE PROC usp_users2
	@userBirthYear INT, 
	@userHeight INT
AS
	SELECT userID, name, birthYear, height, mDate FROM userTbl
	 WHERE birthYear >= @userBirthYear
	   AND height >= @userHeight
GO

EXEC usp_users2 1960, 170;
EXEC usp_users2 @userHeight =175, @userBirthYear = 1980;

-- 프로시저나 함수 코딩때는
-- CREATE OR ALTER PROC(FUNC) 생성과 수정을 동시에!!

CREATE OR ALTER PROC usp_users3
	@lastName NVARCHAR(2),
	@outCount INT OUTPUT -- 리턴받는 값
AS
	SELECT @outCount = COUNT(*) FROM userTbl WHERE name LIKE @lastName + '%'
GO

SELECT COUNT(*) FROM userTbl WHERE name LIKE '김' + '%';

DECLARE @myValue INT;
EXEC usp_users3 '김', @myValue OUTPUT;
PRINT CONCAT('김씨 성을 가진 사용자 수는 ', @myValue);

