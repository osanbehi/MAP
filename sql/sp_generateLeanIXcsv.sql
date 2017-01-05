DELIMITER $$

CREATE PROCEDURE sp_generateLeanIXcsv()

BEGIN

DELETE FROM mapdb.output_LeanIX;

INSERT INTO mapdb.output_LeanIX (is_id, is_name, is_description)
SELECT I.is_id, I.name, I.description
FROM leanixdb.Information_System I
WHERE I.level = 1 AND I.aris_ready = TRUE;

UPDATE mapdb.output_LeanIX
SET is_description = "_"
WHERE is_description IS NULL OR is_description = "";

SELECT 'is_id', 'is_name', 'is_description'
UNION ALL
SELECT is_id, is_name, is_description
INTO OUTFILE 'C:/MAP/csv/LeanIX_output.csv'
      FIELDS ESCAPED BY ''
      TERMINATED BY ',' ENCLOSED BY ''
      LINES TERMINATED BY '\r\n'
FROM mapdb.output_LeanIX;

END$$