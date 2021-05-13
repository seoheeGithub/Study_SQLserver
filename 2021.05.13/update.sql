-- Update
-- 트랜잭션 시작
BEGIN TRAN; -- TRANSACTION

UPDATE testTbl
   SET userName = '성명건'
 WHERE Id = 2; -- WHERE절 절대 빼먹으면 안된다
 
UPDATE testTbl
   SET userName = '성명건'
     , addr = '부산'
 WHERE Id = 4; 

SELECT * FROM testTbl;

COMMIT;
ROLLBACK; -- 꼭 적어놓기 복구

-- 데이터 전부를 삭제하고
-- 1부터 다시 시작

--DELETE FROM testTbl;


