SELECT * FROM employee;

-- 검색 - 조건을 이용한 검색 : WHERE 절을 사용
SELECT * FROM employee WHERE emp_id= 'e1002';

-- 사원 테이블 생성 --
CREATE TABLE employee(
	emp_id	CHAR(5) PRIMARY KEY,
	name	TEXT NOT NULL,
	age		INTEGER,
	salary	INTEGER
)

-- 사원 추가 --
INSERT INTO employee(emp_id, name, age, salary) VALUES ('e1001', '추신수', 39, 10000);
INSERT INTO employee(emp_id, name, age, salary) VALUES ('e1002', '김연아', 34, 20000);
INSERT INTO employee(emp_id, name, age, salary) VALUES ('e1003', '손흥민', 30, 30000);

-- 테이블 삭제
DROP TABLE employee;

COMMIT;

-- 사원 검색 --