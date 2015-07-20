REM -- Make sure our server is started
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabadmin start


REM -- Login to our server
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe login -s http://localhost -u admin -p admin


REM  -- Create a new site called "Acme Site" witht the siteID "acme"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createsite "Acme Site" -r "acme"


REM -- Log out of our server
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe logout


REM -- Log in -> now we want to use our newly created "Acme Site"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe login -s http://localhost --site "acme" -u admin -p admin



REM -- Create a project for each of our six departments -> HR, IT, Sales, Operations, Billing and Facilities
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createproject -n "HR_Project" -d "Project for HR department"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createproject -n "IT_Project" -d "Project for IT department"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createproject -n "Sales_Project" -d "Project for Sales department"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createproject -n "Operations_Project" -d "Project for Operations department"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createproject -n "Billing_Project" -d "Project for Billing department"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createproject -n "Facilities_Project" -d "Project for Facilities department"


REM -- Create a group for each of our six departments -> HR, IT, Sales, Operations, Billing and Facilities
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe creategroup "HR"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe creategroup "IT"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe creategroup "Sales"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe creategroup "Operations"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe creategroup "Billing"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe creategroup "Facilities"


REM -- Create our site users
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createsiteusers "c:\temp\HRusers.csv" --role "Publisher"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createsiteusers "c:\temp\ITusers.csv" --role "Publisher"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createsiteusers "c:\temp\Salesusers.csv" --role "Interactor"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createsiteusers "c:\temp\Operationsusers.csv" --role "Interactor"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createsiteusers "c:\temp\Billingusers.csv" --role "Interactor"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe createsiteusers "c:\temp\Facilitiesusers.csv" --role "Interactor"

REM -- Create a user for each department called "<dept> Manager" and give manager rights for the project content
REM -- This requires a CSV file
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe addusers "HR" --users "c:\temp\HRusers.csv"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe addusers "IT" --users "c:\temp\ITusers.csv"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe addusers "Sales" --users "c:\temp\Salesusers.csv"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe addusers "Operations" --users "c:\temp\Operationsusers.csv"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe addusers "Billing" --users "c:\temp\Billingusers.csv"
c:\PROGRA~2\Tableau\TABLEA~1\9.0\bin\tabcmd.exe addusers "Facilities" --users "c:\temp\Facilitiesusers.csv"


REM -- Manual work TODO
REM -- Give each group permission for its and only its project

REM -- Include Tableau Sample Data in the site <TODO-> download then upload from TD>

REM -- Publish some data sources with some extracts

REM -- Ensure that IT and HR user group can publish new materials

REM -- Make user group for other departments and give them interactor rights

REM -- Exception 1 -> HR MGR sees all IT materials

REM -- Exception 2 -> Sales and IT share a data source – Should be a SQL source that prompts for password  <TODO>

REM -- Exception 3 -> IT Manager can publish in all locations

REM -- Exception 4 -> Facilities can see everything of Billing but Billing cannot see Facilities

REM -- Exception 5 -> Facilities, Billing and IT share a data source <TODO>

REM -- Exception 6 -> All Users have a SQL Data Source that does not prompt for password <TODO>
