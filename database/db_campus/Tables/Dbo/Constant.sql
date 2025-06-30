/*
---------------------------------------------------------------------------------------------------
Created by: ANGEL JASMIR SECHAR VALDEZ
Date: 30/06/2025
Description: This script creates the Constant table in the database.
The table includes columns for constant ID, value, description, related information, and status.
---------------------------------------------------------------------------------------------------
*/
CREATE TABLE DBO.Constant
(
	nConstantId INT,
	nConstantValue INT,
    sConstantDescription VARCHAR(255) COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS NOT NULL,
    sConstantRelated VARCHAR(100) COLLATE SQL_LATIN1_GENERAL_CP1_CI_AS,
    nConstantStatus TINYINT NOT NULL DEFAULT 1,
    CONSTRAINT PK_Constant PRIMARY KEY CLUSTERED (nConstantId ASC, nConstantValue ASC),
    CONSTRAINT C_nConstantId CHECK (nConstantId >= 0),
    CONSTRAINT C_nConstantValue CHECK (nConstantValue >= 0)
)