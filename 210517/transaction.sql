-- Ʈ����� 3�� ����
BEGIN TRAN
UPDATE userTBL SET addr = '����' WHERE userID = 'KBS'
COMMIT

BEGIN TRAN
UPDATE userTBL SET addr = '�̱�' WHERE userID = 'KKH'
COMMIT

BEGIN TRAN
UPDATE userTBL SET addr = 'ȣ��' WHERE userID = 'JYP'
COMMIT

SELECT * FROM userTBL

-- Ʈ����� 1�� ����
BEGIN TRAN
UPDATE userTBL SET addr = '����' WHERE userID = 'KBS'
UPDATE userTBL SET addr = '����' WHERE userID = 'KKH'
UPDATE userTBL SET addr = '����' WHERE userID = 'JYP'
COMMIT

-- Transaction ó������ �ù�
USE sampleDB;
GO

CREATE TABLE testTbl (num INT);
GO
INSERT INTO testTbl VALUES (1),(3),(5);

-- �������� ����
BEGIN TRAN
UPDATE testTbl SET num = 11 WHERE num = 1; -- 1 ����
UPDATE testTbl SET num = 33 WHERE num = 3;
UPDATE testTbl SET num = 55 WHERE num = 5;
COMMIT
ROLLBACK

SELECT * FROM testTbl;

SELECT @@TRANCOUNT;