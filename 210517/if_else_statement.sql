-- SQL Programming
DECLARE @var1 INT    --  ���� ����
SET @var1 = 169 

IF (@var1 < 170) -- IF, ELSE IF, ELSE
BEGIN
	PRINT '���ذ� ���� �۽��ϴ�'
END

ELSE IF (@var1 = 180 )
BEGIN
	SELECT * FROM userTbl WHERE height > @var1; 
END

ELSE
BEGIN
	SELECT * FROM userTbl WHERE height > @var1; 
END

