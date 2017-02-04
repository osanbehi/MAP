DELIMITER $$

CREATE PROCEDURE sp_insertLeanIXData()

BEGIN

DELETE FROM leanixdb.InformationSystem_Process;
DELETE FROM leanixdb.Information_System;
DELETE FROM leanixdb.Process;

INSERT INTO leanixdb.Information_System (is_id, name, description, `level`, aris_ready)
    VALUES
    ("SYS100", "Access Control", "Access Control", 1, FALSE),
    ("SYS101", "Active Directory (AD)", "Active Directory (Microsoft) a base for SSO aGroup. Global directory for user, server, client...", 1, FALSE),
    ("SYS102", "adiBank", "EDI banking", 1, FALSE),
    ("SYS103", "adiCLUB (ReeCLUB)", "CRM for adidas&Reebok", 1, FALSE),
    ("SYS104", "adiCLUB (ReeCLUB) / WebPos (Korea)", "WebPOS ", 2, FALSE),
    ("SYS105", "adiRace ERP (aERP)", "Local market ERP system (still used in 10 countries)", 1, FALSE),
    ("SYS106", "ADP - Global View", "Payroll system", 1, FALSE),
    ("SYS107", "ADP Access Control", "Payrol System", 1, FALSE),
    ("SYS108", "AP workflow (APWF)", "A standardized and system based process to handle E2E vendor payment...", 1, FALSE),
    ("SYS109", "Apparel & Footwear Solution (SAP AFS)", "Global central ERP system, Current production version is SAP ERP 6.0 with enhancement package...", 1, FALSE),
    ("SYS110", "Apparel & Footwear Solution (SAP AFS) / FIN-ALLEVO(OPO)", "Excel based application to support the data input of budget...", 2, FALSE),
    ("SYS111", "Apparel & Footwear Solution (SAP AFS) / FIN-Runbook (aFRB)", "Application on top of SAP to facilitate FSS with month-end closing.", 2, FALSE),
    ("SYS112", "Apparel & Footwear Solution (SAP AFS) / FIN-SAX (aFSAX)", "application for automatic posting of bank accounts statement...", 2, FALSE),
    ("SYS113", "a-Live", "Corporate Intranet build on SharePoint technology and owned by Corporate Communications. ", 1, FALSE),
    ("SYS114", "Customer Relationship Management (SAP CRM)", "Global Wholesale SAP CRM System incl. customer interaction center, customer segmentation...", 1, FALSE),
    ("SYS115", "Customer Relationship Management (SAP CRM) / Customer Segmentation Database (CSD)", "Adidas specific database within SAP...", 2, FALSE),
    ("SYS116", "HR - Human Resource (SAP HR) / HR - Module Personal Admin (HR-PA) / HR - ESS Address Information", "To allow the updating of employee...", 3, FALSE),
    ("SYS117", "HR - Human Resource (SAP HR) / HR - Module Personal Admin (HR-PA) / HR - Bank information", "To allow the updating of employee bank information", 3, FALSE),
    ("SYS118", "HR - Human Resource (SAP HR) / HR - Module Personal Admin (HR-PA) / HR - Email & User Information", "To allow the updating of employee email...", 3, FALSE),
    ("SYS119", "HR - Human Resource (SAP HR) / HR - Module Personal Admin (HR-PA)", "HR - Module Personal Admin (HR-PA) ", 2, FALSE),
    ("SYS120", "adiRace ERP (aERP) / WMS - JDA Cyprus (Red Prairie)", "JDA Dispatcher Warehouse Management System for Cyprus", 2, FALSE),
    ("SYS121", "CoStar", "https://www.costarmanager.com/ Current capability requirements: Corporate and Retail Lease Management Lease abstraction...", 1, FALSE),
    ("SYS122", "aChina CRM(Dynamic solution)", "adi-CLUB member management system in aChina", 1, FALSE),
    ("SYS123", "CoStar / CoStar Portfolio Module", "", 2, FALSE),
    ("SYS124", "CoStar / CoStar Percent Rent Module", "", 2, FALSE),
    ("SYS125", "Customer Relationship Management (SAP CRM) / Customer Consolidation Hierarchy (CCH)", "Application within the SAP CRM...", 2, FALSE);

END$$