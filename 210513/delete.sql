-- DELETE
-- WHERE을 안쓰면 사유서를 쓰게 된다.
BEGIN TRAN;

DELETE FROM testTbl
 WHERE Id = 4;

SELECT * FROM testTbl;

DELETE FROM testTbl
 WHERE userName = '홍길동';

COMMIT;
ROLLBACK; 