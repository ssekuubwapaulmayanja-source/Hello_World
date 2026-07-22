/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s2_PSM.sql
PURPOSE: Step 2 - Begin creating an answer

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     07/20/2026   PSM           1. Built this script for EC IT143 W4.2 Hello World


NOTES:
Step 2 of 8 - Map out the path to the answer.

QUESTION: What is today's date and a simple greeting message?

WHERE I AM NOW:
- SQL Server is connected and responding.
- I can use built-in functions like GETDATE() and literal strings.

NEXT LOGICAL STEP:
- Sub-answer 1: Return a greeting string and today's date using a simple SELECT.
- Sub-answer 2: Format the date to be more readable using CONVERT().

******************************************************************************************************************/

-- Sub-answer 1: Basic greeting and date
SELECT 'Hello World!' AS greeting, GETDATE() AS today;

-- Sub-answer 2: Format the date
SELECT
    'Hello World!'                              AS greeting
  , CONVERT(VARCHAR(20), GETDATE(), 101)        AS today_formatted;
