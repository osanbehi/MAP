DELIMITER $$

CREATE PROCEDURE sp_generateARIScsv()

BEGIN

DELETE FROM mapdb.output_ARIS;

INSERT INTO mapdb.output_ARIS (d_guid, m_guid, m_name, m_description, m_group_path)
SELECT  D.d_guid, M.m_guid, M.name, M.description, M.group_path
FROM arisdb.Object_Definition D
JOIN arisdb.Object_Occurrence O ON D.d_guid = O.d_guid
JOIN arisdb.Model M ON O.m_guid = M.m_guid
WHERE D.type = "SYS" AND D.leanix_ready = TRUE AND M.leanix_ready = TRUE;

SELECT d_guid, m_guid, m_name, m_description, m_group_path
INTO OUTFILE 'C:/MAP/csv/ARIS_output.csv'
      FIELDS ESCAPED BY '"'
      TERMINATED BY ',' ENCLOSED BY '"'
      LINES TERMINATED BY '\r\n'
FROM mapdb.output_ARIS;

END$$