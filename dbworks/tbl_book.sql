-- 책 삭제 --
DELETE FROM tbl_book WHERE book_no = 3;

-- 책 테이블 생성 --
CREATE TABLE tbl_book(
	book_no 	INTEGER PRIMARY KEY AUTOINCREMENT,
	title		TEXT NOT NULL,
	publisher 	TEXT NOT NULL,
	page		INTEGER
);

-- 책 추가 --
INSERT INTO tbl_book(title, publisher, page) VALUES('웹 표준의 정석', '고경희', 600);