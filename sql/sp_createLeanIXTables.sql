DELIMITER $$

CREATE PROCEDURE sp_createLeanIXTables()

BEGIN

DROP TABLE leanixdb.InformationSystem_Process;
DROP TABLE leanixdb.Information_System;
DROP TABLE leanixdb.Process;

CREATE TABLE leanixdb.Information_System (
    is_id VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(1500),
    `level` INT NOT NULL,
    aris_ready BIT,
    PRIMARY KEY (is_id)
) ENGINE = InnoDB;

CREATE TABLE leanixdb.Process (
    p_id VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(1500),
    group_path VARCHAR(250) NOT NULL,
    PRIMARY KEY (p_id)
) ENGINE = InnoDB;

CREATE TABLE leanixdb.InformationSystem_Process (
    id INT NOT NULL AUTO_INCREMENT,
    is_id VARCHAR(50) NOT NULL,
    p_id VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (is_id)
        REFERENCES Information_System(is_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (p_id)
        REFERENCES Process(p_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;

END$$