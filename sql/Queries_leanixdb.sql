SELECT I.is_id AS Inf_Sys_ID, I.name AS Inf_Sys_Name, I.description AS Inf_Sys_Desc
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/LeanIX_output.csv'
      FIELDS ESCAPED BY '"'
      TERMINATED BY ',' ENCLOSED BY '"'
      LINES TERMINATED BY '\r\n'
FROM Information_System I
WHERE I.level = 1 AND I.aris_ready = TRUE;


