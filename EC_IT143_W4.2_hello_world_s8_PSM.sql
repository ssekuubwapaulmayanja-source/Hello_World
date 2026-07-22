/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s8_PSM.sql
PURPOSE: Step 8 - Call the stored procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     07/20/2026   PSM           1. Built this script for EC IT143 W4.2 Hello World


NOTES:
Step 8 of 8 - Execute the stored procedure using EXEC.
This is the final step. The stored procedure encapsulates all the work
from Steps 6 and 7. Calling it reloads the table with fresh data.
An ETL process or SQL Server Agent job can call this procedure on a schedule.

QUESTION: What is today's date and a simple greeting message?

******************************************************************************************************************/

USE EC_IT143_DA;
GO

-- Call the stored procedure
EXEC dbo.usp_w4_2_hello_world;
GO
