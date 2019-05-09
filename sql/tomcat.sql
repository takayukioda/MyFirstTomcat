CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

CREATE TABLE IF NOT EXISTS shain_table (
	id      smallint UNIQUE,
	name    text,
	sei     text,
	nen     smallint,
	address text
);

INSERT INTO shain_table(id, name, sei, nen, address) VALUES (100, 'RŠİ‘¾˜Y',   '’j', 2002, '“Œ‹“s¢“c’J‹æ');
INSERT INTO shain_table(id, name, sei, nen, address) VALUES (101, '—é–ØMm',   '’j', 2003, '‹{éŒ§å‘äs');
INSERT INTO shain_table(id, name, sei, nen, address) VALUES (102, '“¡ˆäD',   '—', 2004, '•Ÿ‰ªŒ§•Ÿ‰ªs');
INSERT INTO shain_table(id, name, sei, nen, address) VALUES (103, '‚‹´‰F²”ü', '—', 2005, '•Ÿ‰ªŒ§•Ÿ‰ªs');
INSERT INTO shain_table(id, name, sei, nen, address) VALUES (104, '²“¡ˆê“ñO', '’j', 2003, '‹{éŒ§å‘äs');
INSERT INTO shain_table(id, name, sei, nen, address) VALUES (105, '•½—Ñ½“ñ',   '’j', 2002, '“Œ‹“s]“Œ‹æ');
