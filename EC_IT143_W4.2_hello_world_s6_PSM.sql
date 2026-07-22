/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s6_PSM.sql
PURPOSE: Step 6 - Load the table from the view using TRUNCATE and INSERT

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     07/20/2026   PSM           1. Built this script for EC IT143 W4.2 Hello World


NOTES:
Step 6 of 8 - Use TRUNCATE to clear the table then INSERT from the view.
TRUNCATE removes all rows quickly without logging each row deletion.
INSERT INTO...SELECT pulls fresh data from the view into the table.

QUESTION: What is today's date and a simple greeting message?

******************************************************************************************************************/

USE EC_IT143_DA;
GO

-- Clear the table
TRUNCATE TABLE dbo.t_w4_2_hello_world;
GO

-- Load the table from the view
INSERT INTO dbo.t_w4_2_hello_world (greeting, today_formatted)
SELECT
    greeting
  , today_formatted
FROM dbo.v_w4_2_hello_world;
GO

-- Verify the data loaded
SELECT * FROM dbo.t_w4_2_hello_world;
