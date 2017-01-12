DELIMITER $$

CREATE PROCEDURE sp_processARISData()

BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE c1_id VARCHAR(50);
  DECLARE c1_name VARCHAR(100);

  DECLARE c2_id VARCHAR(50);

  DECLARE cursor1 CURSOR FOR SELECT is_id, is_name FROM mapdb.input_LeanIX;
  DECLARE cursor2 CURSOR FOR SELECT d_guid FROM arisdb.Object_Definition;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN cursor1;
      read_loop1: LOOP
        FETCH cursor1 INTO c1_id, c1_name;
        IF done THEN
          LEAVE read_loop1;
        END IF;
        IF NOT EXISTS (SELECT d_guid FROM arisdb.Object_Definition WHERE d_guid = c1_id) THEN
          INSERT INTO arisdb.Object_Definition (d_guid, type, name, leanix_ready) VALUES (c1_id, "SYS", c1_name, FALSE);
        ELSE
          UPDATE arisdb.Object_Definition SET name = c1_name WHERE d_guid = c1_id;
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
        IF NOT EXISTS (SELECT is_id FROM mapdb.input_LeanIX WHERE is_id = c2_id) THEN
            IF NOT EXISTS (SELECT d_guid FROM arisdb.Object_Definition WHERE name LIKE '%(deprecated)%' AND d_guid = c2_id) THEN
                UPDATE arisdb.Object_Definition SET name = CONCAT(name, ' (deprecated)') WHERE d_guid = c2_id;
            END IF;
        END IF;
      END LOOP;
  CLOSE cursor2;

END$$