-- 부서 삭제 --
-- DELETE FROM department WHERE deptid = 10;  employee가 참조하고 있어서 삭제 불가 --

-- 사원 추가 --
-- INSERT INTO employee VALUES (102, '안산', 20, 30); 부서 코드가 없으므로 외래키 제약 조건 위배 --
INSERT INTO employee VALUES (102, '안산', 20, 20);
INSERT INTO employee VALUES (101, '이강인', 21, 10);

-- 부서 검색 --
SELECT * FROM department;

-- 사원 검색 --
SELECT * FROM employee;

-- 부서 테이블 생성 --
CREATE TABLE department(
	deptid	INTEGER,
	deptname TEXT NOT NULL,
	location TEXT NOT NULL,
	PRIMARY KEY(deptid)
);

-- 사원 테이블 생성 --
CREATE TABLE employee(
	empid	INTEGER,
	name	TEXT NOT NULL,
	age		INTEGER,
	deptid	INTEGER,
	PRIMARY KEY(empid),
	FOREIGN KEY(deptid) REFERENCES department(deptid)
)

-- 부서 추가 --
INSERT INTO department VALUES (10, '관리팀', '서울');
INSERT INTO department VALUES (20, '전산팀', '인천');

COMMIT;