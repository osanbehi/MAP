DELIMITER $$

CREATE PROCEDURE sp_createARISTables()

BEGIN

DROP TABLE IF EXISTS arisdb.Object_Occurrence;
DROP TABLE IF EXISTS arisdb.Object_Definition;
DROP TABLE IF EXISTS arisdb.Model;

CREATE TABLE arisdb.Object_Definition (
    d_guid VARCHAR(50) NOT NULL,
    type VARCHAR(3) NOT NULL,
    name VARCHAR(100) NOT NULL,
    leanix_ready BIT,
    PRIMARY KEY (d_guid)
) ENGINE = InnoDB;

CREATE TABLE arisdb.Model (
    m_guid VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(1500),
    group_path VARCHAR(250) NOT NULL,
    leanix_ready BIT,
    PRIMARY KEY (m_guid)
) ENGINE = InnoDB;

CREATE TABLE arisdb.Object_Occurrence (
    o_id INT NOT NULL AUTO_INCREMENT,
    d_guid VARCHAR(50) NOT NULL,
    m_guid VARCHAR(50) NOT NULL,
    PRIMARY KEY (o_id),
    FOREIGN KEY (d_guid)
        REFERENCES Object_Definition(d_guid)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (m_guid)
        REFERENCES Model(m_guid)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;

END$$