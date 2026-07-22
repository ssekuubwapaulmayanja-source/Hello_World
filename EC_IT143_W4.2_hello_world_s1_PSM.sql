/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s1_PSM.sql
PURPOSE: Step 1 - Start with a question

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     07/20/2026   PSM           1. Built this script for EC IT143 W4.2 Hello World


NOTES:
Step 1 of 8 - Define the question we want to answer.
The question must be brief, precise, and singular in focus.

******************************************************************************************************************/

-- Q: What is today's date and a simple greeting message?

-- This is the simplest possible question we can ask of SQL Server.
-- It requires no tables, no joins, and no filters.
-- It confirms our SQL Server connection is working.

SELECT 'Hello World!' AS greeting, GETDATE() AS today;
