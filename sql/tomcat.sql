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
	('100','�R�c���Y','�j','2002','�����s���c�J��'),
    ('101','��؋`�M','�j','2003','�{�錧���s'),
    ('102','�������D','��','2004','�����������s'),
    ('103','��������','��','2005','�����������s'),
    ('104','��������','�j','2003','�{�錧���s'),
    ('105','���ѐ���','�j','2002','�����s�]����');