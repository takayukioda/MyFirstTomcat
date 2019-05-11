CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

CREATE TABLE IF NOT EXISTS shain_table (
	id      smallint UNIQUE,
	name    text,
	sei     text,
	nen     smallint,
	address text
);

INSERT INTO shain_table(id,name,sei,nen,address) VALUES
	('100','山田太郎','男','2002','東京都世田谷区'),
    ('101','鈴木義信','男','2003','宮城県仙台市'),
    ('102','佐藤香織','女','2004','福岡県福岡市'),
    ('103','高橋正美','女','2005','福岡県福岡市'),
    ('104','佐藤隆一','男','2003','宮城県仙台市'),
    ('105','小林誠二','男','2002','東京都江東区');