CREATE OR ALTER FUNCTION ufn_getZodiac(@bYear INT)
	RETURNS NVARCHAR
AS 
BEGIN
	DECLARE @result NVARCHAR(3)

	SET @result = 
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
	RETURN(@result)
END
GO