CREATE SCHEMA production; -- production
GO

CREATE TABLE production.parts (
	part_id INT NOT NULL,
	part_name VARCHAR(100)
);
GO

SELECT * FROM production.parts
