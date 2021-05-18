-- SQL Programming
DECLARE @var1 INT    --  변수 선언
SET @var1 = 169 

IF (@var1 < 170) -- IF, ELSE IF, ELSE
BEGIN
	PRINT '기준값 보다 작습니다'
END

ELSE IF (@var1 = 180 )
BEGIN
	SELECT * FROM userTbl WHERE height > @var1; 
END

ELSE
BEGIN
	SELECT * FROM userTbl WHERE height > @var1; 
END

