DELIMITER $$

CREATE PROCEDURE sp_insertLeanIXData()

BEGIN

DELETE FROM leanixdb.InformationSystem_Process;
DELETE FROM leanixdb.Information_System;
DELETE FROM leanixdb.Process;

INSERT INTO leanixdb.Information_System (is_id, name, description, `level`, aris_ready)
    VALUES
    ("100006270", "Access Control", "Access Control", 1, TRUE),
    ("100006275", "Active Directory (AD)", "Active Directory (Microsoft) a base for SSO aGroup. Global directory for user, server, client...", 1, TRUE),
    ("100006277", "adiBank", "EDI banking", 1, TRUE),
    ("100006280", "adiCLUB (ReeCLUB)", "CRM for adidas&Reebok", 1, TRUE),
    ("100006281", "adiCLUB (ReeCLUB) / WebPos (Korea)", "WebPOS ", 2, TRUE),
    ("100006294", "adiRace ERP (aERP)", "Local market ERP system (still used in 10 countries)", 1, TRUE),
    ("100006299", "ADP - Global View", "Payroll system", 1, TRUE),
    ("100006300", "ADP Access Control", "Payrol System", 1, TRUE),
    ("100006314", "AP workflow (APWF)", "A standardized and system based process to handle E2E vendor payment...", 1, TRUE),
    ("100006316", "Apparel & Footwear Solution (SAP AFS)", "Global central ERP system, Current production version is SAP ERP 6.0 with enhancement package...", 1, TRUE),
    ("100006317", "Apparel & Footwear Solution (SAP AFS) / FIN-ALLEVO(OPO)", "Excel based application to support the data input of budget...", 2, TRUE),
    ("100006318", "Apparel & Footwear Solution (SAP AFS) / FIN-Runbook (aFRB)", "Application on top of SAP to facilitate FSS with month-end closing.", 2, TRUE),
    ("100006319", "Apparel & Footwear Solution (SAP AFS) / FIN-SAX (aFSAX)", "application for automatic posting of bank accounts statement...", 2, TRUE),
    ("100006397", "a-Live", "Corporate Intranet build on SharePoint technology and owned by Corporate Communications. ", 1, TRUE),
    ("100006441", "Customer Relationship Management (SAP CRM)", "Global Wholesale SAP CRM System incl. customer interaction center, customer segmentation...", 1, TRUE),
    ("100006443", "Customer Relationship Management (SAP CRM) / Customer Segmentation Database (CSD)", "Adidas specific database within SAP...", 2, TRUE),
    ("100006532", "HR - Human Resource (SAP HR) / HR - Module Personal Admin (HR-PA) / HR - ESS Address Information", "To allow the updating of employee...", 3, TRUE),
    ("100006713", "HR - Human Resource (SAP HR) / HR - Module Personal Admin (HR-PA) / HR - Bank information", "To allow the updating of employee bank information", 3, TRUE),
    ("100006717", "HR - Human Resource (SAP HR) / HR - Module Personal Admin (HR-PA) / HR - Email & User Information", "To allow the updating of employee email...", 3, TRUE),
    ("100006726", "HR - Human Resource (SAP HR) / HR - Module Personal Admin (HR-PA)", "HR - Module Personal Admin (HR-PA) ", 2, TRUE),
    ("100007306", "adiRace ERP (aERP) / WMS - JDA Cyprus (Red Prairie)", "JDA Dispatcher Warehouse Management System for Cyprus", 2, TRUE),
    ("100007422", "CoStar", "https://www.costarmanager.com/ Current capability requirements: Corporate and Retail Lease Management Lease abstraction...", 1, TRUE),
    ("100008289", "aChina CRM(Dynamic solution)", "adi-CLUB member management system in aChina", 1, TRUE),
    ("100008305", "CoStar / CoStar Portfolio Module", "", 2, TRUE),
    ("100008306", "CoStar / CoStar Percent Rent Module", "", 2, TRUE),
    ("100008316", "Customer Relationship Management (SAP CRM) / Customer Consolidation Hierarchy (CCH)", "Application within the SAP CRM...", 2, TRUE);

END$$