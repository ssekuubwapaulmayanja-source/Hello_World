/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s5.1_PSM.sql
PURPOSE: Step 5.1 - Turn the view into a table using SELECT INTO

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     07/20/2026   PSM           1. Built this script for EC IT143 W4.2 Hello World


NOTES:
Step 5.1 of 8 - Use SELECT INTO to create a table from the view.
Tables are named with the prefix t_ to distinguish them from views.
The table name mirrors the view name for clarity.

QUESTION: What is today's date and a simple greeting message?

******************************************************************************************************************/

USE EC_IT143_DA;
GO

-- Drop table if it already exists
IF OBJECT_ID('dbo.t_w4_2_hello_world', 'U') IS NOT NULL
    DROP TABLE dbo.t_w4_2_hello_world;
GO

-- Create table from view using SELECT INTO
SELECT *
INTO dbo.t_w4_2_hello_world
FROM dbo.v_w4_2_hello_world;
GO

-- Verify table was created and has data
SELECT * FROM dbo.t_w4_2_hello_world;
