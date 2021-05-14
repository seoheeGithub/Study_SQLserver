-- 외부조인
-- 우리 쇼핑몰에서 물건을 한번도 구매하지 않은 회원들을 조회
SELECT u.userID
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID;



SELECT u.userID
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
 RIGHT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID



 -- 학생 / 동아리 / 가입정보 테이블
 -- OUTERJOIN

 -- 학생Tbl 기준 
 SELECT s.StdID, s.StdName, s.Region
	  , c.ClubName, c.ClubRoom
	  , r.RegDate
  FROM stdTbl AS s
  LEFT OUTER JOIN reginfoTbl AS r
	 ON s.StdID = r.StdID
  LEFT OUTER JOIN clubTbl AS c
	 ON c.ClubName = r.ClubName;

-- 클럽Tbl 기준
 SELECT s.StdID, s.StdName, s.Region
	  , r.ClubName, c.ClubRoom  -- , c.ClubName 테이블 기준에 따라 나오고 안나오고
	  , r.RegDate
  FROM stdTbl AS s
  LEFT OUTER JOIN reginfoTbl AS r
	 ON s.StdID = r.StdID
  RIGHT OUTER JOIN clubTbl AS c -- 클럽 Tbl 기준
	 ON c.ClubName = r.ClubName;



--

SELECT c.ClubName, c.ClubRoom, r.id, r.RegDate
  FROM clubTbl AS c
  LEFT OUTER JOIN reginfoTbl AS r
    ON c.ClubName = r.ClubName











