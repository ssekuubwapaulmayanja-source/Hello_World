/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s5.2_PSM.sql
PURPOSE: Step 5.2 - Refine the table architecture

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     07/20/2026   PSM           1. Built this script for EC IT143 W4.2 Hello World


NOTES:
Step 5.2 of 8 - Drop and re-create the table with proper data types,
a primary key, NOT NULL constraints, and default values.

QUESTION: What is today's date and a simple greeting message?

******************************************************************************************************************/

USE EC_IT143_DA;
GO

-- Drop table if it already exists
IF OBJECT_ID('dbo.t_w4_2_hello_world', 'U') IS NOT NULL
    DROP TABLE dbo.t_w4_2_hello_world;
GO

-- Re-create table with refined architecture
CREATE TABLE dbo.t_w4_2_hello_world (
    hello_world_id   INT           IDENTITY(1,1)   NOT NULL
  , greeting         VARCHAR(50)                   NOT NULL    DEFAULT 'Hello World!'
  , today_formatted  VARCHAR(20)                   NOT NULL
  , CONSTRAINT PK_t_w4_2_hello_world PRIMARY KEY (hello_world_id)
);
GO

-- Verify table structure
SELECT * FROM dbo.t_w4_2_hello_world;
