CREATE OR ALTER PROC usp_isyoung
	@userName NVARCHAR(10)
AS
	DECLARE @bYear INT -- ����⵵ ���庯��

	SELECT @bYear = birthYear FROM userTbl
	 WHERE name = @userName;

	IF(@bYear >= 1980)
	BEGIN
		PRINT '���� �����ϴ�';
	END
	ELSE
	BEGIN
		PRINT '�����̳׿�';
	END
GO


EXEC usp_isyoung'�̽±�'

