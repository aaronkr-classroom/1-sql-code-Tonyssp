--숫자 내장 함수
SELECT ABS(17), ABS(-17), CEIL(3.28), FLOOR(4.97);

SELECT 학번,
	SUM(기말성적)::FLOAT / COUNT(*) AS 평균성적
	--ROUND(SUM(기말성적)::FLOAT / COUNT(*), 2) -- MySQL ROUND(숫자, 자릿수)
FROM 수강2
GROUP BY 학번;

--문자 내장 함수
SELECT LENGTH(소속학과), RIGHT(학번, 2), REPEAT('*', 나이),
	CONCAT(소속학과, ' 학과')
FROM 학생2;

SELECT SUBSTRING(주소, 1, 2), REPLACE(SUBSTRING(휴대폰번호, 5, 9),'-','*')
FROM 학생2;

--날짜 / 시간 내장 함수
SELECT 신청날짜, DATE_TRUNC('MONTH', 신청날짜) + INTERVAL'1 MONTH - 1 DAY' AS 마지막날
FROM 수강2
WHERE EXTRACT(YEAR FROM 신청날짜) = 2019;
--2019/02/31

SELECT CURRENT_TIMESTAMP, 신청날짜 - DATE '2019-01-01' AS 일수차이
FROM 수강2;

SELECT 신청날짜, 
	TO_CHAR(신청날짜, 'Mon/DD/YY') AS 형식1,  
	TO_CHAR(신청날짜, 'YYYY"년"MM"월"DD"일"') AS 형식2
FROM 수강2;

--저장 프로시저


CREATE OR REPLACE PROCEDURE InsertOrUpdateCourse (
	IN CourseNo VARCHAR(4),
	IN CourseName VARCHAR(20),
	IN CourseRoom CHAR(3),
	IN CourseDept VARCHAR(20),
	IN CourseCredit INT
)
LANGUAGE plpgsql
AS $$
DECLARE
	Count INT;
BEGIN
	--과목이 이미 존재하는지 확인
	SELECT COUNT(*) INTO Count FROM 과목2 WHERE 과목번호 = CourseNo;

	IF Count = 0 THEN
		
		INSERT INTO 과목2 (과목번호, 이름, 강의실, 개설학과, 시수)
		VALUES (CourseNo, CourseName, CourseRoom, CourseDept, CourseCredit);
	ELSE
		--과목이 존재하면 기존 과목 업데이트
		UPDATE 과목2
		SET 이름 = CourseName, 강의실 = CourseRoom, 개설학과 = CourseDept, 시수 = CourseCredit
		WHERE 과목번호 = CourseNo;
	END IF;
END;
$$;
