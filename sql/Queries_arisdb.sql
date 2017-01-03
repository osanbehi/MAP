SELECT D.d_guid AS Obj_Def_GUID, M.m_guid AS Mod_GUID, M.name AS Mod_Name, M.description AS Mod_Description, M.group_path AS Mod_GroupPath
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/ARIS_output.csv'
      FIELDS ESCAPED BY '"'
      TERMINATED BY ',' ENCLOSED BY '"'
      LINES TERMINATED BY '\r\n'
FROM Object_Definition D
JOIN Object_Occurrence O ON D.d_guid = O.d_guid
JOIN Model M ON O.m_guid = M.m_guid
WHERE D.type = "SYS" AND D.leanix_ready = TRUE AND M.leanix_ready = TRUE;


