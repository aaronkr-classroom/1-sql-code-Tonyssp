-- 데이터베이스 생성
CREATE DATABASE univdb;

-- 학생 테이블 생성
CREATE TABLE 학생 (
    학번 CHAR(4) NOT NULL PRIMARY KEY,
    이름 VARCHAR(20) NOT NULL,
    주소 VARCHAR(50) NULL DEFAULT '미정',
    학년 INT NOT NULL,
    나이 INT NULL,
    성별 CHAR(1) NOT NULL,
    휴대폰번호 CHAR(14) NULL,
    소속학과 VARCHAR(20) NULL
);

-- 과목 테이블 생성
CREATE TABLE 과목 (
    과목번호 CHAR(4) NOT NULL PRIMARY KEY,
    과목명 VARCHAR(20) NOT NULL,
    강의실 CHAR(3) NOT NULL,
    개설학과 VARCHAR(20) NOT NULL,
    학점 INT NOT NULL
);

-- 수강 테이블 생성
CREATE TABLE 수강 (
    학번 CHAR(4) NOT NULL,
    과목번호 CHAR(4) NOT NULL,
    신청날짜 DATE NOT NULL,
    중간고사 INT NULL DEFAULT 0,
    기말고사 INT NULL DEFAULT 0,
    평가학점 CHAR(1) NULL,
    PRIMARY KEY(학번, 과목번호)
);

-- 학생 테이블 입력 (수정된 부분)
INSERT INTO 학생 (학번, 이름, 주소, 학년, 나이, 성별, 휴대폰번호, 소속학과) 
VALUES 
    ('S101', '박지성', '서울 강남구', 4, 24, '남', '010-1234-5678', '컴퓨터공학'),
    ('S102', '손흥민', '미정', 2, 25, '남', NULL, '통계학'),  -- DEFAULT 대신 '미정' 사용
    ('S103', '유재석', NULL, 3, 31, '남', NULL, '정보보호학과'),
    ('S104', '이효리', '경기도 성남시', 2, NULL, '여', '010-9999-8888', '정보통신'),
    ('S105', '김태희', '부산 해운대구', 4, 22, '여', '010-7777-6666', '컴퓨터공학'),
    ('S106', '강호동', '서울 종로구', 1, 26, '남', '010-1111-2222', '컴퓨터공학'),
    ('S107', '정우성', '경기 용인시', 1, 22, '남', '010-3333-4444', '경영학');

-- 과목 테이블 입력
INSERT INTO 과목 (과목번호, 과목명, 강의실, 개설학과, 학점)
VALUES
    ('C101', '데이터베이스', '301', '컴퓨터공학', 3),
    ('C102', '정보보호', '402', '정보통신', 3),
    ('C103', '모바일프로그래밍', '210', '컴퓨터공학', 3),
    ('C104', '철학의 이해', '115', '철학과', 2),
    ('C105', '비즈니스 글쓰기', '122', '교양학부', 1);
