-- DELETE
-- WHERE�� �Ⱦ��� �������� ���� �ȴ�.
BEGIN TRAN;

DELETE FROM testTbl
 WHERE Id = 4;

SELECT * FROM testTbl;

DELETE FROM testTbl
 WHERE userName = 'ȫ�浿';

COMMIT;
ROLLBACK; 