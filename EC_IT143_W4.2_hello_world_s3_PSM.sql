/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s3_PSM.sql
PURPOSE: Step 3 - Create an ad hoc SQL query

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     07/20/2026   PSM           1. Built this script for EC IT143 W4.2 Hello World


NOTES:
Step 3 of 8 - Write the ad hoc query that answers the question.
An ad hoc query is a one-time SQL statement run directly against the database.
It is not saved as a view or stored procedure yet.

QUESTION: What is today's date and a simple greeting message?

******************************************************************************************************************/

USE EC_IT143_DA;
GO

-- Ad hoc query: return greeting and formatted date
SELECT
    'Hello World!'                          AS greeting
  , CONVERT(VARCHAR(20), GETDATE(), 101)   AS today_formatted;
