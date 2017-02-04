DELIMITER $$

CREATE PROCEDURE sp_processLeanIXData()

BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE c1_m_id VARCHAR(50);
  DECLARE c1_name VARCHAR(100);
  DECLARE c1_m_description VARCHAR(1500);
  DECLARE c1_m_group_path VARCHAR(250);

  DECLARE c2_id VARCHAR(50);

  DECLARE cursor1 CURSOR FOR SELECT m_guid, m_name, m_description, m_group_path FROM mapdb.input_ARIS;
  DECLARE cursor2 CURSOR FOR SELECT p_id FROM leanixdb.Process;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN cursor1;
      read_loop1: LOOP
        FETCH cursor1 INTO c1_m_id, c1_name, c1_m_description, c1_m_group_path;
        IF done THEN
          LEAVE read_loop1;
        END IF;
        IF NOT EXISTS (SELECT p_id FROM leanixdb.Process WHERE p_id = c1_m_id) THEN
          INSERT INTO leanixdb.Process (p_id, name, description, group_path, to_delete) VALUES (c1_m_id, c1_name, c1_m_description, c1_m_group_path, FALSE);
        ELSE
          UPDATE leanixdb.Process SET name = c1_name, description = c1_m_description, group_path = c1_m_group_path WHERE p_id = c1_m_id;
        END IF;
      END LOOP;
  CLOSE cursor1;

  SET done = FALSE;

  OPEN cursor2;
      read_loop2: LOOP
        FETCH cursor2 INTO c2_id;
        IF done THEN
          LEAVE read_loop2;
        END IF;
        IF NOT EXISTS (SELECT m_guid FROM mapdb.input_ARIS WHERE m_guid = c2_id) THEN
            IF NOT EXISTS (SELECT p_id FROM leanixdb.Process WHERE to_delete = TRUE AND p_id = c2_id) THEN
                UPDATE leanixdb.Process SET name = CONCAT(name, ' (deprecated)'), to_delete = TRUE WHERE p_id = c2_id;
            END IF;
        END IF;
      END LOOP;
  CLOSE cursor2;

  DELETE FROM leanixdb.InformationSystem_Process;
  INSERT INTO leanixdb.InformationSystem_Process (is_id, p_id) SELECT IA.d_guid, IA.m_guid FROM mapdb.input_ARIS IA JOIN leanixdb.Information_System LIS ON IA.d_guid = LIS.is_id;

END$$