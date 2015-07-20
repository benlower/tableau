REM -- Login to our site
tabcmd login -s http://localhost -u admin -p admin


REM  -- Create a new site called "Acme Site"
tabcmd createsite "Acme Site"


REM -- Include Tableau Sample Data in the site
REM TODO


REM -- Publish some data sources with some extracts
REM TODO


REM -- Create a project for each of our six departments -> HR, IT, Sales, Operations, Billing and Facilities
tabcmd createproject -n "HR Project" -d "Project for HR department"
tabcmd createproject -n "IT Project" -d "Project for IT department"
tabcmd createproject -n "Sales Project" -d "Project for Sales department"
tabcmd createproject -n "Operations Project" -d "Project for Operations department"
tabcmd createproject -n "Billing Project" -d "Project for Billing department"
tabcmd createproject -n "Facilities Project" -d "Project for Facilities department"


REM -- Create a group for each of our six departments -> HR, IT, Sales, Operations, Billing and Facilities
tabcmd creategroup "HR"
tabcmd creategroup "IT"
tabcmd creategroup "Sales"
tabcmd creategroup "Operations"
tabcmd creategroup "Billing"
tabcmd creategroup "Facilities"


REM -- Give each group permission for its and only its project
REM TODO


REM -- Create a user for each department called "<dept> Manager" and give manager rights for the project content
REM -- This requires a CSV file
tabcmd addusers "HR" --users "HRusers.csv"
tabcmd addusers "IT" --users "ITusers.csv"
tabcmd addusers "Sales" --users "Salesusers.csv"
tabcmd addusers "Operations" --users "Operationsusers.csv"
tabcmd addusers "Billing" --users "Billingusers.csv"
tabcmd addusers "Facilities" --users "Facilitiesusers.csv"


REM -- Ensure that IT and HR user group can publish new materials

REM -- Make user group for other departments and give them interactor rights

REM -- Exception 1 -> HR MGR sees all IT materials

REM -- Exception 2 -> Sales and IT share a data source – Should be a SQL source that prompts for password

REM -- Exception 3 -> IT Manager can publish in all locations

REM -- Exception 4 -> Facilities can see everything of Billing but Billing cannot see Facilities

REM -- Exception 5 -> Facilities, Billing and IT share a data source

REM -- Exception 6 -> All Users have a SQL Data Source that does not prompt for password