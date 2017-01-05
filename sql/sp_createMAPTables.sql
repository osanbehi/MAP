DELIMITER $$

CREATE PROCEDURE sp_createMAPTables()

BEGIN

DROP TABLE IF EXISTS mapdb.Output_ARIS;
DROP TABLE IF EXISTS mapdb.Output_LeanIX;
DROP TABLE IF EXISTS mapdb.Input_ARIS;
DROP TABLE IF EXISTS mapdb.Input_LeanIX;

CREATE TABLE mapdb.Output_ARIS (
    d_guid VARCHAR(50) NOT NULL,
    m_guid VARCHAR(50) NOT NULL,
    m_name VARCHAR(100) NOT NULL,
    m_description VARCHAR(1500),
    m_group_path VARCHAR(250) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE mapdb.Output_LeanIX (
    is_id VARCHAR(50) NOT NULL,
    is_name VARCHAR(100) NOT NULL,
    is_description VARCHAR(1500)
) ENGINE = InnoDB;

CREATE TABLE mapdb.Input_ARIS (
    d_guid VARCHAR(50) NOT NULL,
    m_guid VARCHAR(50) NOT NULL,
    m_name VARCHAR(100) NOT NULL,
    m_description VARCHAR(1500),
    m_group_path VARCHAR(250) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE mapdb.Input_LeanIX (
    is_id VARCHAR(50) NOT NULL,
    is_name VARCHAR(100) NOT NULL,
    is_description VARCHAR(1500)
) ENGINE = InnoDB;

END$$