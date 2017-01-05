DELIMITER $$

CREATE PROCEDURE sp_readARIScsv()

BEGIN

DELETE FROM mapdb.Input_ARIS;

LOAD DATA LOCAL INFILE 'C:/MAP/csv/ARIS_output.csv'
INTO TABLE mapdb.Input_ARIS (d_guid, m_guid, m_name, m_description, m_group_path)
FIELDS ESCAPED BY '"'
TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 0 ROWS

END$$