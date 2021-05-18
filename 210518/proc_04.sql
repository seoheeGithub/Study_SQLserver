CREATE OR ALTER PROC usp_zodiac
	@userName NVARCHAR(10)
AS
BEGIN
	DECLARE @bYear INT
	DECLARE @zodiac NVARCHAR(2) -- ���̸� ����
	SELECT @bYear = birthYear FROM userTbl
	 WHERE name = @userName;

	SET @zodiac = 
		CASE
			WHEN (@bYear%12 = 0) THEN '������' -- ��
			WHEN (@bYear%12 = 1) THEN '��' -- ��
			WHEN (@bYear%12 = 2) THEN '��' -- ��
			WHEN (@bYear%12 = 3) THEN '����' -- ��
			WHEN (@bYear%12 = 4) THEN '��' -- ��
			WHEN (@bYear%12 = 5) THEN '��' -- ��
			WHEN (@bYear%12 = 6) THEN 'ȣ����' -- ��
			WHEN (@bYear%12 = 7) THEN '�䳢' -- ��
			WHEN (@bYear%12 = 8) THEN '��' -- ��
			WHEN (@bYear%12 = 9) THEN '��' -- ��
			WHEN (@bYear%12 = 10) THEN '��' --��
			ELSE '��' -- ��
		END;
	PRINT CONCAT(@userName, ' (', @bYear , '���)', '�� ��� ', @zodiac, '�Դϴ�');

END
GO

EXEC usp_zodiac '�̽±�';


-- �ý��� �������ν���
EXEC sp_databases;
EXEC sp_tables 'userTBL', 'dbo';

SELECT * FROM userTbl WHERE userID = 'KKH';