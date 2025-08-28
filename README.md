Technical Tutorial: Deploying the AI-Powered Student Learning Demo
This guide explains how to set up the demo using Oracle Autonomous Database, Oracle APEX, and Oracle AI Services. It includes creating tables, loading sample data, importing the APEX app, and enabling AI-driven insights.
________________________________________
Prerequisites
•	Oracle Cloud account with Autonomous Database (ATP/ADW).
•	Access to Oracle APEX (included with Autonomous DB).
•	Access to OCI Generative AI for AI recommendations.
•	SQL client or SQL Workshop in APEX.
________________________________________
Create the Autonomous Database
1.	Sign in to Oracle Cloud Console.
2.	Navigate to Autonomous Database → Create Autonomous Database.
3.	Configure:
o	Workload: Transaction Processing (ATP)
o	Compute: Free Tier or Paid
o	Note down Database Service Name and ADMIN credentials.
________________________________________
Create Schema and Tables
1. create table using the student_table.sql

Open Oracle APEX
1.	From the Autonomous DB page, click Database Actions → APEX.
2.	Create a Workspace if none exists.
3.	Log in to App Builder.

Import the Demo Application
1.	Go to App Builder → Import.
2.	Upload your exported APEX app file ( student_ai_demo.sql).
3.	Run the import.

Configure AI Integration
1.	In APEX → Shared Components → Web Credentials, add your OCI GenAI API key/credential.
2.	Ensure your PL/SQL processes point to the AI profile:
Running the Demo
1.	Launch the APEX app in a browser.
2.	Explore dashboards:
o	Student Performance Summary
o	Skill Gap Analysis
o	Recommended Modules/Courses
o	AI-Powered Summaries


