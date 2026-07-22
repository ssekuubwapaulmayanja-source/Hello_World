/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s7_PSM.sql
PURPOSE: Step 7 - Turn the ad hoc load script into a stored procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     07/20/2026   PSM           1. Built this script for EC IT143 W4.2 Hello World


NOTES:
Step 7 of 8 - Wrap the TRUNCATE and INSERT logic in a stored procedure.
A stored procedure saves the logic inside the database so it can be
called repeatedly by name, by a job scheduler, or by an ETL process.
Stored procedures are named with the prefix sp_ or usp_.

QUESTION: What is today's date and a simple greeting message?

******************************************************************************************************************/

USE EC_IT143_DA;
GO

-- Drop stored procedure if it already exists
IF OBJECT_ID('dbo.usp_w4_2_hello_world', 'P') IS NOT NULL
    DROP PROCEDURE dbo.usp_w4_2_hello_world;
GO

-- Create the stored procedure
CREATE PROCEDURE dbo.usp_w4_2_hello_world AS
BEGIN

    -- Clear the table
    TRUNCATE TABLE dbo.t_w4_2_hello_world;

    -- Load fresh data from the view
    INSERT INTO dbo.t_w4_2_hello_world (greeting, today_formatted)
    SELECT
        greeting
      , today_formatted
    FROM dbo.v_w4_2_hello_world;

    -- Return results
    SELECT * FROM dbo.t_w4_2_hello_world;

END;
GO
