 -- 데이터 조회
SELECT * FROM userTbl;

-- 데이터 조회 필터링 
SELECT * FROM  userTbl
 WHERE userID= 'BBK'

 SELECT * FROM userTbl
  WHERE name LIKE '%용%'

SELECT userID, name, addr /** == ALL*/ FROM userTbl -- 원하는 컬럼만 선별해서 보기

-- 특정 테이블 레코드(데이터) 갯수확인
SELECT COUNT(*) FROM userTbl;


-- 사용자 테이블에서 키가 180이상이고 
-- 출생년도가 1970년 이후 태어난 사람의
-- 아이디, 이름, 키를 조회하세요
SELECT userID, name, height FROM userTbl
 WHERE height >= 180 AND birthYear >= 1970;


 -- 출생년도순(오름차순)으로 정렬해서 조회
SELECT * FROM userTbl
 ORDER BY birthYear DESC; -- ASC(ENDING) | DESC(ENDING)

-- SELECT INTO  백업할 때 사용
-- userTbl_New 테이블이 생성 (PK 키정보는 미생성)

SELECT * INTO userTbl_New FROM userTbl;
SELECT * FROM userTbl_New;

SELECT userID, name, addr INTO userTbl Backup From userTbl;
 WHERE addr ='서울';

SELECT * FROM userTbl_Backup; -- 원하는 테이블만 백업할 때 

SELECT * FROM userTbl_Backup2;

