-- ���ڿ� �Լ�
SELECT ASCII('+'), CHAR(47); -- ���� ��
SELECT UNICODE('��'), NCHAR(44033); -- ���� ��
SELECT UNICODE('��'), NCHAR(12354); -- ������ �����ڵ� ���!!
SELECT ASCII('��'), CHAR(170);

-- ���ڿ� ����
SELECT CONCAT('SQL ', 'server ' , 2019) AS [name]; -- ���� ��
SELECT 'SQL ' + 'server ' + CAST(2019 AS VARCHAR);

-- �ܾ� ������ġ
SELECT CHARINDEX('w', 'Hello world');
-- C#, java, python ���ڿ� 0���� ����, DB 1���� ����

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL Server 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR, 4);

SELECT SUBSTRING('���ѹα�����!', 5, 2);

SELECT LEN('Hello World');
SELECT LEN('���ѹα�����!');


SELECT LOWER('hELLO World!'), UPPER('hELLO World!');
-- CD1001, CD2005, cd2005
SELECT UPPER('cd2005');

-- �����̽� ���� �Լ�
SELECT '    SQL', LTRIM('    SQL'); -- ��
SELECT '   SQL    ', RTRIM('   SQL    '); -- ��
SELECT '   SQL    ', TRIM('   SQL    '); -- ��

-- Replace ���� �ֻ�
SELECT REPLACE('SQL Server 2019, Server ����', 'server', '����');


-- STR ���� ��
SELECT STR(3.141592);
SELECT STR(45);

-- FORMAT ���� ��
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss'); --�ѱ��� 
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy hh:mm:ss'); --�̱���


-- ���Լ�
SELECT IIF(100 > 200, '��', '����');























