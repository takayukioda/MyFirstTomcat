CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

CREATE TABLE IF NOT EXISTS shain_table (
	id      smallint UNIQUE,
	name    text,
	sei     text,
	nen     smallint,
	address text
);

INSERT INTO shain_table(id, name, sei, nen, address) VALUES (100, '�R�ݑ��Y',   '�j', 2002, '�����s���c�J��');
INSERT INTO shain_table(id, name, sei, nen, address) VALUES (101, '��ؐM�m',   '�j', 2003, '�{�錧���s');
INSERT INTO shain_table(id, name, sei, nen, address) VALUES (102, '���䍁�D',   '��', 2004, '�����������s');
INSERT INTO shain_table(id, name, sei, nen, address) VALUES (103, '�����F����', '��', 2005, '�����������s');
INSERT INTO shain_table(id, name, sei, nen, address) VALUES (104, '�������O', '�j', 2003, '�{�錧���s');
INSERT INTO shain_table(id, name, sei, nen, address) VALUES (105, '���ѐ���',   '�j', 2002, '�����s�]����');
