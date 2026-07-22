/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s4_PSM.sql
PURPOSE: Step 4 - Turn the ad hoc SQL query into a view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     07/20/2026   PSM           1. Built this script for EC IT143 W4.2 Hello World


NOTES:
Step 4 of 8 - Wrap the ad hoc query in a CREATE VIEW statement.
A view saves the query inside the database so it can be reused.
Views are named with the prefix v_ to distinguish them from tables.

QUESTION: What is today's date and a simple greeting message?

******************************************************************************************************************/

USE EC_IT143_DA;
GO

-- Drop view if it already exists
IF OBJECT_ID('dbo.v_w4_2_hello_world', 'V') IS NOT NULL
    DROP VIEW dbo.v_w4_2_hello_world;
GO

-- Create the view
CREATE VIEW dbo.v_w4_2_hello_world AS

    SELECT
        'Hello World!'                          AS greeting
      , CONVERT(VARCHAR(20), GETDATE(), 101)   AS today_formatted;
GO

-- Test the view
SELECT * FROM dbo.v_w4_2_hello_world;
