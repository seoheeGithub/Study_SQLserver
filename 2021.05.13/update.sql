-- Update
-- Ʈ����� ����
BEGIN TRAN; -- TRANSACTION

UPDATE testTbl
   SET userName = '�����'
 WHERE Id = 2; -- WHERE�� ���� �������� �ȵȴ�
 
UPDATE testTbl
   SET userName = '�����'
     , addr = '�λ�'
 WHERE Id = 4; 

SELECT * FROM testTbl;

COMMIT;
ROLLBACK; -- �� ������� ����

-- ������ ���θ� �����ϰ�
-- 1���� �ٽ� ����

--DELETE FROM testTbl;


