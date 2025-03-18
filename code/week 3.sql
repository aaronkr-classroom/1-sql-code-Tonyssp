-- Create the table
CREATE TABLE 학원생 (
    id BIGSERIAL, -- Only in PostgreSQL
    학원생이름 VARCHAR(25),
    폰번호 VARCHAR(13),
    나이 INT,
    학교이름 VARCHAR(25),
    학년 INT,
    반 INT,
    반번호 INT
);


SELECT * FROM 학원생;

INSERT INTO 학원생 (학원생이름, 폰번호, 나이, 학교이름, 학년, 반, 반번호)
VALUES 
    ('홍길동', '010-1237-6542', 19, '송원고', 3, 1, 10),
    ('김하나', '010-1237-7489', 18, '한빛고', 2, 2, 7),
    ('홍길동', '010-458-9834', 19, '송원고', 3, 1, 31),
    ('박순회', '010-7789-0654', 17, '이슬고', 1, 3, 16);

	-- Create the 학교 table
CREATE TABLE 학교 (
    id BIGSERIAL, -- PostgreSQL's auto-incrementing number type
    학교명 VARCHAR(25),
    분류 INT,
    학생수 NUMERIC, -- Numeric type for flexibility with large numbers
    주소 VARCHAR(100)
);
-- Insert data into 학교 table
INSERT INTO 학교 (학교명, 분류, 학생수, 주소)
VALUES 
    ('승원고', 3, 435, '경기 성남 분당구 황새로 123'),
    ('한빛고', 2, 377, '경기 성남 분당구 판교역로 67'),
    ('이슬고', 1, 507, '경기 성남 분당구 미금로 567'); 


SELECT * FROM 학교;

TABLE 학교;

-- Add a PRIMARY KEY constraint to 학교명
ALTER TABLE 학교
ADD CONSTRAINT 학교명_키 PRIMARY KEY (학교명);

TABLE 학교;


ALTER TABLE 학교
ADD CONSTRAINT 학교_학원생_FK FOREIGN KEY (학교명)
REFERENCES 학원생(학교이름)
ON DELETE CASCADE;
